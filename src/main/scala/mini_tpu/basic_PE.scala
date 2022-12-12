package mini_tpu

import chisel3._

class basic_PE extends Module with Mini_TPU_Config {
  val io = IO(new Bundle {
    val in_activate = Input(UInt(Data_Width.W))
    val in_weight = Input(UInt(Weight_Width.W))
    val in_psum = Input(UInt(PSum_Width.W))
    val in_flow = Input(Bool())
    val in_shift = Input(Bool())
    val out_activate = Output(UInt(Data_Width.W))
    val out_weight = Output(UInt(Weight_Width.W))
    val out_psum = Output(UInt(PSum_Width.W))
  })

  val Activation_Reg = RegInit(0.U(Data_Width.W))
  val Weight_Reg = RegInit(0.U(Weight_Width.W))
  val PSum_Reg = RegInit(0.U(PSum_Width.W))

  /** when flow is false, stop flowing activation data */
  when(io.in_flow) {
    Activation_Reg := io.in_activate
  }.otherwise {
    Activation_Reg := Activation_Reg
  }

  /** when shift is true, clear the partial sum result */
  when(io.in_shift) {
    PSum_Reg := 0.U
  }.elsewhen(io.in_flow) {
    PSum_Reg := io.in_psum
  }.otherwise {
    PSum_Reg := PSum_Reg
  }

  /** when shift is false, keep the weight value same */
  when(io.in_shift) {
    Weight_Reg := io.in_weight
  }.otherwise {
    Weight_Reg := Weight_Reg
  }

  /** output signal */
  io.out_activate := Activation_Reg
  io.out_weight := Weight_Reg
  io.out_psum := Activation_Reg * Weight_Reg + PSum_Reg
}
