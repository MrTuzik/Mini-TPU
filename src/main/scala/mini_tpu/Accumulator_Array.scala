package mini_tpu

import chisel3._
import chisel3.util._

class Acc_IOBundle extends Bundle with Mini_TPU_Config {
  val in_psum = Input(Vec(PE_Width, UInt(PSum_Width.W)))
  val in_valid = Input(Vec(PE_Width, Bool()))
  val in_acc = Input(Bool())
  val in_compute_done = Input(Bool())
  val isdone = Output(Bool())
  val out_sum = Output(Vec(Array_Width, UInt(Sum_Width.W)))
  val valid = Output(Bool())
}

class Accumulator_Array extends Module with Mini_TPU_Config {
  val io = IO(new Acc_IOBundle())

  /** one for buffer systolic array result, another for accumulation */
  val Acc_Buffer = RegInit(VecInit(Seq.fill(PE_Width)(VecInit(Seq.fill(PE_Width)(0.U(PSum_Width.W))))))
  val Acc_Result = RegInit(VecInit(Seq.fill(PE_Width)(VecInit(Seq.fill(PE_Width)(0.U(Sum_Width.W))))))
  val valid_counter = RegInit(VecInit(Seq.fill(PE_Width)(0.U(log2Ceil(PE_Width + 1).W))))

  for (i <- 0 until PE_Width) {
    when(io.in_valid(i)) {
      Acc_Buffer(valid_counter(i))(i) := io.in_psum(i)
    }.otherwise {
      Acc_Buffer(valid_counter(i))(i) := Acc_Buffer(valid_counter(i))(i)
    }
  }

  /** index ranges from 0 to PE_Width - 1 */
  for (i <- 0 until PE_Width) {
    when(io.in_valid(i) && (valid_counter(i) < (PE_Width - 1).U)) {
      valid_counter(i) := valid_counter(i) + 1.U
    }.elsewhen(valid_counter(i) === (PE_Width - 1).U) {
      valid_counter(i) := 0.U
    }.otherwise {
      valid_counter(i) := valid_counter(i)
    }
  }

  val acc_counter = RegInit(0.U(log2Ceil(Acc_Cycle + 1).W))

  when(io.in_acc && (acc_counter === 0.U)) {
    acc_counter := acc_counter + 1.U
  }.elsewhen(acc_counter === Acc_Cycle.U) {
    acc_counter := 0.U
  }.elsewhen(acc_counter =/= 0.U) {
    acc_counter := acc_counter + 1.U
  }.otherwise {
    acc_counter := acc_counter
  }

  when(acc_counter =/= 0.U) {
    for (i <- 0 until PE_Width) {
      Acc_Result(acc_counter - 1.U)(i) := Acc_Result(acc_counter - 1.U)(i) + Acc_Buffer(acc_counter - 1.U)(i)
    }
  }

  when(acc_counter === Acc_Cycle.U) {
    io.isdone := true.B
  }.otherwise {
    io.isdone := false.B
  }

  when(io.in_compute_done) {
    io.out_sum := VecInit(Acc_Result.flatten)
    io.valid := true.B
  }.otherwise {
    io.out_sum := VecInit(Seq.fill(Array_Width)(0.U(Sum_Width.W)))
    io.valid := false.B
  }
}
