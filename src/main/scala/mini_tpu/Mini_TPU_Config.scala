package mini_tpu

trait Mini_TPU_Config {
  /** basic PE configuration */
  val Data_Width = 8
  val Weight_Width = Data_Width
  val PSum_Width = 2 * Data_Width
  val Sum_Width = 4 * Data_Width

  /** PE Systolic Array configuration */
  val PE_Width = 4
  val Array_Width = PE_Width * PE_Width

  /** Activation Buffer configuration */
  val Activate_Depth = 8 /* must be the pow of 2 */

  /** Weight Buffer configuration */
  val Buffer_Depth = 4 /* must be the pow of 2 */

  /** Accumulator configuration */
  val Acc_Cycle = PE_Width
}
