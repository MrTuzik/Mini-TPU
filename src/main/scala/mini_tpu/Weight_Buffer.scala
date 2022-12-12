package mini_tpu

import chisel3._
import chisel3.util._

class WB_IOBundle extends Bundle with Mini_TPU_Config {
  val wen = Input(Bool())
  val ren = Input(Bool())
  val in_weight_x = Input(Vec(Array_Width, UInt(Weight_Width.W)))
  val out_weight = Output(Vec(PE_Width, UInt(Weight_Width.W)))
  val out_shift = Output(Bool())
  val isfull = Output(Bool())
  val isempty = Output(Bool())
  val isdone = Output(Bool())
  /** for debug */
//  val isempty = Output(Bool())
//  val read_ptr = Output(UInt((1 + log2Ceil(Buffer_Depth)).W))
//  val write_ptr = Output(UInt((1 + log2Ceil(Buffer_Depth)).W))
}

class Weight_Buffer(Buffer_Width:Int) extends Module with Mini_TPU_Config {
  val io = IO(new WB_IOBundle())

  /** construct the FIFO with Buffer_Depth */
  val buffer = RegInit(VecInit(Seq.fill(Buffer_Depth)(VecInit(Seq.fill(Array_Width)(0.U(Weight_Width.W))))))

  /** synchronize FIFO use read_ptr & write_ptr */
  val read_ptr = RegInit(0.U((1 + Buffer_Width).W))
  val write_ptr = RegInit(0.U((1 + Buffer_Width).W))
  val full = Wire(Bool())
  val empty = Wire(Bool())

  /** add an extra bit to tell full or empty */
  full := (read_ptr(Buffer_Width - 1, 0) === write_ptr(Buffer_Width - 1, 0)) && (read_ptr(Buffer_Width) =/= write_ptr(Buffer_Width))
  empty := (read_ptr(Buffer_Width - 1, 0) === write_ptr(Buffer_Width - 1, 0)) && (read_ptr(Buffer_Width) === write_ptr(Buffer_Width))
  io.isfull := full
  io.isempty := empty

  /** write operation */
  when(io.wen && (!full)) {
    write_ptr := write_ptr + 1.U
  }.otherwise {
    write_ptr := write_ptr
  }

  when(io.wen && (!full)) {
    buffer(write_ptr(Buffer_Width - 1, 0)) := io.in_weight_x
  }

  /** read operation */
  val shift_ptr = RegInit(PE_Width.U(log2Ceil(PE_Width + 1).W))

  when(io.ren && (!empty)) {
    shift_ptr := shift_ptr - 1.U
  }.elsewhen((1.U <= shift_ptr) && (shift_ptr < PE_Width.U)){
    shift_ptr := shift_ptr - 1.U
  }.otherwise {
    shift_ptr := PE_Width.U
  }

  when(shift_ptr =/= PE_Width.U) {
    io.out_shift := true.B
    for (i <- 0 until PE_Width) {
      io.out_weight(i) := buffer(read_ptr(Buffer_Width - 1, 0))(shift_ptr * PE_Width.U + i.U)
    }
  }.otherwise {
    io.out_shift := false.B
    for (i <- 0 until PE_Width) {
      io.out_weight(i) := 0.U
    }
  }

  when(shift_ptr === 0.U) {
    read_ptr := read_ptr + 1.U
  }.otherwise {
    read_ptr := read_ptr
  }

  when(shift_ptr === 0.U) {
    io.isdone := true.B
  }.otherwise {
    io.isdone := false.B
  }

  /** for debug */
//  io.read_ptr := read_ptr
//  io.write_ptr := write_ptr
}
