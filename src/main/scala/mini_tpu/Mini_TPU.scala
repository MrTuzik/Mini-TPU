package mini_tpu

import chisel3._
import chisel3.util._

class Mini_TPU_IOBundle extends Bundle with Mini_TPU_Config {
  val Compute = Input(Bool())
  val Data_x = Flipped(DecoupledIO(Vec(Array_Width, UInt(Data_Width.W))))
  val Weight_x = Flipped(DecoupledIO(Vec(Array_Width, UInt(Weight_Width.W))))
  val Sum_x = DecoupledIO(Vec(Array_Width, UInt(Sum_Width.W)))
}

class Mini_TPU extends Module with Mini_TPU_Config {
  val io = IO(new Mini_TPU_IOBundle())

  /** create submodule instances */
  val activation_buffer = Module(new Activation_Buffer(log2Ceil(Activate_Depth)))
  val weight_buffer = Module(new Weight_Buffer(log2Ceil(Buffer_Depth)))
  val systolic_array = Module(new Systolic_Array())
  val accumulation_array = Module(new Accumulator_Array())

  /** global control logic */
  val idle :: shift_weight :: flow_data :: accumulate :: finish :: Nil = Enum(5)
  val stateReg = RegInit(idle)

  /** default control signal */
  activation_buffer.io.ren := false.B
  weight_buffer.io.ren := false.B
  accumulation_array.io.in_acc := false.B
  accumulation_array.io.in_compute_done := false.B

  switch(stateReg) {
    is(idle) {
      accumulation_array.io.in_compute_done := false.B
      when(io.Compute && (!activation_buffer.io.isempty) && (!weight_buffer.io.isempty)) {
        weight_buffer.io.ren := true.B
        stateReg := shift_weight
      }.otherwise {
        stateReg := idle
      }
    }
    is(shift_weight) {
      weight_buffer.io.ren := false.B
      when(weight_buffer.io.isdone) {
        activation_buffer.io.ren := true.B
        stateReg := flow_data
      }.otherwise {
        stateReg := shift_weight
      }
    }
    is(flow_data) {
      activation_buffer.io.ren := false.B
      when(activation_buffer.io.isdone) {
        accumulation_array.io.in_acc := true.B
        stateReg := accumulate
      }.otherwise {
        stateReg := flow_data
      }
    }
    is(accumulate) {
      accumulation_array.io.in_acc := false.B
      when(accumulation_array.io.isdone) {
        when((!activation_buffer.io.isempty) && (!weight_buffer.io.isempty)) {
          weight_buffer.io.ren := true.B
          stateReg := shift_weight
        }.otherwise {
          stateReg := finish
        }
      }.otherwise {
        stateReg := accumulate
      }
    }
    is(finish) {
      accumulation_array.io.in_compute_done := true.B
      stateReg := idle
    }
  }

  /** weight_buffer control logic */
  io.Weight_x.ready := !weight_buffer.io.isfull
  weight_buffer.io.wen := io.Weight_x.valid
  weight_buffer.io.in_weight_x := io.Weight_x.bits

  /** activation_buffer control logic */
  io.Data_x.ready := !activation_buffer.io.isfull
  activation_buffer.io.wen := io.Data_x.valid
  activation_buffer.io.in_data_x := io.Data_x.bits

  /** accumulation_array control logic */
  io.Sum_x.valid := accumulation_array.io.valid
  when (io.Sum_x.fire) {
    io.Sum_x.bits := accumulation_array.io.out_sum
  }.otherwise {
    io.Sum_x.bits := VecInit(Seq.fill(Array_Width)(0.U(Sum_Width)))
  }

  /** systolic_array <> activation_buffer */
  systolic_array.io.flow := activation_buffer.io.out_flow
  systolic_array.io.activate := activation_buffer.io.out_activate

  /** systolic_array <> weight_buffer */
  systolic_array.io.shift := weight_buffer.io.out_shift
  systolic_array.io.weight := weight_buffer.io.out_weight

  /** accumulation_array <> systolic_array */
  accumulation_array.io.in_valid := systolic_array.io.valid
  accumulation_array.io.in_psum := systolic_array.io.psum
}

