package mini_tpu

import chisel3.stage.ChiselStage

object Mini_TPU_Generator extends App {
  (new ChiselStage).emitVerilog(new Mini_TPU, Array("--target-dir", s"generated/Mini_TPU_Demo_8x8/"))
}

object Systolic_Array_Generator extends App {
  (new ChiselStage).emitVerilog(new Systolic_Array, Array("--target-dir", s"generated/Systolic_Array_8x8/"))
}
