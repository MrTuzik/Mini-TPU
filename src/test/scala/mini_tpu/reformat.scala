package mini_tpu

import chisel3._
import chiseltest._

object reformat {
  def array2vec (Array: Array[Int], Vector: Vec[UInt]):Unit = {
    require(Array.length == Vector.length)
    for (i <- 0 until Array.length) {
      Vector(i).poke(Array(i).asUInt)
    }
  }

  def array2vec (Array: Array[Boolean], Vector: Vec[Bool]):Unit = {
    require(Array.length == Vector.length)
    for (i <- 0 until Array.length) {
      Vector(i).poke(Array(i).asBool)
    }
  }
}
