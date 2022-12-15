package mini_tpu

import chisel3._
import chisel3.util.log2Ceil
import chiseltest._
import org.scalatest._

class Mini_TPU_Test extends FlatSpec with ChiselScalatestTester with Mini_TPU_Config {
  it should "test basic_PE" in {
    test(new basic_PE()).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      /** shift the weight */
      dut.io.in_weight.poke(3.U)
      dut.io.in_psum.poke(1.U)
      dut.io.in_flow.poke(false.B)
      dut.io.in_shift.poke(true.B)
      dut.clock.step()
      dut.io.out_activate.expect(0.U)
      dut.io.out_weight.expect(3.U)
      dut.io.out_psum.expect(0.U)
      /** start computing */
      dut.io.in_activate.poke(2.U)
      dut.io.in_weight.poke(2.U)
      dut.io.in_psum.poke(1.U)
      dut.io.in_flow.poke(true.B)
      dut.io.in_shift.poke(false.B)
      dut.clock.step()
      dut.io.out_activate.expect(2.U)
      dut.io.out_weight.expect(3.U)
      dut.io.out_psum.expect(7.U)
    }
  }

  it should "test Systolic_Array" in {
    test(new Systolic_Array()).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      val Data = Array.ofDim[Int](PE_Width, PE_Width)
      val Activate = Array.ofDim[Int]((2 * PE_Width - 1), PE_Width)
      val Weight = Array.ofDim[Int](PE_Width, PE_Width)
      val PSum = Array.ofDim[Int](PE_Width, PE_Width)

      /** initialize the data & weight array */
      for (i <- 0 until PE_Width) {
        for (j <- 0 until PE_Width) {
          Data(i)(j) = (scala.math.pow(2, Data_Width - 1) * scala.math.random()).toInt
          Weight(i)(j) = (scala.math.pow(2, Weight_Width - 1) * scala.math.random()).toInt
        }
      }

      /** transform the data array to correct format */
      /* | (0,0) (0,1) |    | (0,0)   0   | */
      /* | (1,0) (1,1) |    | (1,0) (0,1) | */
      /*                    |   0   (1,1) | */
      for (i <- 0 until (2 * PE_Width - 1)) {
        for (j <- 0 until PE_Width) {
          if ((j <= i) && (i <= (j + PE_Width - 1))) {
            Activate(i)(j) = Data(i - j)(j)
          } else {
            Activate(i)(j) = 0
          }
        }
      }

      /** construct golden model*/
      for (i <- 0 until PE_Width) {
        for (j <- 0 until PE_Width) {
          var sum = 0
          for (k <- 0 until PE_Width) {
            sum += Data(i)(k) * Weight(k)(j)
          }
          PSum(i)(j) = sum
        }
      }

      for (i <- (PE_Width - 1) to 0 by -1) {
        dut.io.shift.poke(true.B)
        dut.io.flow.poke(false.B)
        reformat.array2vec(Weight(i), dut.io.weight)
        dut.clock.step()
        dut.io.psum(0).expect(0.U)
      }

      for (i <- 0 until PE_Width) {
        dut.io.shift.poke(false.B)
        dut.io.flow.poke(true.B)
        reformat.array2vec(Activate(i), dut.io.activate)
        dut.clock.step()
      }

      /** (0,0) */
      dut.io.psum(0).expect(PSum(0)(0).asUInt)
      dut.io.valid(0).expect(true.B)
      dut.io.valid(1).expect(false.B)
      /** (1,0), (0,1) */
      reformat.array2vec(Activate(PE_Width), dut.io.activate)
      dut.clock.step()
      dut.io.psum(0).expect(PSum(1)(0).asUInt)
      dut.io.psum(1).expect(PSum(0)(1).asUInt)
      dut.io.valid(0).expect(true.B)
      dut.io.valid(1).expect(true.B)
      /** (1,1) */
      reformat.array2vec(Activate(PE_Width), dut.io.activate)
      dut.clock.step()
      dut.io.psum(1).expect(PSum(1)(1).asUInt)
      dut.clock.step(2 * PE_Width - 2)
    }
  }

  it should "test Weight_Buffer" in {
    test(new Weight_Buffer(log2Ceil(Buffer_Depth))).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      val Weight = Array.ofDim[Int](Buffer_Depth, Array_Width)

      for (i <- 0 until Buffer_Depth) {
        for (j <- 0 until Array_Width) {
          Weight(i)(j) = (scala.math.pow(2, Weight_Width - 1) * scala.math.random()).toInt
        }
      }

      /** write weight buffer */
      dut.io.isfull.expect(false.B)
//      dut.io.read_ptr.expect(0.U)
//      dut.io.write_ptr.expect(0.U)
      for (i <- 0 until Buffer_Depth) {
        dut.io.wen.poke(true.B)
        reformat.array2vec(Weight(i), dut.io.in_weight_x)
        dut.clock.step()
      }
//      dut.io.read_ptr.expect(0.U)
//      dut.io.write_ptr.expect(Buffer_Depth.U)
      dut.io.isfull.expect(true.B)

      /** read weight buffer */
      dut.io.ren.poke(true.B)
      dut.io.wen.poke(false.B)
      dut.io.out_weight(0).expect(0.U)
      dut.io.out_shift.expect(false.B)
      dut.clock.step()
      dut.io.ren.poke(false.B)
      for (i <- 0 until PE_Width) {
        for (j <- 0 until PE_Width) {
          dut.io.out_weight(j).expect(Weight(0)((PE_Width - i - 1) * PE_Width + j))
        }
        dut.io.out_shift.expect(true.B)
        dut.clock.step()
      }
//      dut.io.read_ptr.expect(1.U)
    }
  }

  it should "test Activation_Buffer" in {
    test(new Activation_Buffer(log2Ceil(Activate_Depth))).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      val Data = Array.ofDim[Int](Activate_Depth, Array_Width)
      val preData = Array.ofDim[Int](Activate_Depth, Array_Width)
      val Activate = Array.ofDim[Int](3 * PE_Width - 2, PE_Width)

      for (i <- 0 until Activate_Depth) {
        for (j <- 0 until Array_Width) {
          Data(i)(j) = (scala.math.pow(2, Data_Width - 1) * scala.math.random()).toInt
        }
      }

      for (i <- 0 until Activate_Depth) {
        for (j <- 0 until PE_Width) {
          for (k <- 0 until PE_Width) {
            preData(i)(j * PE_Width + k) = Data(i)(k * PE_Width + j)
          }
        }
      }

      /* | (0,0) (1,0) (0,1) (1,1)   | (0,0)   0   | */
      /*                             | (1,0) (0,1) | */
      /*                             |   0   (1,1) | */
      /*                             |   0     0   | */
      for (i <- 0 until (3 * PE_Width - 2)) {
        for (j <- 0 until PE_Width) {
          if ((j <= i) && (i <= (j + PE_Width - 1))) {
            Activate(i)(j) = Data(0)((i - j) * PE_Width + j)
          } else {
            Activate(i)(j) = 0
          }
        }
      }

      /** write activation buffer */
      dut.io.isfull.expect(false.B)
//      dut.io.read_ptr.expect(0.U)
//      dut.io.write_ptr.expect(0.U)
      for (i <- 0 until 2) {
        dut.io.wen.poke(true.B)
        dut.io.ren.poke(false.B)
        reformat.array2vec(Data(i), dut.io.in_data_x)
        dut.clock.step()
      }
//      dut.io.read_ptr.expect(0.U)
//      dut.io.write_ptr.expect(2.U)
      dut.io.isfull.expect(false.B)

      /** read activation buffer */
      dut.io.wen.poke(false.B)
      dut.io.ren.poke(true.B)
      for (i <- 0 until PE_Width) {
        dut.io.out_activate(i).expect(0.U)
      }
      dut.io.out_flow.expect(false.B)
      dut.clock.step()
      dut.io.ren.poke(false.B)
      for (i <- 0 until (3 * PE_Width - 2)) {
        for (j <- 0 until PE_Width) {
          dut.io.out_activate(j).expect(Activate(i)(j))
        }
        dut.io.out_flow.expect(true.B)
        dut.clock.step()
      }
//      dut.io.read_ptr.expect(1.U)
    }
  }

  it should "test Accumulator_Array" in {
    test(new Accumulator_Array()).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      val Data0 = Array.ofDim[Int](PE_Width, PE_Width)
      val Weight0 = Array.ofDim[Int](PE_Width, PE_Width)
      val prePSum0 = Array.ofDim[Int](PE_Width, PE_Width)
      val PSum0 = Array.ofDim[Int](4 * PE_Width, PE_Width)

      val Data1 = Array.ofDim[Int](PE_Width, PE_Width)
      val Weight1 = Array.ofDim[Int](PE_Width, PE_Width)
      val prePSum1 = Array.ofDim[Int](PE_Width, PE_Width)
      val PSum1 = Array.ofDim[Int](4 * PE_Width, PE_Width)

      val Sum = Array.ofDim[Int](PE_Width, PE_Width)
      val Valid = Array.ofDim[Boolean](4 * PE_Width, PE_Width)

      /** initialize the data & weight array */
      for (i <- 0 until PE_Width) {
        for (j <- 0 until PE_Width) {
          Data0(i)(j) = (scala.math.pow(2, Data_Width - 1) * scala.math.random()).toInt
          Weight0(i)(j) = (scala.math.pow(2, Weight_Width - 1) * scala.math.random()).toInt
          Data1(i)(j) = (scala.math.pow(2, Data_Width - 1) * scala.math.random()).toInt
          Weight1(i)(j) = (scala.math.pow(2, Weight_Width - 1) * scala.math.random()).toInt
        }
      }

      /** construct golden model*/
      for (i <- 0 until PE_Width) {
        for (j <- 0 until PE_Width) {
          var sum0 = 0
          var sum1 = 0
          for (k <- 0 until PE_Width) {
            sum0 += Data0(i)(k) * Weight0(k)(j)
            sum1 += Data1(i)(k) * Weight1(k)(j)
          }
          prePSum0(i)(j) = sum0
          prePSum1(i)(j) = sum1
          Sum(i)(j) = sum0 + sum1
        }
      }

      for (i <- 0 until (4 * PE_Width)) {
        for (j <- 0 until PE_Width) {
          if ((j <= i) && (i <= (j + PE_Width - 1))) {
            PSum0(i)(j) = prePSum0(i - j)(j)
            PSum1(i)(j) = prePSum1(i - j)(j)
          } else {
            PSum0(i)(j) = 0
            PSum1(i)(j) = 0
          }
        }
      }

      for (i <- 0 until (4 * PE_Width)) {
        for (j <- 0 until PE_Width) {
          if ((j <= i) && (i <= (j + PE_Width - 1))) {
            Valid(i)(j) = true
          } else {
            Valid(i)(j) = false
          }
        }
      }

      for (i <- 0 until (2 * PE_Width - 1)) {
        reformat.array2vec(PSum0(i), dut.io.in_psum)
        reformat.array2vec(Valid(i), dut.io.in_valid)
        dut.clock.step()
      }
      dut.io.in_acc.poke(true.B)
      reformat.array2vec(PSum0(2 * PE_Width), dut.io.in_psum)
      reformat.array2vec(Valid(2 * PE_Width), dut.io.in_valid)
      dut.clock.step()
      dut.io.in_acc.poke(false.B)
      for (i <- 0 until PE_Width) {
        dut.clock.step()
      }

      for (i <- 0 until (2 * PE_Width - 1)) {
        reformat.array2vec(PSum1(i), dut.io.in_psum)
        reformat.array2vec(Valid(i), dut.io.in_valid)
        dut.clock.step()
      }
      dut.io.in_acc.poke(true.B)
      reformat.array2vec(PSum1(2 * PE_Width), dut.io.in_psum)
      reformat.array2vec(Valid(2 * PE_Width), dut.io.in_valid)
      dut.clock.step()
      dut.io.in_acc.poke(false.B)
      for (i <- 0 until PE_Width) {
        dut.clock.step()
      }

      dut.io.in_compute_done.poke(true.B)
      dut.clock.step()
      dut.io.isdone.expect(false.B)
      for (i <- 0 until PE_Width) {
        for (j <- 0 until PE_Width) {
          dut.io.out_sum(i * PE_Width + j).expect(Sum(i)(j))
        }
      }
    }
  }

  it should "test Mini_TPU" in {
    test(new Mini_TPU()).withAnnotations(Seq(WriteVcdAnnotation)) { dut =>
      dut.io.Data_x.initSource().setSourceClock(dut.clock)
      dut.io.Weight_x.initSource().setSourceClock(dut.clock)
      dut.io.Sum_x.initSink().setSourceClock(dut.clock)

      val Data0 = Array.ofDim[Int](PE_Width, PE_Width)
      val Weight0 = Array.ofDim[Int](PE_Width, PE_Width)

      val Data1 = Array.ofDim[Int](PE_Width, PE_Width)
      val Weight1 = Array.ofDim[Int](PE_Width, PE_Width)

      val Data2 = Array.ofDim[Int](PE_Width, PE_Width)
      val Weight2 = Array.ofDim[Int](PE_Width, PE_Width)

      val Data3 = Array.ofDim[Int](PE_Width, PE_Width)
      val Weight3 = Array.ofDim[Int](PE_Width, PE_Width)

      val Sum = Array.ofDim[Int](PE_Width, PE_Width)

      /** initialize the data & weight array */
      for (i <- 0 until PE_Width) {
        for (j <- 0 until PE_Width) {
          Data0(i)(j) = (scala.math.pow(2, Data_Width - 1) * scala.math.random()).toInt
          Weight0(i)(j) = (scala.math.pow(2, Weight_Width - 1)* scala.math.random()).toInt
          Data1(i)(j) = (scala.math.pow(2, Data_Width - 1) * scala.math.random()).toInt
          Weight1(i)(j) = (scala.math.pow(2, Weight_Width - 1) * scala.math.random()).toInt
          Data2(i)(j) = (scala.math.pow(2, Data_Width - 1) * scala.math.random()).toInt
          Weight2(i)(j) = (scala.math.pow(2, Weight_Width - 1) * scala.math.random()).toInt
          Data3(i)(j) = (scala.math.pow(2, Data_Width - 1) * scala.math.random()).toInt
          Weight3(i)(j) = (scala.math.pow(2, Weight_Width - 1) * scala.math.random()).toInt
        }
      }

      /** construct golden model*/
      for (i <- 0 until PE_Width) {
        for (j <- 0 until PE_Width) {
          var sum0 = 0
          var sum1 = 0
          var sum2 = 0
          var sum3 = 0
          for (k <- 0 until PE_Width) {
            sum0 += Data0(i)(k) * Weight0(k)(j)
            sum1 += Data1(i)(k) * Weight1(k)(j)
            sum2 += Data2(i)(k) * Weight2(k)(j)
            sum3 += Data3(i)(k) * Weight3(k)(j)
          }
          Sum(i)(j) = sum0 + sum1 + sum2 + sum3
        }
      }

      val input_data0 = Data0.flatten
      val input_weight0 = Weight0.flatten
      val input_data1 = Data1.flatten
      val input_weight1 = Weight1.flatten
      val input_data2 = Data2.flatten
      val input_weight2 = Weight2.flatten
      val input_data3 = Data3.flatten
      val input_weight3 = Weight3.flatten

      for (i <- 0 until Array_Width) {
        dut.io.Data_x.bits(i).poke(input_data0(i).asUInt)
        dut.io.Data_x.valid.poke(true.B)
        dut.io.Weight_x.bits(i).poke(input_weight0(i).asUInt)
        dut.io.Weight_x.valid.poke(true.B)
      }
      dut.clock.step()
      for (i <- 0 until Array_Width) {
        dut.io.Data_x.bits(i).poke(input_data1(i).asUInt)
        dut.io.Data_x.valid.poke(true.B)
        dut.io.Weight_x.bits(i).poke(input_weight1(i).asUInt)
        dut.io.Weight_x.valid.poke(true.B)
      }
      dut.clock.step()
      for (i <- 0 until Array_Width) {
        dut.io.Data_x.bits(i).poke(input_data2(i).asUInt)
        dut.io.Data_x.valid.poke(true.B)
        dut.io.Weight_x.bits(i).poke(input_weight2(i).asUInt)
        dut.io.Weight_x.valid.poke(true.B)
      }
      dut.clock.step()
      for (i <- 0 until Array_Width) {
        dut.io.Data_x.bits(i).poke(input_data3(i).asUInt)
        dut.io.Data_x.valid.poke(true.B)
        dut.io.Weight_x.bits(i).poke(input_weight3(i).asUInt)
        dut.io.Weight_x.valid.poke(true.B)
      }
      dut.clock.step()

      dut.io.Data_x.valid.poke(false.B)
      dut.io.Weight_x.valid.poke(false.B)
      dut.io.Compute.poke(true.B)
      dut.clock.step()
      dut.io.Compute.poke(false.B)
      dut.io.Sum_x.ready.poke(true.B)
      while (!dut.io.Sum_x.valid.peek().litToBoolean) {
        dut.clock.step()
      }

      val output_sum = Sum.flatten
      for (i <- 0 until Array_Width) {
        dut.io.Sum_x.bits(i).expect(output_sum(i).asUInt)
      }
    }
  }
}
