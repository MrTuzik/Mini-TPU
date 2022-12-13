package mini_tpu

import chisel3.stage.ChiselStage

object Mini_TPU_Generator extends App {
  (new ChiselStage).emitVerilog(new Mini_TPU, Array("--target-dir", s"generated/Mini_TPU_Demo_4x4/"))
}
