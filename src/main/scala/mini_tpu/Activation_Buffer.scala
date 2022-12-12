package mini_tpu

import chisel3._
import chisel3.util._

class AB_IOBundle extends Bundle with Mini_TPU_Config {
  val wen = Input(Bool())
  val ren = Input(Bool())
  val in_data_x = Input(Vec(Array_Width, UInt(Data_Width.W)))
  val out_activate = Output(Vec(PE_Width, UInt(Data_Width.W)))
  val out_flow = Output(Bool())
  val isfull = Output(Bool())
  val isempty = Output(Bool())
  val isdone = Output(Bool())
  /** for debug */
//  val read_ptr = Output(UInt((1 + log2Ceil(Activate_Depth)).W))
//  val write_ptr = Output(UInt((1 + log2Ceil(Activate_Depth)).W))
}

class Activation_Buffer(Activate_Width:Int) extends Module with Mini_TPU_Config {
  val io = IO(new AB_IOBundle())

  /** construct the FIFO with Activate_Depth */
  val buffer = RegInit(VecInit(Seq.fill(Activate_Depth)(VecInit(Seq.fill(Array_Width)(0.U(Weight_Width.W))))))

  /** synchronize FIFO use read_ptr & write_ptr */
  val read_ptr = RegInit(0.U((1 + Activate_Width).W))
  val write_ptr = RegInit(0.U((1 + Activate_Width).W))
  val full = Wire(Bool())
  val empty = Wire(Bool())

  /** add an extra bit to tell full or empty */
  full := (read_ptr(Activate_Width - 1, 0) === write_ptr(Activate_Width - 1, 0)) && (read_ptr(Activate_Width) =/= write_ptr(Activate_Width))
  empty := (read_ptr(Activate_Width - 1, 0) === write_ptr(Activate_Width - 1, 0)) && (read_ptr(Activate_Width) === write_ptr(Activate_Width))
  io.isfull := full
  io.isempty := empty

  /** write operation */
  when(io.wen && (!full)) {
    write_ptr := write_ptr + 1.U
  }.otherwise {
    write_ptr := write_ptr
  }

  /** (0,0) (0,1) (1,0) (1,1) => (0,0) (1,0) (0,1) (1,1) */
  when(io.wen && (!full)) {
    for (i <- 0 until PE_Width) {
      for (j <- 0 until PE_Width) {
        buffer(write_ptr(Activate_Width - 1, 0))(i * PE_Width + j) := io.in_data_x(j * PE_Width + i)
      }
    }
  }

  /** read operation */
  val flow_ptr = RegInit(0.U(log2Ceil(3 * PE_Width - 1).W))

  when(io.ren && (!empty)) {
    flow_ptr := flow_ptr + 1.U
  }.elsewhen(flow_ptr === (3 * PE_Width - 2).U) {
    flow_ptr := 0.U
  }.elsewhen(flow_ptr =/= 0.U) {
    flow_ptr := flow_ptr + 1.U
  }.otherwise {
    flow_ptr := 0.U
  }

  when(flow_ptr =/= 0.U) {
    io.out_flow := true.B
  }.otherwise {
    io.out_flow := false.B
  }

  when(flow_ptr =/= 0.U) {
    for (i <- 0 until PE_Width) {
      when ((i.U < flow_ptr) && (flow_ptr <= (PE_Width + i).U)) {
        io.out_activate(i) := buffer(read_ptr(Activate_Width - 1, 0))((i * PE_Width).U + flow_ptr - (i + 1).U)
      }.otherwise {
        io.out_activate(i) := 0.U
      }
    }
  }.otherwise {
    for (i <- 0 until PE_Width) {
      io.out_activate(i) := 0.U
    }
  }

  when(flow_ptr === (3 * PE_Width - 2).U) {
    read_ptr := read_ptr + 1.U
  }.otherwise {
    read_ptr := read_ptr
  }

  when(flow_ptr === (3 * PE_Width - 2).U) {
    io.isdone := true.B
  }.otherwise {
    io.isdone := false.B
  }

  /** for debug */
//  io.read_ptr := read_ptr
//  io.write_ptr := write_ptr
}

