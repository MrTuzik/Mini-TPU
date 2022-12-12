package mini_tpu

import chisel3._

object DataPath {
  def left_to_right (Left: basic_PE, Right: basic_PE):Unit = {
    Right.io.in_activate := Left.io.out_activate
  }

  def left_to_right (Left: UInt, Right: basic_PE):Unit = {
    Right.io.in_activate := Left
  }

  def top_to_down (Top: basic_PE, Down: basic_PE):Unit = {
    Down.io.in_weight := Top.io.out_weight
    Down.io.in_psum := Top.io.out_psum
  }

  def top_to_down (Top: UInt, Down: basic_PE):Unit = {
    Down.io.in_weight := Top
    Down.io.in_psum := 0.U
  }
  def top_to_down (Top: basic_PE, Down: UInt):Unit = {
    Down := Top.io.out_psum
  }
}
