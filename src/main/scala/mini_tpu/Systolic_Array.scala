package mini_tpu

import chisel3._
import chisel3.util._

class Systolic_Array_IOBundle extends Bundle with Mini_TPU_Config {
  val activate = Input(Vec(PE_Width, UInt(Data_Width.W)))
  val weight = Input(Vec(PE_Width, UInt(Weight_Width.W)))
  val flow = Input(Bool())
  val shift = Input(Bool())
  val psum = Output(Vec(PE_Width, UInt(PSum_Width.W)))
  val valid = Output(Vec(PE_Width, Bool()))
}

class Systolic_Array extends Module with Mini_TPU_Config {
  val io = IO(new Systolic_Array_IOBundle())

  /** construct the systolic array */
  val PE_Array = Seq.fill(PE_Width)(Seq.fill(PE_Width)(Module(new basic_PE())))

  /** flow & shift are global signal */
  PE_Array.foreach(i => i.foreach(j => (j.io.in_flow := io.flow)))
  PE_Array.foreach(i => i.foreach(j => (j.io.in_shift := io.shift)))

  /** weight & partial sum flows from top to down */
  for (i <- 0 until (PE_Width - 1)) {
    for (j <- 0 until PE_Width) {
      DataPath.top_to_down(PE_Array(i)(j), PE_Array(i + 1)(j))
    }
  }

  for (j <- 0 until PE_Width) {
    DataPath.top_to_down(io.weight(j), PE_Array(0)(j))
  }

  for (j <- 0 until PE_Width) {
    DataPath.top_to_down(PE_Array(PE_Width - 1)(j), io.psum(j))
  }

  /** activation flows from left to right */
  for (i <- 0 until PE_Width) {
    for (j <- 0 until (PE_Width - 1)) {
      DataPath.left_to_right(PE_Array(i)(j), PE_Array(i)(j + 1))
    }
  }

  for (i <- 0 until PE_Width) {
    DataPath.left_to_right(io.activate(i), PE_Array(i)(0))
  }

  /** flow_counter to control the valid signal for accumulation */
  val flow_counter = RegInit(0.U(log2Ceil(3 * PE_Width - 1).W))
  val valid_reg = RegInit(0.U(PE_Width.W))

  /** it needs (3 * PE_Width - 2) cycles for psum flowing */
  when(io.flow && (flow_counter < (3 * PE_Width - 2).U)) {
    flow_counter := flow_counter + 1.U
  }.elsewhen(flow_counter === (3 * PE_Width - 2).U) {
    flow_counter := 0.U
  }.otherwise {
    flow_counter := flow_counter
  }

  /** valid signal should ahead a cycle, the counter has hysteresis */
  when((io.flow && (PE_Width - 1).U <= flow_counter) && (flow_counter < (2 * PE_Width - 1).U)) {
    valid_reg := Cat(valid_reg(PE_Width - 2, 0), 1.U)
  }.elsewhen(io.flow && (flow_counter >= (2 * PE_Width - 1).U)) {
    valid_reg := Cat(valid_reg(PE_Width - 2, 0), 0.U)
  }.otherwise {
    valid_reg := 0.U
  }

  io.valid := VecInit(valid_reg.asBools)
}
