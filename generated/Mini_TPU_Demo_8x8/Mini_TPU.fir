circuit Mini_TPU :
  module Activation_Buffer :
    input clock : Clock
    input reset : Reset
    output io : { flip wen : UInt<1>, flip ren : UInt<1>, flip in_data_x : UInt<8>[64], out_activate : UInt<8>[8], out_flow : UInt<1>, isfull : UInt<1>, isempty : UInt<1>, isdone : UInt<1>}

    wire _buffer_WIRE : UInt<8>[64] @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[0] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[1] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[2] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[3] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[4] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[5] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[6] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[7] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[8] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[9] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[10] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[11] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[12] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[13] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[14] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[15] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[16] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[17] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[18] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[19] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[20] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[21] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[22] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[23] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[24] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[25] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[26] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[27] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[28] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[29] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[30] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[31] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[32] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[33] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[34] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[35] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[36] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[37] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[38] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[39] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[40] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[41] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[42] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[43] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[44] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[45] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[46] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[47] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[48] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[49] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[50] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[51] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[52] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[53] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[54] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[55] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[56] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[57] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[58] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[59] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[60] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[61] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[62] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE[63] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    wire _buffer_WIRE_1 : UInt<8>[64] @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[0] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[1] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[2] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[3] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[4] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[5] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[6] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[7] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[8] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[9] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[10] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[11] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[12] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[13] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[14] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[15] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[16] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[17] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[18] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[19] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[20] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[21] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[22] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[23] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[24] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[25] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[26] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[27] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[28] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[29] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[30] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[31] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[32] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[33] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[34] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[35] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[36] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[37] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[38] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[39] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[40] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[41] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[42] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[43] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[44] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[45] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[46] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[47] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[48] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[49] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[50] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[51] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[52] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[53] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[54] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[55] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[56] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[57] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[58] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[59] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[60] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[61] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[62] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_1[63] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    wire _buffer_WIRE_2 : UInt<8>[64] @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[0] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[1] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[2] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[3] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[4] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[5] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[6] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[7] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[8] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[9] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[10] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[11] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[12] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[13] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[14] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[15] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[16] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[17] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[18] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[19] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[20] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[21] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[22] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[23] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[24] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[25] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[26] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[27] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[28] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[29] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[30] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[31] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[32] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[33] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[34] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[35] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[36] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[37] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[38] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[39] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[40] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[41] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[42] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[43] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[44] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[45] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[46] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[47] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[48] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[49] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[50] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[51] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[52] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[53] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[54] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[55] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[56] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[57] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[58] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[59] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[60] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[61] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[62] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_2[63] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    wire _buffer_WIRE_3 : UInt<8>[64] @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[0] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[1] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[2] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[3] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[4] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[5] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[6] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[7] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[8] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[9] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[10] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[11] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[12] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[13] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[14] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[15] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[16] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[17] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[18] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[19] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[20] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[21] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[22] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[23] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[24] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[25] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[26] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[27] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[28] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[29] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[30] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[31] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[32] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[33] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[34] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[35] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[36] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[37] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[38] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[39] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[40] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[41] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[42] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[43] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[44] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[45] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[46] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[47] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[48] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[49] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[50] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[51] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[52] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[53] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[54] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[55] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[56] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[57] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[58] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[59] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[60] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[61] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[62] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_3[63] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    wire _buffer_WIRE_4 : UInt<8>[64][4] @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_4[0] <= _buffer_WIRE @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_4[1] <= _buffer_WIRE_1 @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_4[2] <= _buffer_WIRE_2 @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_4[3] <= _buffer_WIRE_3 @[Activation_Buffer.scala 24:31]
    reg buffer : UInt<8>[64][4], clock with :
      reset => (reset, _buffer_WIRE_4) @[Activation_Buffer.scala 24:23]
    reg read_ptr : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[Activation_Buffer.scala 27:25]
    reg write_ptr : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[Activation_Buffer.scala 28:26]
    wire full : UInt<1> @[Activation_Buffer.scala 29:18]
    wire empty : UInt<1> @[Activation_Buffer.scala 30:19]
    node _full_T = bits(read_ptr, 1, 0) @[Activation_Buffer.scala 33:20]
    node _full_T_1 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 33:57]
    node _full_T_2 = eq(_full_T, _full_T_1) @[Activation_Buffer.scala 33:44]
    node _full_T_3 = bits(read_ptr, 2, 2) @[Activation_Buffer.scala 33:94]
    node _full_T_4 = bits(write_ptr, 2, 2) @[Activation_Buffer.scala 33:124]
    node _full_T_5 = neq(_full_T_3, _full_T_4) @[Activation_Buffer.scala 33:111]
    node _full_T_6 = and(_full_T_2, _full_T_5) @[Activation_Buffer.scala 33:82]
    full <= _full_T_6 @[Activation_Buffer.scala 33:8]
    node _empty_T = bits(read_ptr, 1, 0) @[Activation_Buffer.scala 34:21]
    node _empty_T_1 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 34:58]
    node _empty_T_2 = eq(_empty_T, _empty_T_1) @[Activation_Buffer.scala 34:45]
    node _empty_T_3 = bits(read_ptr, 2, 2) @[Activation_Buffer.scala 34:95]
    node _empty_T_4 = bits(write_ptr, 2, 2) @[Activation_Buffer.scala 34:125]
    node _empty_T_5 = eq(_empty_T_3, _empty_T_4) @[Activation_Buffer.scala 34:112]
    node _empty_T_6 = and(_empty_T_2, _empty_T_5) @[Activation_Buffer.scala 34:83]
    empty <= _empty_T_6 @[Activation_Buffer.scala 34:9]
    io.isfull <= full @[Activation_Buffer.scala 35:13]
    io.isempty <= empty @[Activation_Buffer.scala 36:14]
    node _T = eq(full, UInt<1>("h0")) @[Activation_Buffer.scala 39:19]
    node _T_1 = and(io.wen, _T) @[Activation_Buffer.scala 39:15]
    when _T_1 : @[Activation_Buffer.scala 39:27]
      node _write_ptr_T = add(write_ptr, UInt<1>("h1")) @[Activation_Buffer.scala 40:28]
      node _write_ptr_T_1 = tail(_write_ptr_T, 1) @[Activation_Buffer.scala 40:28]
      write_ptr <= _write_ptr_T_1 @[Activation_Buffer.scala 40:15]
    else :
      write_ptr <= write_ptr @[Activation_Buffer.scala 42:15]
    node _T_2 = eq(full, UInt<1>("h0")) @[Activation_Buffer.scala 46:19]
    node _T_3 = and(io.wen, _T_2) @[Activation_Buffer.scala 46:15]
    when _T_3 : @[Activation_Buffer.scala 46:27]
      node _T_4 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_4][0] <= io.in_data_x[0] @[Activation_Buffer.scala 49:68]
      node _T_5 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_5][1] <= io.in_data_x[8] @[Activation_Buffer.scala 49:68]
      node _T_6 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_6][2] <= io.in_data_x[16] @[Activation_Buffer.scala 49:68]
      node _T_7 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_7][3] <= io.in_data_x[24] @[Activation_Buffer.scala 49:68]
      node _T_8 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_8][4] <= io.in_data_x[32] @[Activation_Buffer.scala 49:68]
      node _T_9 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_9][5] <= io.in_data_x[40] @[Activation_Buffer.scala 49:68]
      node _T_10 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_10][6] <= io.in_data_x[48] @[Activation_Buffer.scala 49:68]
      node _T_11 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_11][7] <= io.in_data_x[56] @[Activation_Buffer.scala 49:68]
      node _T_12 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_12][8] <= io.in_data_x[1] @[Activation_Buffer.scala 49:68]
      node _T_13 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_13][9] <= io.in_data_x[9] @[Activation_Buffer.scala 49:68]
      node _T_14 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_14][10] <= io.in_data_x[17] @[Activation_Buffer.scala 49:68]
      node _T_15 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_15][11] <= io.in_data_x[25] @[Activation_Buffer.scala 49:68]
      node _T_16 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_16][12] <= io.in_data_x[33] @[Activation_Buffer.scala 49:68]
      node _T_17 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_17][13] <= io.in_data_x[41] @[Activation_Buffer.scala 49:68]
      node _T_18 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_18][14] <= io.in_data_x[49] @[Activation_Buffer.scala 49:68]
      node _T_19 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_19][15] <= io.in_data_x[57] @[Activation_Buffer.scala 49:68]
      node _T_20 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_20][16] <= io.in_data_x[2] @[Activation_Buffer.scala 49:68]
      node _T_21 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_21][17] <= io.in_data_x[10] @[Activation_Buffer.scala 49:68]
      node _T_22 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_22][18] <= io.in_data_x[18] @[Activation_Buffer.scala 49:68]
      node _T_23 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_23][19] <= io.in_data_x[26] @[Activation_Buffer.scala 49:68]
      node _T_24 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_24][20] <= io.in_data_x[34] @[Activation_Buffer.scala 49:68]
      node _T_25 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_25][21] <= io.in_data_x[42] @[Activation_Buffer.scala 49:68]
      node _T_26 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_26][22] <= io.in_data_x[50] @[Activation_Buffer.scala 49:68]
      node _T_27 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_27][23] <= io.in_data_x[58] @[Activation_Buffer.scala 49:68]
      node _T_28 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_28][24] <= io.in_data_x[3] @[Activation_Buffer.scala 49:68]
      node _T_29 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_29][25] <= io.in_data_x[11] @[Activation_Buffer.scala 49:68]
      node _T_30 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_30][26] <= io.in_data_x[19] @[Activation_Buffer.scala 49:68]
      node _T_31 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_31][27] <= io.in_data_x[27] @[Activation_Buffer.scala 49:68]
      node _T_32 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_32][28] <= io.in_data_x[35] @[Activation_Buffer.scala 49:68]
      node _T_33 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_33][29] <= io.in_data_x[43] @[Activation_Buffer.scala 49:68]
      node _T_34 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_34][30] <= io.in_data_x[51] @[Activation_Buffer.scala 49:68]
      node _T_35 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_35][31] <= io.in_data_x[59] @[Activation_Buffer.scala 49:68]
      node _T_36 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_36][32] <= io.in_data_x[4] @[Activation_Buffer.scala 49:68]
      node _T_37 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_37][33] <= io.in_data_x[12] @[Activation_Buffer.scala 49:68]
      node _T_38 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_38][34] <= io.in_data_x[20] @[Activation_Buffer.scala 49:68]
      node _T_39 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_39][35] <= io.in_data_x[28] @[Activation_Buffer.scala 49:68]
      node _T_40 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_40][36] <= io.in_data_x[36] @[Activation_Buffer.scala 49:68]
      node _T_41 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_41][37] <= io.in_data_x[44] @[Activation_Buffer.scala 49:68]
      node _T_42 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_42][38] <= io.in_data_x[52] @[Activation_Buffer.scala 49:68]
      node _T_43 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_43][39] <= io.in_data_x[60] @[Activation_Buffer.scala 49:68]
      node _T_44 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_44][40] <= io.in_data_x[5] @[Activation_Buffer.scala 49:68]
      node _T_45 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_45][41] <= io.in_data_x[13] @[Activation_Buffer.scala 49:68]
      node _T_46 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_46][42] <= io.in_data_x[21] @[Activation_Buffer.scala 49:68]
      node _T_47 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_47][43] <= io.in_data_x[29] @[Activation_Buffer.scala 49:68]
      node _T_48 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_48][44] <= io.in_data_x[37] @[Activation_Buffer.scala 49:68]
      node _T_49 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_49][45] <= io.in_data_x[45] @[Activation_Buffer.scala 49:68]
      node _T_50 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_50][46] <= io.in_data_x[53] @[Activation_Buffer.scala 49:68]
      node _T_51 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_51][47] <= io.in_data_x[61] @[Activation_Buffer.scala 49:68]
      node _T_52 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_52][48] <= io.in_data_x[6] @[Activation_Buffer.scala 49:68]
      node _T_53 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_53][49] <= io.in_data_x[14] @[Activation_Buffer.scala 49:68]
      node _T_54 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_54][50] <= io.in_data_x[22] @[Activation_Buffer.scala 49:68]
      node _T_55 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_55][51] <= io.in_data_x[30] @[Activation_Buffer.scala 49:68]
      node _T_56 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_56][52] <= io.in_data_x[38] @[Activation_Buffer.scala 49:68]
      node _T_57 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_57][53] <= io.in_data_x[46] @[Activation_Buffer.scala 49:68]
      node _T_58 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_58][54] <= io.in_data_x[54] @[Activation_Buffer.scala 49:68]
      node _T_59 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_59][55] <= io.in_data_x[62] @[Activation_Buffer.scala 49:68]
      node _T_60 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_60][56] <= io.in_data_x[7] @[Activation_Buffer.scala 49:68]
      node _T_61 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_61][57] <= io.in_data_x[15] @[Activation_Buffer.scala 49:68]
      node _T_62 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_62][58] <= io.in_data_x[23] @[Activation_Buffer.scala 49:68]
      node _T_63 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_63][59] <= io.in_data_x[31] @[Activation_Buffer.scala 49:68]
      node _T_64 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_64][60] <= io.in_data_x[39] @[Activation_Buffer.scala 49:68]
      node _T_65 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_65][61] <= io.in_data_x[47] @[Activation_Buffer.scala 49:68]
      node _T_66 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_66][62] <= io.in_data_x[55] @[Activation_Buffer.scala 49:68]
      node _T_67 = bits(write_ptr, 1, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_67][63] <= io.in_data_x[63] @[Activation_Buffer.scala 49:68]
    reg flow_ptr : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[Activation_Buffer.scala 55:25]
    node _T_68 = eq(empty, UInt<1>("h0")) @[Activation_Buffer.scala 57:19]
    node _T_69 = and(io.ren, _T_68) @[Activation_Buffer.scala 57:15]
    when _T_69 : @[Activation_Buffer.scala 57:28]
      node _flow_ptr_T = add(flow_ptr, UInt<1>("h1")) @[Activation_Buffer.scala 58:26]
      node _flow_ptr_T_1 = tail(_flow_ptr_T, 1) @[Activation_Buffer.scala 58:26]
      flow_ptr <= _flow_ptr_T_1 @[Activation_Buffer.scala 58:14]
    else :
      node _T_70 = eq(flow_ptr, UInt<5>("h16")) @[Activation_Buffer.scala 59:23]
      when _T_70 : @[Activation_Buffer.scala 59:49]
        flow_ptr <= UInt<1>("h0") @[Activation_Buffer.scala 60:14]
      else :
        node _T_71 = neq(flow_ptr, UInt<1>("h0")) @[Activation_Buffer.scala 61:23]
        when _T_71 : @[Activation_Buffer.scala 61:32]
          node _flow_ptr_T_2 = add(flow_ptr, UInt<1>("h1")) @[Activation_Buffer.scala 62:26]
          node _flow_ptr_T_3 = tail(_flow_ptr_T_2, 1) @[Activation_Buffer.scala 62:26]
          flow_ptr <= _flow_ptr_T_3 @[Activation_Buffer.scala 62:14]
        else :
          flow_ptr <= UInt<1>("h0") @[Activation_Buffer.scala 64:14]
    node _T_72 = neq(flow_ptr, UInt<1>("h0")) @[Activation_Buffer.scala 67:17]
    when _T_72 : @[Activation_Buffer.scala 67:26]
      io.out_flow <= UInt<1>("h1") @[Activation_Buffer.scala 68:17]
    else :
      io.out_flow <= UInt<1>("h0") @[Activation_Buffer.scala 70:17]
    node _T_73 = neq(flow_ptr, UInt<1>("h0")) @[Activation_Buffer.scala 73:17]
    when _T_73 : @[Activation_Buffer.scala 73:26]
      node _T_74 = lt(UInt<1>("h0"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_75 = leq(flow_ptr, UInt<4>("h8")) @[Activation_Buffer.scala 75:43]
      node _T_76 = and(_T_74, _T_75) @[Activation_Buffer.scala 75:30]
      when _T_76 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_0_T = bits(read_ptr, 1, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_0_T_1 = add(UInt<1>("h0"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_0_T_2 = tail(_io_out_activate_0_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_0_T_3 = sub(_io_out_activate_0_T_2, UInt<1>("h1")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_0_T_4 = tail(_io_out_activate_0_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[0] <= buffer[_io_out_activate_0_T][_io_out_activate_0_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[0] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
      node _T_77 = lt(UInt<1>("h1"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_78 = leq(flow_ptr, UInt<4>("h9")) @[Activation_Buffer.scala 75:43]
      node _T_79 = and(_T_77, _T_78) @[Activation_Buffer.scala 75:30]
      when _T_79 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_1_T = bits(read_ptr, 1, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_1_T_1 = add(UInt<4>("h8"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_1_T_2 = tail(_io_out_activate_1_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_1_T_3 = sub(_io_out_activate_1_T_2, UInt<2>("h2")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_1_T_4 = tail(_io_out_activate_1_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[1] <= buffer[_io_out_activate_1_T][_io_out_activate_1_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[1] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
      node _T_80 = lt(UInt<2>("h2"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_81 = leq(flow_ptr, UInt<4>("ha")) @[Activation_Buffer.scala 75:43]
      node _T_82 = and(_T_80, _T_81) @[Activation_Buffer.scala 75:30]
      when _T_82 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_2_T = bits(read_ptr, 1, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_2_T_1 = add(UInt<5>("h10"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_2_T_2 = tail(_io_out_activate_2_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_2_T_3 = sub(_io_out_activate_2_T_2, UInt<2>("h3")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_2_T_4 = tail(_io_out_activate_2_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[2] <= buffer[_io_out_activate_2_T][_io_out_activate_2_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[2] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
      node _T_83 = lt(UInt<2>("h3"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_84 = leq(flow_ptr, UInt<4>("hb")) @[Activation_Buffer.scala 75:43]
      node _T_85 = and(_T_83, _T_84) @[Activation_Buffer.scala 75:30]
      when _T_85 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_3_T = bits(read_ptr, 1, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_3_T_1 = add(UInt<5>("h18"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_3_T_2 = tail(_io_out_activate_3_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_3_T_3 = sub(_io_out_activate_3_T_2, UInt<3>("h4")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_3_T_4 = tail(_io_out_activate_3_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[3] <= buffer[_io_out_activate_3_T][_io_out_activate_3_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[3] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
      node _T_86 = lt(UInt<3>("h4"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_87 = leq(flow_ptr, UInt<4>("hc")) @[Activation_Buffer.scala 75:43]
      node _T_88 = and(_T_86, _T_87) @[Activation_Buffer.scala 75:30]
      when _T_88 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_4_T = bits(read_ptr, 1, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_4_T_1 = add(UInt<6>("h20"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_4_T_2 = tail(_io_out_activate_4_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_4_T_3 = sub(_io_out_activate_4_T_2, UInt<3>("h5")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_4_T_4 = tail(_io_out_activate_4_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[4] <= buffer[_io_out_activate_4_T][_io_out_activate_4_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[4] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
      node _T_89 = lt(UInt<3>("h5"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_90 = leq(flow_ptr, UInt<4>("hd")) @[Activation_Buffer.scala 75:43]
      node _T_91 = and(_T_89, _T_90) @[Activation_Buffer.scala 75:30]
      when _T_91 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_5_T = bits(read_ptr, 1, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_5_T_1 = add(UInt<6>("h28"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_5_T_2 = tail(_io_out_activate_5_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_5_T_3 = sub(_io_out_activate_5_T_2, UInt<3>("h6")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_5_T_4 = tail(_io_out_activate_5_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[5] <= buffer[_io_out_activate_5_T][_io_out_activate_5_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[5] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
      node _T_92 = lt(UInt<3>("h6"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_93 = leq(flow_ptr, UInt<4>("he")) @[Activation_Buffer.scala 75:43]
      node _T_94 = and(_T_92, _T_93) @[Activation_Buffer.scala 75:30]
      when _T_94 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_6_T = bits(read_ptr, 1, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_6_T_1 = add(UInt<6>("h30"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_6_T_2 = tail(_io_out_activate_6_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_6_T_3 = sub(_io_out_activate_6_T_2, UInt<3>("h7")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_6_T_4 = tail(_io_out_activate_6_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[6] <= buffer[_io_out_activate_6_T][_io_out_activate_6_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[6] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
      node _T_95 = lt(UInt<3>("h7"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_96 = leq(flow_ptr, UInt<4>("hf")) @[Activation_Buffer.scala 75:43]
      node _T_97 = and(_T_95, _T_96) @[Activation_Buffer.scala 75:30]
      when _T_97 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_7_T = bits(read_ptr, 1, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_7_T_1 = add(UInt<6>("h38"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_7_T_2 = tail(_io_out_activate_7_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_7_T_3 = sub(_io_out_activate_7_T_2, UInt<4>("h8")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_7_T_4 = tail(_io_out_activate_7_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[7] <= buffer[_io_out_activate_7_T][_io_out_activate_7_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[7] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
    else :
      io.out_activate[0] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
      io.out_activate[1] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
      io.out_activate[2] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
      io.out_activate[3] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
      io.out_activate[4] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
      io.out_activate[5] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
      io.out_activate[6] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
      io.out_activate[7] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
    node _T_98 = eq(flow_ptr, UInt<5>("h16")) @[Activation_Buffer.scala 87:17]
    when _T_98 : @[Activation_Buffer.scala 87:43]
      node _read_ptr_T = add(read_ptr, UInt<1>("h1")) @[Activation_Buffer.scala 88:26]
      node _read_ptr_T_1 = tail(_read_ptr_T, 1) @[Activation_Buffer.scala 88:26]
      read_ptr <= _read_ptr_T_1 @[Activation_Buffer.scala 88:14]
    else :
      read_ptr <= read_ptr @[Activation_Buffer.scala 90:14]
    node _T_99 = eq(flow_ptr, UInt<5>("h16")) @[Activation_Buffer.scala 93:17]
    when _T_99 : @[Activation_Buffer.scala 93:43]
      io.isdone <= UInt<1>("h1") @[Activation_Buffer.scala 94:15]
    else :
      io.isdone <= UInt<1>("h0") @[Activation_Buffer.scala 96:15]

  module Weight_Buffer :
    input clock : Clock
    input reset : Reset
    output io : { flip wen : UInt<1>, flip ren : UInt<1>, flip in_weight_x : UInt<8>[64], out_weight : UInt<8>[8], out_shift : UInt<1>, isfull : UInt<1>, isempty : UInt<1>, isdone : UInt<1>}

    wire _buffer_WIRE : UInt<8>[64] @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[0] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[1] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[2] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[3] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[4] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[5] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[6] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[7] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[8] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[9] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[10] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[11] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[12] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[13] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[14] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[15] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[16] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[17] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[18] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[19] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[20] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[21] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[22] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[23] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[24] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[25] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[26] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[27] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[28] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[29] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[30] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[31] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[32] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[33] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[34] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[35] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[36] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[37] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[38] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[39] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[40] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[41] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[42] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[43] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[44] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[45] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[46] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[47] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[48] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[49] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[50] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[51] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[52] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[53] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[54] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[55] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[56] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[57] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[58] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[59] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[60] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[61] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[62] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE[63] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    wire _buffer_WIRE_1 : UInt<8>[64] @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[0] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[1] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[2] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[3] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[4] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[5] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[6] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[7] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[8] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[9] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[10] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[11] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[12] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[13] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[14] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[15] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[16] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[17] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[18] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[19] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[20] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[21] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[22] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[23] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[24] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[25] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[26] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[27] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[28] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[29] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[30] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[31] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[32] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[33] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[34] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[35] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[36] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[37] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[38] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[39] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[40] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[41] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[42] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[43] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[44] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[45] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[46] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[47] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[48] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[49] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[50] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[51] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[52] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[53] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[54] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[55] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[56] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[57] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[58] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[59] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[60] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[61] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[62] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_1[63] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    wire _buffer_WIRE_2 : UInt<8>[64] @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[0] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[1] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[2] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[3] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[4] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[5] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[6] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[7] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[8] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[9] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[10] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[11] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[12] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[13] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[14] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[15] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[16] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[17] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[18] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[19] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[20] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[21] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[22] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[23] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[24] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[25] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[26] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[27] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[28] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[29] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[30] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[31] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[32] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[33] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[34] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[35] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[36] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[37] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[38] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[39] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[40] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[41] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[42] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[43] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[44] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[45] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[46] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[47] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[48] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[49] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[50] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[51] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[52] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[53] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[54] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[55] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[56] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[57] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[58] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[59] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[60] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[61] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[62] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_2[63] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    wire _buffer_WIRE_3 : UInt<8>[64] @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[0] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[1] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[2] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[3] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[4] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[5] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[6] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[7] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[8] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[9] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[10] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[11] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[12] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[13] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[14] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[15] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[16] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[17] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[18] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[19] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[20] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[21] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[22] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[23] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[24] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[25] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[26] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[27] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[28] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[29] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[30] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[31] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[32] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[33] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[34] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[35] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[36] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[37] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[38] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[39] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[40] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[41] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[42] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[43] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[44] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[45] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[46] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[47] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[48] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[49] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[50] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[51] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[52] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[53] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[54] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[55] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[56] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[57] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[58] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[59] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[60] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[61] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[62] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    _buffer_WIRE_3[63] <= UInt<8>("h0") @[Weight_Buffer.scala 25:62]
    wire _buffer_WIRE_4 : UInt<8>[64][4] @[Weight_Buffer.scala 25:31]
    _buffer_WIRE_4[0] <= _buffer_WIRE @[Weight_Buffer.scala 25:31]
    _buffer_WIRE_4[1] <= _buffer_WIRE_1 @[Weight_Buffer.scala 25:31]
    _buffer_WIRE_4[2] <= _buffer_WIRE_2 @[Weight_Buffer.scala 25:31]
    _buffer_WIRE_4[3] <= _buffer_WIRE_3 @[Weight_Buffer.scala 25:31]
    reg buffer : UInt<8>[64][4], clock with :
      reset => (reset, _buffer_WIRE_4) @[Weight_Buffer.scala 25:23]
    reg read_ptr : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[Weight_Buffer.scala 28:25]
    reg write_ptr : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[Weight_Buffer.scala 29:26]
    wire full : UInt<1> @[Weight_Buffer.scala 30:18]
    wire empty : UInt<1> @[Weight_Buffer.scala 31:19]
    node _full_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 34:20]
    node _full_T_1 = bits(write_ptr, 1, 0) @[Weight_Buffer.scala 34:55]
    node _full_T_2 = eq(_full_T, _full_T_1) @[Weight_Buffer.scala 34:42]
    node _full_T_3 = bits(read_ptr, 2, 2) @[Weight_Buffer.scala 34:90]
    node _full_T_4 = bits(write_ptr, 2, 2) @[Weight_Buffer.scala 34:118]
    node _full_T_5 = neq(_full_T_3, _full_T_4) @[Weight_Buffer.scala 34:105]
    node _full_T_6 = and(_full_T_2, _full_T_5) @[Weight_Buffer.scala 34:78]
    full <= _full_T_6 @[Weight_Buffer.scala 34:8]
    node _empty_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 35:21]
    node _empty_T_1 = bits(write_ptr, 1, 0) @[Weight_Buffer.scala 35:56]
    node _empty_T_2 = eq(_empty_T, _empty_T_1) @[Weight_Buffer.scala 35:43]
    node _empty_T_3 = bits(read_ptr, 2, 2) @[Weight_Buffer.scala 35:91]
    node _empty_T_4 = bits(write_ptr, 2, 2) @[Weight_Buffer.scala 35:119]
    node _empty_T_5 = eq(_empty_T_3, _empty_T_4) @[Weight_Buffer.scala 35:106]
    node _empty_T_6 = and(_empty_T_2, _empty_T_5) @[Weight_Buffer.scala 35:79]
    empty <= _empty_T_6 @[Weight_Buffer.scala 35:9]
    io.isfull <= full @[Weight_Buffer.scala 36:13]
    io.isempty <= empty @[Weight_Buffer.scala 37:14]
    node _T = eq(full, UInt<1>("h0")) @[Weight_Buffer.scala 40:19]
    node _T_1 = and(io.wen, _T) @[Weight_Buffer.scala 40:15]
    when _T_1 : @[Weight_Buffer.scala 40:27]
      node _write_ptr_T = add(write_ptr, UInt<1>("h1")) @[Weight_Buffer.scala 41:28]
      node _write_ptr_T_1 = tail(_write_ptr_T, 1) @[Weight_Buffer.scala 41:28]
      write_ptr <= _write_ptr_T_1 @[Weight_Buffer.scala 41:15]
    else :
      write_ptr <= write_ptr @[Weight_Buffer.scala 43:15]
    node _T_2 = eq(full, UInt<1>("h0")) @[Weight_Buffer.scala 46:19]
    node _T_3 = and(io.wen, _T_2) @[Weight_Buffer.scala 46:15]
    when _T_3 : @[Weight_Buffer.scala 46:27]
      node _T_4 = bits(write_ptr, 1, 0) @[Weight_Buffer.scala 47:21]
      buffer[_T_4] <= io.in_weight_x @[Weight_Buffer.scala 47:44]
    reg shift_ptr : UInt<4>, clock with :
      reset => (reset, UInt<4>("h8")) @[Weight_Buffer.scala 51:26]
    node _T_5 = eq(empty, UInt<1>("h0")) @[Weight_Buffer.scala 53:19]
    node _T_6 = and(io.ren, _T_5) @[Weight_Buffer.scala 53:15]
    when _T_6 : @[Weight_Buffer.scala 53:28]
      node _shift_ptr_T = sub(shift_ptr, UInt<1>("h1")) @[Weight_Buffer.scala 54:28]
      node _shift_ptr_T_1 = tail(_shift_ptr_T, 1) @[Weight_Buffer.scala 54:28]
      shift_ptr <= _shift_ptr_T_1 @[Weight_Buffer.scala 54:15]
    else :
      node _T_7 = leq(UInt<1>("h1"), shift_ptr) @[Weight_Buffer.scala 55:19]
      node _T_8 = lt(shift_ptr, UInt<4>("h8")) @[Weight_Buffer.scala 55:47]
      node _T_9 = and(_T_7, _T_8) @[Weight_Buffer.scala 55:33]
      when _T_9 : @[Weight_Buffer.scala 55:61]
        node _shift_ptr_T_2 = sub(shift_ptr, UInt<1>("h1")) @[Weight_Buffer.scala 56:28]
        node _shift_ptr_T_3 = tail(_shift_ptr_T_2, 1) @[Weight_Buffer.scala 56:28]
        shift_ptr <= _shift_ptr_T_3 @[Weight_Buffer.scala 56:15]
      else :
        shift_ptr <= UInt<4>("h8") @[Weight_Buffer.scala 58:15]
    node _T_10 = neq(shift_ptr, UInt<4>("h8")) @[Weight_Buffer.scala 61:18]
    when _T_10 : @[Weight_Buffer.scala 61:34]
      io.out_shift <= UInt<1>("h1") @[Weight_Buffer.scala 62:18]
      node _io_out_weight_0_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_0_T_1 = mul(shift_ptr, UInt<4>("h8")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_0_T_2 = add(_io_out_weight_0_T_1, UInt<1>("h0")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_0_T_3 = tail(_io_out_weight_0_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_0_T_4 = bits(_io_out_weight_0_T_3, 5, 0)
      io.out_weight[0] <= buffer[_io_out_weight_0_T][_io_out_weight_0_T_4] @[Weight_Buffer.scala 64:24]
      node _io_out_weight_1_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_1_T_1 = mul(shift_ptr, UInt<4>("h8")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_1_T_2 = add(_io_out_weight_1_T_1, UInt<1>("h1")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_1_T_3 = tail(_io_out_weight_1_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_1_T_4 = bits(_io_out_weight_1_T_3, 5, 0)
      io.out_weight[1] <= buffer[_io_out_weight_1_T][_io_out_weight_1_T_4] @[Weight_Buffer.scala 64:24]
      node _io_out_weight_2_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_2_T_1 = mul(shift_ptr, UInt<4>("h8")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_2_T_2 = add(_io_out_weight_2_T_1, UInt<2>("h2")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_2_T_3 = tail(_io_out_weight_2_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_2_T_4 = bits(_io_out_weight_2_T_3, 5, 0)
      io.out_weight[2] <= buffer[_io_out_weight_2_T][_io_out_weight_2_T_4] @[Weight_Buffer.scala 64:24]
      node _io_out_weight_3_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_3_T_1 = mul(shift_ptr, UInt<4>("h8")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_3_T_2 = add(_io_out_weight_3_T_1, UInt<2>("h3")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_3_T_3 = tail(_io_out_weight_3_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_3_T_4 = bits(_io_out_weight_3_T_3, 5, 0)
      io.out_weight[3] <= buffer[_io_out_weight_3_T][_io_out_weight_3_T_4] @[Weight_Buffer.scala 64:24]
      node _io_out_weight_4_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_4_T_1 = mul(shift_ptr, UInt<4>("h8")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_4_T_2 = add(_io_out_weight_4_T_1, UInt<3>("h4")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_4_T_3 = tail(_io_out_weight_4_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_4_T_4 = bits(_io_out_weight_4_T_3, 5, 0)
      io.out_weight[4] <= buffer[_io_out_weight_4_T][_io_out_weight_4_T_4] @[Weight_Buffer.scala 64:24]
      node _io_out_weight_5_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_5_T_1 = mul(shift_ptr, UInt<4>("h8")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_5_T_2 = add(_io_out_weight_5_T_1, UInt<3>("h5")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_5_T_3 = tail(_io_out_weight_5_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_5_T_4 = bits(_io_out_weight_5_T_3, 5, 0)
      io.out_weight[5] <= buffer[_io_out_weight_5_T][_io_out_weight_5_T_4] @[Weight_Buffer.scala 64:24]
      node _io_out_weight_6_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_6_T_1 = mul(shift_ptr, UInt<4>("h8")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_6_T_2 = add(_io_out_weight_6_T_1, UInt<3>("h6")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_6_T_3 = tail(_io_out_weight_6_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_6_T_4 = bits(_io_out_weight_6_T_3, 5, 0)
      io.out_weight[6] <= buffer[_io_out_weight_6_T][_io_out_weight_6_T_4] @[Weight_Buffer.scala 64:24]
      node _io_out_weight_7_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_7_T_1 = mul(shift_ptr, UInt<4>("h8")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_7_T_2 = add(_io_out_weight_7_T_1, UInt<3>("h7")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_7_T_3 = tail(_io_out_weight_7_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_7_T_4 = bits(_io_out_weight_7_T_3, 5, 0)
      io.out_weight[7] <= buffer[_io_out_weight_7_T][_io_out_weight_7_T_4] @[Weight_Buffer.scala 64:24]
    else :
      io.out_shift <= UInt<1>("h0") @[Weight_Buffer.scala 67:18]
      io.out_weight[0] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
      io.out_weight[1] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
      io.out_weight[2] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
      io.out_weight[3] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
      io.out_weight[4] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
      io.out_weight[5] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
      io.out_weight[6] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
      io.out_weight[7] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
    node _T_11 = eq(shift_ptr, UInt<1>("h0")) @[Weight_Buffer.scala 73:18]
    when _T_11 : @[Weight_Buffer.scala 73:27]
      node _read_ptr_T = add(read_ptr, UInt<1>("h1")) @[Weight_Buffer.scala 74:26]
      node _read_ptr_T_1 = tail(_read_ptr_T, 1) @[Weight_Buffer.scala 74:26]
      read_ptr <= _read_ptr_T_1 @[Weight_Buffer.scala 74:14]
    else :
      read_ptr <= read_ptr @[Weight_Buffer.scala 76:14]
    node _T_12 = eq(shift_ptr, UInt<1>("h0")) @[Weight_Buffer.scala 79:18]
    when _T_12 : @[Weight_Buffer.scala 79:27]
      io.isdone <= UInt<1>("h1") @[Weight_Buffer.scala 80:15]
    else :
      io.isdone <= UInt<1>("h0") @[Weight_Buffer.scala 82:15]

  module basic_PE :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_24 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_25 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_26 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_27 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_28 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_29 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_30 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_31 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_32 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_33 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_34 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_35 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_36 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_37 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_38 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_39 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_40 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_41 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_42 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_43 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_44 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_45 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_46 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_47 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_48 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_49 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_50 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_51 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_52 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_53 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_54 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_55 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_56 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_57 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_58 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_59 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_60 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_61 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_62 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module basic_PE_63 :
    input clock : Clock
    input reset : Reset
    output io : { flip in_activate : UInt<8>, flip in_weight : UInt<8>, flip in_psum : UInt<16>, flip in_flow : UInt<1>, flip in_shift : UInt<1>, out_activate : UInt<8>, out_weight : UInt<8>, out_psum : UInt<16>}

    reg Activation_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[basic_PE.scala 19:25]
    when io.in_flow : @[basic_PE.scala 22:20]
      Activation_Reg <= io.in_activate @[basic_PE.scala 23:20]
    else :
      Activation_Reg <= Activation_Reg @[basic_PE.scala 25:20]
    when io.in_shift : @[basic_PE.scala 29:21]
      PSum_Reg <= UInt<1>("h0") @[basic_PE.scala 30:14]
    else :
      when io.in_flow : @[basic_PE.scala 31:26]
        PSum_Reg <= io.in_psum @[basic_PE.scala 32:14]
      else :
        PSum_Reg <= PSum_Reg @[basic_PE.scala 34:14]
    when io.in_shift : @[basic_PE.scala 38:21]
      Weight_Reg <= io.in_weight @[basic_PE.scala 39:16]
    else :
      Weight_Reg <= Weight_Reg @[basic_PE.scala 41:16]
    io.out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io.out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io.out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]

  module Systolic_Array :
    input clock : Clock
    input reset : Reset
    output io : { flip activate : UInt<8>[8], flip weight : UInt<8>[8], flip flow : UInt<1>, flip shift : UInt<1>, psum : UInt<16>[8], valid : UInt<1>[8]}

    inst PE_Array_0_0 of basic_PE @[Systolic_Array.scala 19:62]
    PE_Array_0_0.clock <= clock
    PE_Array_0_0.reset <= reset
    inst PE_Array_0_1 of basic_PE_1 @[Systolic_Array.scala 19:62]
    PE_Array_0_1.clock <= clock
    PE_Array_0_1.reset <= reset
    inst PE_Array_0_2 of basic_PE_2 @[Systolic_Array.scala 19:62]
    PE_Array_0_2.clock <= clock
    PE_Array_0_2.reset <= reset
    inst PE_Array_0_3 of basic_PE_3 @[Systolic_Array.scala 19:62]
    PE_Array_0_3.clock <= clock
    PE_Array_0_3.reset <= reset
    inst PE_Array_0_4 of basic_PE_4 @[Systolic_Array.scala 19:62]
    PE_Array_0_4.clock <= clock
    PE_Array_0_4.reset <= reset
    inst PE_Array_0_5 of basic_PE_5 @[Systolic_Array.scala 19:62]
    PE_Array_0_5.clock <= clock
    PE_Array_0_5.reset <= reset
    inst PE_Array_0_6 of basic_PE_6 @[Systolic_Array.scala 19:62]
    PE_Array_0_6.clock <= clock
    PE_Array_0_6.reset <= reset
    inst PE_Array_0_7 of basic_PE_7 @[Systolic_Array.scala 19:62]
    PE_Array_0_7.clock <= clock
    PE_Array_0_7.reset <= reset
    inst PE_Array_1_0 of basic_PE_8 @[Systolic_Array.scala 19:62]
    PE_Array_1_0.clock <= clock
    PE_Array_1_0.reset <= reset
    inst PE_Array_1_1 of basic_PE_9 @[Systolic_Array.scala 19:62]
    PE_Array_1_1.clock <= clock
    PE_Array_1_1.reset <= reset
    inst PE_Array_1_2 of basic_PE_10 @[Systolic_Array.scala 19:62]
    PE_Array_1_2.clock <= clock
    PE_Array_1_2.reset <= reset
    inst PE_Array_1_3 of basic_PE_11 @[Systolic_Array.scala 19:62]
    PE_Array_1_3.clock <= clock
    PE_Array_1_3.reset <= reset
    inst PE_Array_1_4 of basic_PE_12 @[Systolic_Array.scala 19:62]
    PE_Array_1_4.clock <= clock
    PE_Array_1_4.reset <= reset
    inst PE_Array_1_5 of basic_PE_13 @[Systolic_Array.scala 19:62]
    PE_Array_1_5.clock <= clock
    PE_Array_1_5.reset <= reset
    inst PE_Array_1_6 of basic_PE_14 @[Systolic_Array.scala 19:62]
    PE_Array_1_6.clock <= clock
    PE_Array_1_6.reset <= reset
    inst PE_Array_1_7 of basic_PE_15 @[Systolic_Array.scala 19:62]
    PE_Array_1_7.clock <= clock
    PE_Array_1_7.reset <= reset
    inst PE_Array_2_0 of basic_PE_16 @[Systolic_Array.scala 19:62]
    PE_Array_2_0.clock <= clock
    PE_Array_2_0.reset <= reset
    inst PE_Array_2_1 of basic_PE_17 @[Systolic_Array.scala 19:62]
    PE_Array_2_1.clock <= clock
    PE_Array_2_1.reset <= reset
    inst PE_Array_2_2 of basic_PE_18 @[Systolic_Array.scala 19:62]
    PE_Array_2_2.clock <= clock
    PE_Array_2_2.reset <= reset
    inst PE_Array_2_3 of basic_PE_19 @[Systolic_Array.scala 19:62]
    PE_Array_2_3.clock <= clock
    PE_Array_2_3.reset <= reset
    inst PE_Array_2_4 of basic_PE_20 @[Systolic_Array.scala 19:62]
    PE_Array_2_4.clock <= clock
    PE_Array_2_4.reset <= reset
    inst PE_Array_2_5 of basic_PE_21 @[Systolic_Array.scala 19:62]
    PE_Array_2_5.clock <= clock
    PE_Array_2_5.reset <= reset
    inst PE_Array_2_6 of basic_PE_22 @[Systolic_Array.scala 19:62]
    PE_Array_2_6.clock <= clock
    PE_Array_2_6.reset <= reset
    inst PE_Array_2_7 of basic_PE_23 @[Systolic_Array.scala 19:62]
    PE_Array_2_7.clock <= clock
    PE_Array_2_7.reset <= reset
    inst PE_Array_3_0 of basic_PE_24 @[Systolic_Array.scala 19:62]
    PE_Array_3_0.clock <= clock
    PE_Array_3_0.reset <= reset
    inst PE_Array_3_1 of basic_PE_25 @[Systolic_Array.scala 19:62]
    PE_Array_3_1.clock <= clock
    PE_Array_3_1.reset <= reset
    inst PE_Array_3_2 of basic_PE_26 @[Systolic_Array.scala 19:62]
    PE_Array_3_2.clock <= clock
    PE_Array_3_2.reset <= reset
    inst PE_Array_3_3 of basic_PE_27 @[Systolic_Array.scala 19:62]
    PE_Array_3_3.clock <= clock
    PE_Array_3_3.reset <= reset
    inst PE_Array_3_4 of basic_PE_28 @[Systolic_Array.scala 19:62]
    PE_Array_3_4.clock <= clock
    PE_Array_3_4.reset <= reset
    inst PE_Array_3_5 of basic_PE_29 @[Systolic_Array.scala 19:62]
    PE_Array_3_5.clock <= clock
    PE_Array_3_5.reset <= reset
    inst PE_Array_3_6 of basic_PE_30 @[Systolic_Array.scala 19:62]
    PE_Array_3_6.clock <= clock
    PE_Array_3_6.reset <= reset
    inst PE_Array_3_7 of basic_PE_31 @[Systolic_Array.scala 19:62]
    PE_Array_3_7.clock <= clock
    PE_Array_3_7.reset <= reset
    inst PE_Array_4_0 of basic_PE_32 @[Systolic_Array.scala 19:62]
    PE_Array_4_0.clock <= clock
    PE_Array_4_0.reset <= reset
    inst PE_Array_4_1 of basic_PE_33 @[Systolic_Array.scala 19:62]
    PE_Array_4_1.clock <= clock
    PE_Array_4_1.reset <= reset
    inst PE_Array_4_2 of basic_PE_34 @[Systolic_Array.scala 19:62]
    PE_Array_4_2.clock <= clock
    PE_Array_4_2.reset <= reset
    inst PE_Array_4_3 of basic_PE_35 @[Systolic_Array.scala 19:62]
    PE_Array_4_3.clock <= clock
    PE_Array_4_3.reset <= reset
    inst PE_Array_4_4 of basic_PE_36 @[Systolic_Array.scala 19:62]
    PE_Array_4_4.clock <= clock
    PE_Array_4_4.reset <= reset
    inst PE_Array_4_5 of basic_PE_37 @[Systolic_Array.scala 19:62]
    PE_Array_4_5.clock <= clock
    PE_Array_4_5.reset <= reset
    inst PE_Array_4_6 of basic_PE_38 @[Systolic_Array.scala 19:62]
    PE_Array_4_6.clock <= clock
    PE_Array_4_6.reset <= reset
    inst PE_Array_4_7 of basic_PE_39 @[Systolic_Array.scala 19:62]
    PE_Array_4_7.clock <= clock
    PE_Array_4_7.reset <= reset
    inst PE_Array_5_0 of basic_PE_40 @[Systolic_Array.scala 19:62]
    PE_Array_5_0.clock <= clock
    PE_Array_5_0.reset <= reset
    inst PE_Array_5_1 of basic_PE_41 @[Systolic_Array.scala 19:62]
    PE_Array_5_1.clock <= clock
    PE_Array_5_1.reset <= reset
    inst PE_Array_5_2 of basic_PE_42 @[Systolic_Array.scala 19:62]
    PE_Array_5_2.clock <= clock
    PE_Array_5_2.reset <= reset
    inst PE_Array_5_3 of basic_PE_43 @[Systolic_Array.scala 19:62]
    PE_Array_5_3.clock <= clock
    PE_Array_5_3.reset <= reset
    inst PE_Array_5_4 of basic_PE_44 @[Systolic_Array.scala 19:62]
    PE_Array_5_4.clock <= clock
    PE_Array_5_4.reset <= reset
    inst PE_Array_5_5 of basic_PE_45 @[Systolic_Array.scala 19:62]
    PE_Array_5_5.clock <= clock
    PE_Array_5_5.reset <= reset
    inst PE_Array_5_6 of basic_PE_46 @[Systolic_Array.scala 19:62]
    PE_Array_5_6.clock <= clock
    PE_Array_5_6.reset <= reset
    inst PE_Array_5_7 of basic_PE_47 @[Systolic_Array.scala 19:62]
    PE_Array_5_7.clock <= clock
    PE_Array_5_7.reset <= reset
    inst PE_Array_6_0 of basic_PE_48 @[Systolic_Array.scala 19:62]
    PE_Array_6_0.clock <= clock
    PE_Array_6_0.reset <= reset
    inst PE_Array_6_1 of basic_PE_49 @[Systolic_Array.scala 19:62]
    PE_Array_6_1.clock <= clock
    PE_Array_6_1.reset <= reset
    inst PE_Array_6_2 of basic_PE_50 @[Systolic_Array.scala 19:62]
    PE_Array_6_2.clock <= clock
    PE_Array_6_2.reset <= reset
    inst PE_Array_6_3 of basic_PE_51 @[Systolic_Array.scala 19:62]
    PE_Array_6_3.clock <= clock
    PE_Array_6_3.reset <= reset
    inst PE_Array_6_4 of basic_PE_52 @[Systolic_Array.scala 19:62]
    PE_Array_6_4.clock <= clock
    PE_Array_6_4.reset <= reset
    inst PE_Array_6_5 of basic_PE_53 @[Systolic_Array.scala 19:62]
    PE_Array_6_5.clock <= clock
    PE_Array_6_5.reset <= reset
    inst PE_Array_6_6 of basic_PE_54 @[Systolic_Array.scala 19:62]
    PE_Array_6_6.clock <= clock
    PE_Array_6_6.reset <= reset
    inst PE_Array_6_7 of basic_PE_55 @[Systolic_Array.scala 19:62]
    PE_Array_6_7.clock <= clock
    PE_Array_6_7.reset <= reset
    inst PE_Array_7_0 of basic_PE_56 @[Systolic_Array.scala 19:62]
    PE_Array_7_0.clock <= clock
    PE_Array_7_0.reset <= reset
    inst PE_Array_7_1 of basic_PE_57 @[Systolic_Array.scala 19:62]
    PE_Array_7_1.clock <= clock
    PE_Array_7_1.reset <= reset
    inst PE_Array_7_2 of basic_PE_58 @[Systolic_Array.scala 19:62]
    PE_Array_7_2.clock <= clock
    PE_Array_7_2.reset <= reset
    inst PE_Array_7_3 of basic_PE_59 @[Systolic_Array.scala 19:62]
    PE_Array_7_3.clock <= clock
    PE_Array_7_3.reset <= reset
    inst PE_Array_7_4 of basic_PE_60 @[Systolic_Array.scala 19:62]
    PE_Array_7_4.clock <= clock
    PE_Array_7_4.reset <= reset
    inst PE_Array_7_5 of basic_PE_61 @[Systolic_Array.scala 19:62]
    PE_Array_7_5.clock <= clock
    PE_Array_7_5.reset <= reset
    inst PE_Array_7_6 of basic_PE_62 @[Systolic_Array.scala 19:62]
    PE_Array_7_6.clock <= clock
    PE_Array_7_6.reset <= reset
    inst PE_Array_7_7 of basic_PE_63 @[Systolic_Array.scala 19:62]
    PE_Array_7_7.clock <= clock
    PE_Array_7_7.reset <= reset
    PE_Array_0_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_0.io.in_weight <= PE_Array_0_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_0.io.in_psum <= PE_Array_0_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_1.io.in_weight <= PE_Array_0_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_1.io.in_psum <= PE_Array_0_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_2.io.in_weight <= PE_Array_0_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_2.io.in_psum <= PE_Array_0_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_3.io.in_weight <= PE_Array_0_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_3.io.in_psum <= PE_Array_0_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_4.io.in_weight <= PE_Array_0_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_4.io.in_psum <= PE_Array_0_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_5.io.in_weight <= PE_Array_0_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_5.io.in_psum <= PE_Array_0_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_6.io.in_weight <= PE_Array_0_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_6.io.in_psum <= PE_Array_0_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_7.io.in_weight <= PE_Array_0_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_7.io.in_psum <= PE_Array_0_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_0.io.in_weight <= PE_Array_1_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_0.io.in_psum <= PE_Array_1_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_1.io.in_weight <= PE_Array_1_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_1.io.in_psum <= PE_Array_1_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_2.io.in_weight <= PE_Array_1_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_2.io.in_psum <= PE_Array_1_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_3.io.in_weight <= PE_Array_1_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_3.io.in_psum <= PE_Array_1_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_4.io.in_weight <= PE_Array_1_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_4.io.in_psum <= PE_Array_1_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_5.io.in_weight <= PE_Array_1_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_5.io.in_psum <= PE_Array_1_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_6.io.in_weight <= PE_Array_1_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_6.io.in_psum <= PE_Array_1_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_7.io.in_weight <= PE_Array_1_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_7.io.in_psum <= PE_Array_1_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_0.io.in_weight <= PE_Array_2_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_0.io.in_psum <= PE_Array_2_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_1.io.in_weight <= PE_Array_2_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_1.io.in_psum <= PE_Array_2_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_2.io.in_weight <= PE_Array_2_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_2.io.in_psum <= PE_Array_2_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_3.io.in_weight <= PE_Array_2_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_3.io.in_psum <= PE_Array_2_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_4.io.in_weight <= PE_Array_2_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_4.io.in_psum <= PE_Array_2_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_5.io.in_weight <= PE_Array_2_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_5.io.in_psum <= PE_Array_2_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_6.io.in_weight <= PE_Array_2_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_6.io.in_psum <= PE_Array_2_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_7.io.in_weight <= PE_Array_2_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_7.io.in_psum <= PE_Array_2_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_0.io.in_weight <= PE_Array_3_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_0.io.in_psum <= PE_Array_3_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_1.io.in_weight <= PE_Array_3_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_1.io.in_psum <= PE_Array_3_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_2.io.in_weight <= PE_Array_3_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_2.io.in_psum <= PE_Array_3_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_3.io.in_weight <= PE_Array_3_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_3.io.in_psum <= PE_Array_3_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_4.io.in_weight <= PE_Array_3_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_4.io.in_psum <= PE_Array_3_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_5.io.in_weight <= PE_Array_3_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_5.io.in_psum <= PE_Array_3_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_6.io.in_weight <= PE_Array_3_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_6.io.in_psum <= PE_Array_3_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_7.io.in_weight <= PE_Array_3_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_7.io.in_psum <= PE_Array_3_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_0.io.in_weight <= PE_Array_4_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_0.io.in_psum <= PE_Array_4_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_1.io.in_weight <= PE_Array_4_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_1.io.in_psum <= PE_Array_4_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_2.io.in_weight <= PE_Array_4_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_2.io.in_psum <= PE_Array_4_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_3.io.in_weight <= PE_Array_4_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_3.io.in_psum <= PE_Array_4_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_4.io.in_weight <= PE_Array_4_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_4.io.in_psum <= PE_Array_4_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_5.io.in_weight <= PE_Array_4_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_5.io.in_psum <= PE_Array_4_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_6.io.in_weight <= PE_Array_4_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_6.io.in_psum <= PE_Array_4_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_7.io.in_weight <= PE_Array_4_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_7.io.in_psum <= PE_Array_4_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_0.io.in_weight <= PE_Array_5_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_0.io.in_psum <= PE_Array_5_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_1.io.in_weight <= PE_Array_5_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_1.io.in_psum <= PE_Array_5_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_2.io.in_weight <= PE_Array_5_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_2.io.in_psum <= PE_Array_5_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_3.io.in_weight <= PE_Array_5_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_3.io.in_psum <= PE_Array_5_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_4.io.in_weight <= PE_Array_5_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_4.io.in_psum <= PE_Array_5_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_5.io.in_weight <= PE_Array_5_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_5.io.in_psum <= PE_Array_5_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_6.io.in_weight <= PE_Array_5_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_6.io.in_psum <= PE_Array_5_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_7.io.in_weight <= PE_Array_5_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_7.io.in_psum <= PE_Array_5_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_0.io.in_weight <= PE_Array_6_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_0.io.in_psum <= PE_Array_6_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_1.io.in_weight <= PE_Array_6_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_1.io.in_psum <= PE_Array_6_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_2.io.in_weight <= PE_Array_6_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_2.io.in_psum <= PE_Array_6_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_3.io.in_weight <= PE_Array_6_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_3.io.in_psum <= PE_Array_6_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_4.io.in_weight <= PE_Array_6_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_4.io.in_psum <= PE_Array_6_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_5.io.in_weight <= PE_Array_6_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_5.io.in_psum <= PE_Array_6_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_6.io.in_weight <= PE_Array_6_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_6.io.in_psum <= PE_Array_6_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_7.io.in_weight <= PE_Array_6_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_7.io.in_psum <= PE_Array_6_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_0_0.io.in_weight <= io.weight[0] @[DataPath.scala 20:23]
    PE_Array_0_0.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_1.io.in_weight <= io.weight[1] @[DataPath.scala 20:23]
    PE_Array_0_1.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_2.io.in_weight <= io.weight[2] @[DataPath.scala 20:23]
    PE_Array_0_2.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_3.io.in_weight <= io.weight[3] @[DataPath.scala 20:23]
    PE_Array_0_3.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_4.io.in_weight <= io.weight[4] @[DataPath.scala 20:23]
    PE_Array_0_4.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_5.io.in_weight <= io.weight[5] @[DataPath.scala 20:23]
    PE_Array_0_5.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_6.io.in_weight <= io.weight[6] @[DataPath.scala 20:23]
    PE_Array_0_6.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_7.io.in_weight <= io.weight[7] @[DataPath.scala 20:23]
    PE_Array_0_7.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    io.psum[0] <= PE_Array_7_0.io.out_psum @[DataPath.scala 24:10]
    io.psum[1] <= PE_Array_7_1.io.out_psum @[DataPath.scala 24:10]
    io.psum[2] <= PE_Array_7_2.io.out_psum @[DataPath.scala 24:10]
    io.psum[3] <= PE_Array_7_3.io.out_psum @[DataPath.scala 24:10]
    io.psum[4] <= PE_Array_7_4.io.out_psum @[DataPath.scala 24:10]
    io.psum[5] <= PE_Array_7_5.io.out_psum @[DataPath.scala 24:10]
    io.psum[6] <= PE_Array_7_6.io.out_psum @[DataPath.scala 24:10]
    io.psum[7] <= PE_Array_7_7.io.out_psum @[DataPath.scala 24:10]
    PE_Array_0_1.io.in_activate <= PE_Array_0_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_2.io.in_activate <= PE_Array_0_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_3.io.in_activate <= PE_Array_0_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_4.io.in_activate <= PE_Array_0_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_5.io.in_activate <= PE_Array_0_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_6.io.in_activate <= PE_Array_0_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_7.io.in_activate <= PE_Array_0_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_1.io.in_activate <= PE_Array_1_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_2.io.in_activate <= PE_Array_1_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_3.io.in_activate <= PE_Array_1_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_4.io.in_activate <= PE_Array_1_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_5.io.in_activate <= PE_Array_1_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_6.io.in_activate <= PE_Array_1_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_7.io.in_activate <= PE_Array_1_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_1.io.in_activate <= PE_Array_2_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_2.io.in_activate <= PE_Array_2_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_3.io.in_activate <= PE_Array_2_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_4.io.in_activate <= PE_Array_2_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_5.io.in_activate <= PE_Array_2_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_6.io.in_activate <= PE_Array_2_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_7.io.in_activate <= PE_Array_2_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_1.io.in_activate <= PE_Array_3_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_2.io.in_activate <= PE_Array_3_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_3.io.in_activate <= PE_Array_3_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_4.io.in_activate <= PE_Array_3_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_5.io.in_activate <= PE_Array_3_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_6.io.in_activate <= PE_Array_3_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_7.io.in_activate <= PE_Array_3_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_1.io.in_activate <= PE_Array_4_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_2.io.in_activate <= PE_Array_4_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_3.io.in_activate <= PE_Array_4_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_4.io.in_activate <= PE_Array_4_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_5.io.in_activate <= PE_Array_4_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_6.io.in_activate <= PE_Array_4_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_7.io.in_activate <= PE_Array_4_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_1.io.in_activate <= PE_Array_5_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_2.io.in_activate <= PE_Array_5_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_3.io.in_activate <= PE_Array_5_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_4.io.in_activate <= PE_Array_5_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_5.io.in_activate <= PE_Array_5_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_6.io.in_activate <= PE_Array_5_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_7.io.in_activate <= PE_Array_5_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_1.io.in_activate <= PE_Array_6_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_2.io.in_activate <= PE_Array_6_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_3.io.in_activate <= PE_Array_6_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_4.io.in_activate <= PE_Array_6_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_5.io.in_activate <= PE_Array_6_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_6.io.in_activate <= PE_Array_6_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_7.io.in_activate <= PE_Array_6_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_1.io.in_activate <= PE_Array_7_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_2.io.in_activate <= PE_Array_7_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_3.io.in_activate <= PE_Array_7_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_4.io.in_activate <= PE_Array_7_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_5.io.in_activate <= PE_Array_7_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_6.io.in_activate <= PE_Array_7_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_7.io.in_activate <= PE_Array_7_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_0.io.in_activate <= io.activate[0] @[DataPath.scala 11:26]
    PE_Array_1_0.io.in_activate <= io.activate[1] @[DataPath.scala 11:26]
    PE_Array_2_0.io.in_activate <= io.activate[2] @[DataPath.scala 11:26]
    PE_Array_3_0.io.in_activate <= io.activate[3] @[DataPath.scala 11:26]
    PE_Array_4_0.io.in_activate <= io.activate[4] @[DataPath.scala 11:26]
    PE_Array_5_0.io.in_activate <= io.activate[5] @[DataPath.scala 11:26]
    PE_Array_6_0.io.in_activate <= io.activate[6] @[DataPath.scala 11:26]
    PE_Array_7_0.io.in_activate <= io.activate[7] @[DataPath.scala 11:26]
    reg flow_counter : UInt<5>, clock with :
      reset => (reset, UInt<5>("h0")) @[Systolic_Array.scala 52:29]
    reg valid_reg : UInt<8>, clock with :
      reset => (reset, UInt<8>("h0")) @[Systolic_Array.scala 53:26]
    node _T = lt(flow_counter, UInt<5>("h16")) @[Systolic_Array.scala 56:33]
    node _T_1 = and(io.flow, _T) @[Systolic_Array.scala 56:16]
    when _T_1 : @[Systolic_Array.scala 56:58]
      node _flow_counter_T = add(flow_counter, UInt<1>("h1")) @[Systolic_Array.scala 57:34]
      node _flow_counter_T_1 = tail(_flow_counter_T, 1) @[Systolic_Array.scala 57:34]
      flow_counter <= _flow_counter_T_1 @[Systolic_Array.scala 57:18]
    else :
      node _T_2 = eq(flow_counter, UInt<5>("h16")) @[Systolic_Array.scala 58:27]
      when _T_2 : @[Systolic_Array.scala 58:53]
        flow_counter <= UInt<1>("h0") @[Systolic_Array.scala 59:18]
      else :
        flow_counter <= flow_counter @[Systolic_Array.scala 61:18]
    node _T_3 = leq(UInt<3>("h7"), flow_counter) @[Systolic_Array.scala 65:37]
    node _T_4 = and(io.flow, _T_3) @[Systolic_Array.scala 65:17]
    node _T_5 = lt(flow_counter, UInt<4>("hf")) @[Systolic_Array.scala 65:71]
    node _T_6 = and(_T_4, _T_5) @[Systolic_Array.scala 65:54]
    when _T_6 : @[Systolic_Array.scala 65:96]
      node _valid_reg_T = bits(valid_reg, 6, 0) @[Systolic_Array.scala 66:31]
      node _valid_reg_T_1 = cat(_valid_reg_T, UInt<1>("h1")) @[Cat.scala 33:92]
      valid_reg <= _valid_reg_T_1 @[Systolic_Array.scala 66:15]
    else :
      node _T_7 = geq(flow_counter, UInt<4>("hf")) @[Systolic_Array.scala 67:39]
      node _T_8 = and(io.flow, _T_7) @[Systolic_Array.scala 67:22]
      when _T_8 : @[Systolic_Array.scala 67:65]
        node _valid_reg_T_2 = bits(valid_reg, 6, 0) @[Systolic_Array.scala 68:31]
        node _valid_reg_T_3 = cat(_valid_reg_T_2, UInt<1>("h0")) @[Cat.scala 33:92]
        valid_reg <= _valid_reg_T_3 @[Systolic_Array.scala 68:15]
      else :
        valid_reg <= UInt<1>("h0") @[Systolic_Array.scala 70:15]
    node _T_9 = bits(valid_reg, 0, 0) @[Systolic_Array.scala 73:33]
    node _T_10 = bits(valid_reg, 1, 1) @[Systolic_Array.scala 73:33]
    node _T_11 = bits(valid_reg, 2, 2) @[Systolic_Array.scala 73:33]
    node _T_12 = bits(valid_reg, 3, 3) @[Systolic_Array.scala 73:33]
    node _T_13 = bits(valid_reg, 4, 4) @[Systolic_Array.scala 73:33]
    node _T_14 = bits(valid_reg, 5, 5) @[Systolic_Array.scala 73:33]
    node _T_15 = bits(valid_reg, 6, 6) @[Systolic_Array.scala 73:33]
    node _T_16 = bits(valid_reg, 7, 7) @[Systolic_Array.scala 73:33]
    wire _WIRE : UInt<1>[8] @[Systolic_Array.scala 73:22]
    _WIRE[0] <= _T_9 @[Systolic_Array.scala 73:22]
    _WIRE[1] <= _T_10 @[Systolic_Array.scala 73:22]
    _WIRE[2] <= _T_11 @[Systolic_Array.scala 73:22]
    _WIRE[3] <= _T_12 @[Systolic_Array.scala 73:22]
    _WIRE[4] <= _T_13 @[Systolic_Array.scala 73:22]
    _WIRE[5] <= _T_14 @[Systolic_Array.scala 73:22]
    _WIRE[6] <= _T_15 @[Systolic_Array.scala 73:22]
    _WIRE[7] <= _T_16 @[Systolic_Array.scala 73:22]
    io.valid <= _WIRE @[Systolic_Array.scala 73:12]

  module Accumulator_Array :
    input clock : Clock
    input reset : Reset
    output io : { flip in_psum : UInt<16>[8], flip in_valid : UInt<1>[8], flip in_acc : UInt<1>, flip in_compute_done : UInt<1>, isdone : UInt<1>, out_sum : UInt<32>[64], valid : UInt<1>}

    wire _Acc_Buffer_WIRE : UInt<16>[8] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[4] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[5] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[6] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[7] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_1 : UInt<16>[8] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[4] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[5] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[6] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[7] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_2 : UInt<16>[8] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[4] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[5] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[6] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[7] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_3 : UInt<16>[8] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[4] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[5] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[6] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[7] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_4 : UInt<16>[8] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_4[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_4[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_4[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_4[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_4[4] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_4[5] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_4[6] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_4[7] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_5 : UInt<16>[8] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_5[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_5[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_5[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_5[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_5[4] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_5[5] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_5[6] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_5[7] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_6 : UInt<16>[8] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_6[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_6[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_6[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_6[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_6[4] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_6[5] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_6[6] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_6[7] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_7 : UInt<16>[8] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_7[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_7[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_7[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_7[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_7[4] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_7[5] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_7[6] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_7[7] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_8 : UInt<16>[8][8] @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_8[0] <= _Acc_Buffer_WIRE @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_8[1] <= _Acc_Buffer_WIRE_1 @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_8[2] <= _Acc_Buffer_WIRE_2 @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_8[3] <= _Acc_Buffer_WIRE_3 @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_8[4] <= _Acc_Buffer_WIRE_4 @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_8[5] <= _Acc_Buffer_WIRE_5 @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_8[6] <= _Acc_Buffer_WIRE_6 @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_8[7] <= _Acc_Buffer_WIRE_7 @[Accumulator_Array.scala 20:35]
    reg Acc_Buffer : UInt<16>[8][8], clock with :
      reset => (reset, _Acc_Buffer_WIRE_8) @[Accumulator_Array.scala 20:27]
    wire _Acc_Result_WIRE : UInt<32>[8] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[4] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[5] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[6] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[7] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_1 : UInt<32>[8] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[4] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[5] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[6] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[7] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_2 : UInt<32>[8] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[4] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[5] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[6] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[7] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_3 : UInt<32>[8] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[4] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[5] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[6] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[7] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_4 : UInt<32>[8] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_4[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_4[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_4[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_4[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_4[4] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_4[5] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_4[6] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_4[7] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_5 : UInt<32>[8] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_5[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_5[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_5[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_5[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_5[4] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_5[5] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_5[6] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_5[7] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_6 : UInt<32>[8] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_6[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_6[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_6[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_6[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_6[4] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_6[5] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_6[6] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_6[7] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_7 : UInt<32>[8] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_7[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_7[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_7[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_7[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_7[4] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_7[5] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_7[6] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_7[7] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_8 : UInt<32>[8][8] @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_8[0] <= _Acc_Result_WIRE @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_8[1] <= _Acc_Result_WIRE_1 @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_8[2] <= _Acc_Result_WIRE_2 @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_8[3] <= _Acc_Result_WIRE_3 @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_8[4] <= _Acc_Result_WIRE_4 @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_8[5] <= _Acc_Result_WIRE_5 @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_8[6] <= _Acc_Result_WIRE_6 @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_8[7] <= _Acc_Result_WIRE_7 @[Accumulator_Array.scala 21:35]
    reg Acc_Result : UInt<32>[8][8], clock with :
      reset => (reset, _Acc_Result_WIRE_8) @[Accumulator_Array.scala 21:27]
    wire _valid_counter_WIRE : UInt<4>[8] @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[0] <= UInt<4>("h0") @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[1] <= UInt<4>("h0") @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[2] <= UInt<4>("h0") @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[3] <= UInt<4>("h0") @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[4] <= UInt<4>("h0") @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[5] <= UInt<4>("h0") @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[6] <= UInt<4>("h0") @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[7] <= UInt<4>("h0") @[Accumulator_Array.scala 22:38]
    reg valid_counter : UInt<4>[8], clock with :
      reset => (reset, _valid_counter_WIRE) @[Accumulator_Array.scala 22:30]
    when io.in_valid[0] : @[Accumulator_Array.scala 25:26]
      node _T = bits(valid_counter[0], 2, 0)
      Acc_Buffer[_T][0] <= io.in_psum[0] @[Accumulator_Array.scala 26:39]
    else :
      node _T_1 = bits(valid_counter[0], 2, 0)
      node _Acc_Buffer_0_T = bits(valid_counter[0], 2, 0)
      Acc_Buffer[_T_1][0] <= Acc_Buffer[_Acc_Buffer_0_T][0] @[Accumulator_Array.scala 28:39]
    when io.in_valid[1] : @[Accumulator_Array.scala 25:26]
      node _T_2 = bits(valid_counter[1], 2, 0)
      Acc_Buffer[_T_2][1] <= io.in_psum[1] @[Accumulator_Array.scala 26:39]
    else :
      node _T_3 = bits(valid_counter[1], 2, 0)
      node _Acc_Buffer_1_T = bits(valid_counter[1], 2, 0)
      Acc_Buffer[_T_3][1] <= Acc_Buffer[_Acc_Buffer_1_T][1] @[Accumulator_Array.scala 28:39]
    when io.in_valid[2] : @[Accumulator_Array.scala 25:26]
      node _T_4 = bits(valid_counter[2], 2, 0)
      Acc_Buffer[_T_4][2] <= io.in_psum[2] @[Accumulator_Array.scala 26:39]
    else :
      node _T_5 = bits(valid_counter[2], 2, 0)
      node _Acc_Buffer_2_T = bits(valid_counter[2], 2, 0)
      Acc_Buffer[_T_5][2] <= Acc_Buffer[_Acc_Buffer_2_T][2] @[Accumulator_Array.scala 28:39]
    when io.in_valid[3] : @[Accumulator_Array.scala 25:26]
      node _T_6 = bits(valid_counter[3], 2, 0)
      Acc_Buffer[_T_6][3] <= io.in_psum[3] @[Accumulator_Array.scala 26:39]
    else :
      node _T_7 = bits(valid_counter[3], 2, 0)
      node _Acc_Buffer_3_T = bits(valid_counter[3], 2, 0)
      Acc_Buffer[_T_7][3] <= Acc_Buffer[_Acc_Buffer_3_T][3] @[Accumulator_Array.scala 28:39]
    when io.in_valid[4] : @[Accumulator_Array.scala 25:26]
      node _T_8 = bits(valid_counter[4], 2, 0)
      Acc_Buffer[_T_8][4] <= io.in_psum[4] @[Accumulator_Array.scala 26:39]
    else :
      node _T_9 = bits(valid_counter[4], 2, 0)
      node _Acc_Buffer_4_T = bits(valid_counter[4], 2, 0)
      Acc_Buffer[_T_9][4] <= Acc_Buffer[_Acc_Buffer_4_T][4] @[Accumulator_Array.scala 28:39]
    when io.in_valid[5] : @[Accumulator_Array.scala 25:26]
      node _T_10 = bits(valid_counter[5], 2, 0)
      Acc_Buffer[_T_10][5] <= io.in_psum[5] @[Accumulator_Array.scala 26:39]
    else :
      node _T_11 = bits(valid_counter[5], 2, 0)
      node _Acc_Buffer_5_T = bits(valid_counter[5], 2, 0)
      Acc_Buffer[_T_11][5] <= Acc_Buffer[_Acc_Buffer_5_T][5] @[Accumulator_Array.scala 28:39]
    when io.in_valid[6] : @[Accumulator_Array.scala 25:26]
      node _T_12 = bits(valid_counter[6], 2, 0)
      Acc_Buffer[_T_12][6] <= io.in_psum[6] @[Accumulator_Array.scala 26:39]
    else :
      node _T_13 = bits(valid_counter[6], 2, 0)
      node _Acc_Buffer_6_T = bits(valid_counter[6], 2, 0)
      Acc_Buffer[_T_13][6] <= Acc_Buffer[_Acc_Buffer_6_T][6] @[Accumulator_Array.scala 28:39]
    when io.in_valid[7] : @[Accumulator_Array.scala 25:26]
      node _T_14 = bits(valid_counter[7], 2, 0)
      Acc_Buffer[_T_14][7] <= io.in_psum[7] @[Accumulator_Array.scala 26:39]
    else :
      node _T_15 = bits(valid_counter[7], 2, 0)
      node _Acc_Buffer_7_T = bits(valid_counter[7], 2, 0)
      Acc_Buffer[_T_15][7] <= Acc_Buffer[_Acc_Buffer_7_T][7] @[Accumulator_Array.scala 28:39]
    node _T_16 = lt(valid_counter[0], UInt<3>("h7")) @[Accumulator_Array.scala 34:46]
    node _T_17 = and(io.in_valid[0], _T_16) @[Accumulator_Array.scala 34:25]
    when _T_17 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_0_T = add(valid_counter[0], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_0_T_1 = tail(_valid_counter_0_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[0] <= _valid_counter_0_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_18 = eq(valid_counter[0], UInt<3>("h7")) @[Accumulator_Array.scala 36:33]
      when _T_18 : @[Accumulator_Array.scala 36:55]
        valid_counter[0] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[0] <= valid_counter[0] @[Accumulator_Array.scala 39:24]
    node _T_19 = lt(valid_counter[1], UInt<3>("h7")) @[Accumulator_Array.scala 34:46]
    node _T_20 = and(io.in_valid[1], _T_19) @[Accumulator_Array.scala 34:25]
    when _T_20 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_1_T = add(valid_counter[1], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_1_T_1 = tail(_valid_counter_1_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[1] <= _valid_counter_1_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_21 = eq(valid_counter[1], UInt<3>("h7")) @[Accumulator_Array.scala 36:33]
      when _T_21 : @[Accumulator_Array.scala 36:55]
        valid_counter[1] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[1] <= valid_counter[1] @[Accumulator_Array.scala 39:24]
    node _T_22 = lt(valid_counter[2], UInt<3>("h7")) @[Accumulator_Array.scala 34:46]
    node _T_23 = and(io.in_valid[2], _T_22) @[Accumulator_Array.scala 34:25]
    when _T_23 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_2_T = add(valid_counter[2], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_2_T_1 = tail(_valid_counter_2_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[2] <= _valid_counter_2_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_24 = eq(valid_counter[2], UInt<3>("h7")) @[Accumulator_Array.scala 36:33]
      when _T_24 : @[Accumulator_Array.scala 36:55]
        valid_counter[2] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[2] <= valid_counter[2] @[Accumulator_Array.scala 39:24]
    node _T_25 = lt(valid_counter[3], UInt<3>("h7")) @[Accumulator_Array.scala 34:46]
    node _T_26 = and(io.in_valid[3], _T_25) @[Accumulator_Array.scala 34:25]
    when _T_26 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_3_T = add(valid_counter[3], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_3_T_1 = tail(_valid_counter_3_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[3] <= _valid_counter_3_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_27 = eq(valid_counter[3], UInt<3>("h7")) @[Accumulator_Array.scala 36:33]
      when _T_27 : @[Accumulator_Array.scala 36:55]
        valid_counter[3] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[3] <= valid_counter[3] @[Accumulator_Array.scala 39:24]
    node _T_28 = lt(valid_counter[4], UInt<3>("h7")) @[Accumulator_Array.scala 34:46]
    node _T_29 = and(io.in_valid[4], _T_28) @[Accumulator_Array.scala 34:25]
    when _T_29 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_4_T = add(valid_counter[4], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_4_T_1 = tail(_valid_counter_4_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[4] <= _valid_counter_4_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_30 = eq(valid_counter[4], UInt<3>("h7")) @[Accumulator_Array.scala 36:33]
      when _T_30 : @[Accumulator_Array.scala 36:55]
        valid_counter[4] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[4] <= valid_counter[4] @[Accumulator_Array.scala 39:24]
    node _T_31 = lt(valid_counter[5], UInt<3>("h7")) @[Accumulator_Array.scala 34:46]
    node _T_32 = and(io.in_valid[5], _T_31) @[Accumulator_Array.scala 34:25]
    when _T_32 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_5_T = add(valid_counter[5], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_5_T_1 = tail(_valid_counter_5_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[5] <= _valid_counter_5_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_33 = eq(valid_counter[5], UInt<3>("h7")) @[Accumulator_Array.scala 36:33]
      when _T_33 : @[Accumulator_Array.scala 36:55]
        valid_counter[5] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[5] <= valid_counter[5] @[Accumulator_Array.scala 39:24]
    node _T_34 = lt(valid_counter[6], UInt<3>("h7")) @[Accumulator_Array.scala 34:46]
    node _T_35 = and(io.in_valid[6], _T_34) @[Accumulator_Array.scala 34:25]
    when _T_35 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_6_T = add(valid_counter[6], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_6_T_1 = tail(_valid_counter_6_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[6] <= _valid_counter_6_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_36 = eq(valid_counter[6], UInt<3>("h7")) @[Accumulator_Array.scala 36:33]
      when _T_36 : @[Accumulator_Array.scala 36:55]
        valid_counter[6] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[6] <= valid_counter[6] @[Accumulator_Array.scala 39:24]
    node _T_37 = lt(valid_counter[7], UInt<3>("h7")) @[Accumulator_Array.scala 34:46]
    node _T_38 = and(io.in_valid[7], _T_37) @[Accumulator_Array.scala 34:25]
    when _T_38 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_7_T = add(valid_counter[7], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_7_T_1 = tail(_valid_counter_7_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[7] <= _valid_counter_7_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_39 = eq(valid_counter[7], UInt<3>("h7")) @[Accumulator_Array.scala 36:33]
      when _T_39 : @[Accumulator_Array.scala 36:55]
        valid_counter[7] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[7] <= valid_counter[7] @[Accumulator_Array.scala 39:24]
    reg acc_counter : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Accumulator_Array.scala 43:28]
    node _T_40 = eq(acc_counter, UInt<1>("h0")) @[Accumulator_Array.scala 45:34]
    node _T_41 = and(io.in_acc, _T_40) @[Accumulator_Array.scala 45:18]
    when _T_41 : @[Accumulator_Array.scala 45:44]
      node _acc_counter_T = add(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 46:32]
      node _acc_counter_T_1 = tail(_acc_counter_T, 1) @[Accumulator_Array.scala 46:32]
      acc_counter <= _acc_counter_T_1 @[Accumulator_Array.scala 46:17]
    else :
      node _T_42 = eq(acc_counter, UInt<4>("h8")) @[Accumulator_Array.scala 47:26]
      when _T_42 : @[Accumulator_Array.scala 47:43]
        acc_counter <= UInt<1>("h0") @[Accumulator_Array.scala 48:17]
      else :
        node _T_43 = neq(acc_counter, UInt<1>("h0")) @[Accumulator_Array.scala 49:26]
        when _T_43 : @[Accumulator_Array.scala 49:35]
          node _acc_counter_T_2 = add(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 50:32]
          node _acc_counter_T_3 = tail(_acc_counter_T_2, 1) @[Accumulator_Array.scala 50:32]
          acc_counter <= _acc_counter_T_3 @[Accumulator_Array.scala 50:17]
        else :
          acc_counter <= acc_counter @[Accumulator_Array.scala 52:17]
    node _T_44 = neq(acc_counter, UInt<1>("h0")) @[Accumulator_Array.scala 55:20]
    when _T_44 : @[Accumulator_Array.scala 55:29]
      node _T_45 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_46 = tail(_T_45, 1) @[Accumulator_Array.scala 57:30]
      node _T_47 = bits(_T_46, 2, 0)
      node _Acc_Result_0_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_0_T_1 = tail(_Acc_Result_0_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_0_T_2 = bits(_Acc_Result_0_T_1, 2, 0)
      node _Acc_Result_0_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_0_T_4 = tail(_Acc_Result_0_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_0_T_5 = bits(_Acc_Result_0_T_4, 2, 0)
      node _Acc_Result_0_T_6 = add(Acc_Result[_Acc_Result_0_T_2][0], Acc_Buffer[_Acc_Result_0_T_5][0]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_0_T_7 = tail(_Acc_Result_0_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_47][0] <= _Acc_Result_0_T_7 @[Accumulator_Array.scala 57:40]
      node _T_48 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_49 = tail(_T_48, 1) @[Accumulator_Array.scala 57:30]
      node _T_50 = bits(_T_49, 2, 0)
      node _Acc_Result_1_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_1_T_1 = tail(_Acc_Result_1_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_1_T_2 = bits(_Acc_Result_1_T_1, 2, 0)
      node _Acc_Result_1_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_1_T_4 = tail(_Acc_Result_1_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_1_T_5 = bits(_Acc_Result_1_T_4, 2, 0)
      node _Acc_Result_1_T_6 = add(Acc_Result[_Acc_Result_1_T_2][1], Acc_Buffer[_Acc_Result_1_T_5][1]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_1_T_7 = tail(_Acc_Result_1_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_50][1] <= _Acc_Result_1_T_7 @[Accumulator_Array.scala 57:40]
      node _T_51 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_52 = tail(_T_51, 1) @[Accumulator_Array.scala 57:30]
      node _T_53 = bits(_T_52, 2, 0)
      node _Acc_Result_2_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_2_T_1 = tail(_Acc_Result_2_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_2_T_2 = bits(_Acc_Result_2_T_1, 2, 0)
      node _Acc_Result_2_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_2_T_4 = tail(_Acc_Result_2_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_2_T_5 = bits(_Acc_Result_2_T_4, 2, 0)
      node _Acc_Result_2_T_6 = add(Acc_Result[_Acc_Result_2_T_2][2], Acc_Buffer[_Acc_Result_2_T_5][2]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_2_T_7 = tail(_Acc_Result_2_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_53][2] <= _Acc_Result_2_T_7 @[Accumulator_Array.scala 57:40]
      node _T_54 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_55 = tail(_T_54, 1) @[Accumulator_Array.scala 57:30]
      node _T_56 = bits(_T_55, 2, 0)
      node _Acc_Result_3_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_3_T_1 = tail(_Acc_Result_3_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_3_T_2 = bits(_Acc_Result_3_T_1, 2, 0)
      node _Acc_Result_3_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_3_T_4 = tail(_Acc_Result_3_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_3_T_5 = bits(_Acc_Result_3_T_4, 2, 0)
      node _Acc_Result_3_T_6 = add(Acc_Result[_Acc_Result_3_T_2][3], Acc_Buffer[_Acc_Result_3_T_5][3]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_3_T_7 = tail(_Acc_Result_3_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_56][3] <= _Acc_Result_3_T_7 @[Accumulator_Array.scala 57:40]
      node _T_57 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_58 = tail(_T_57, 1) @[Accumulator_Array.scala 57:30]
      node _T_59 = bits(_T_58, 2, 0)
      node _Acc_Result_4_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_4_T_1 = tail(_Acc_Result_4_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_4_T_2 = bits(_Acc_Result_4_T_1, 2, 0)
      node _Acc_Result_4_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_4_T_4 = tail(_Acc_Result_4_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_4_T_5 = bits(_Acc_Result_4_T_4, 2, 0)
      node _Acc_Result_4_T_6 = add(Acc_Result[_Acc_Result_4_T_2][4], Acc_Buffer[_Acc_Result_4_T_5][4]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_4_T_7 = tail(_Acc_Result_4_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_59][4] <= _Acc_Result_4_T_7 @[Accumulator_Array.scala 57:40]
      node _T_60 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_61 = tail(_T_60, 1) @[Accumulator_Array.scala 57:30]
      node _T_62 = bits(_T_61, 2, 0)
      node _Acc_Result_5_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_5_T_1 = tail(_Acc_Result_5_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_5_T_2 = bits(_Acc_Result_5_T_1, 2, 0)
      node _Acc_Result_5_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_5_T_4 = tail(_Acc_Result_5_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_5_T_5 = bits(_Acc_Result_5_T_4, 2, 0)
      node _Acc_Result_5_T_6 = add(Acc_Result[_Acc_Result_5_T_2][5], Acc_Buffer[_Acc_Result_5_T_5][5]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_5_T_7 = tail(_Acc_Result_5_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_62][5] <= _Acc_Result_5_T_7 @[Accumulator_Array.scala 57:40]
      node _T_63 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_64 = tail(_T_63, 1) @[Accumulator_Array.scala 57:30]
      node _T_65 = bits(_T_64, 2, 0)
      node _Acc_Result_6_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_6_T_1 = tail(_Acc_Result_6_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_6_T_2 = bits(_Acc_Result_6_T_1, 2, 0)
      node _Acc_Result_6_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_6_T_4 = tail(_Acc_Result_6_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_6_T_5 = bits(_Acc_Result_6_T_4, 2, 0)
      node _Acc_Result_6_T_6 = add(Acc_Result[_Acc_Result_6_T_2][6], Acc_Buffer[_Acc_Result_6_T_5][6]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_6_T_7 = tail(_Acc_Result_6_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_65][6] <= _Acc_Result_6_T_7 @[Accumulator_Array.scala 57:40]
      node _T_66 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_67 = tail(_T_66, 1) @[Accumulator_Array.scala 57:30]
      node _T_68 = bits(_T_67, 2, 0)
      node _Acc_Result_7_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_7_T_1 = tail(_Acc_Result_7_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_7_T_2 = bits(_Acc_Result_7_T_1, 2, 0)
      node _Acc_Result_7_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_7_T_4 = tail(_Acc_Result_7_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_7_T_5 = bits(_Acc_Result_7_T_4, 2, 0)
      node _Acc_Result_7_T_6 = add(Acc_Result[_Acc_Result_7_T_2][7], Acc_Buffer[_Acc_Result_7_T_5][7]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_7_T_7 = tail(_Acc_Result_7_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_68][7] <= _Acc_Result_7_T_7 @[Accumulator_Array.scala 57:40]
    node _T_69 = eq(acc_counter, UInt<4>("h8")) @[Accumulator_Array.scala 61:20]
    when _T_69 : @[Accumulator_Array.scala 61:37]
      io.isdone <= UInt<1>("h1") @[Accumulator_Array.scala 62:15]
    else :
      io.isdone <= UInt<1>("h0") @[Accumulator_Array.scala 64:15]
    when io.in_compute_done : @[Accumulator_Array.scala 67:28]
      wire _WIRE : UInt<32>[64] @[Accumulator_Array.scala 68:26]
      _WIRE[0] <= Acc_Result[0][0] @[Accumulator_Array.scala 68:26]
      _WIRE[1] <= Acc_Result[0][1] @[Accumulator_Array.scala 68:26]
      _WIRE[2] <= Acc_Result[0][2] @[Accumulator_Array.scala 68:26]
      _WIRE[3] <= Acc_Result[0][3] @[Accumulator_Array.scala 68:26]
      _WIRE[4] <= Acc_Result[0][4] @[Accumulator_Array.scala 68:26]
      _WIRE[5] <= Acc_Result[0][5] @[Accumulator_Array.scala 68:26]
      _WIRE[6] <= Acc_Result[0][6] @[Accumulator_Array.scala 68:26]
      _WIRE[7] <= Acc_Result[0][7] @[Accumulator_Array.scala 68:26]
      _WIRE[8] <= Acc_Result[1][0] @[Accumulator_Array.scala 68:26]
      _WIRE[9] <= Acc_Result[1][1] @[Accumulator_Array.scala 68:26]
      _WIRE[10] <= Acc_Result[1][2] @[Accumulator_Array.scala 68:26]
      _WIRE[11] <= Acc_Result[1][3] @[Accumulator_Array.scala 68:26]
      _WIRE[12] <= Acc_Result[1][4] @[Accumulator_Array.scala 68:26]
      _WIRE[13] <= Acc_Result[1][5] @[Accumulator_Array.scala 68:26]
      _WIRE[14] <= Acc_Result[1][6] @[Accumulator_Array.scala 68:26]
      _WIRE[15] <= Acc_Result[1][7] @[Accumulator_Array.scala 68:26]
      _WIRE[16] <= Acc_Result[2][0] @[Accumulator_Array.scala 68:26]
      _WIRE[17] <= Acc_Result[2][1] @[Accumulator_Array.scala 68:26]
      _WIRE[18] <= Acc_Result[2][2] @[Accumulator_Array.scala 68:26]
      _WIRE[19] <= Acc_Result[2][3] @[Accumulator_Array.scala 68:26]
      _WIRE[20] <= Acc_Result[2][4] @[Accumulator_Array.scala 68:26]
      _WIRE[21] <= Acc_Result[2][5] @[Accumulator_Array.scala 68:26]
      _WIRE[22] <= Acc_Result[2][6] @[Accumulator_Array.scala 68:26]
      _WIRE[23] <= Acc_Result[2][7] @[Accumulator_Array.scala 68:26]
      _WIRE[24] <= Acc_Result[3][0] @[Accumulator_Array.scala 68:26]
      _WIRE[25] <= Acc_Result[3][1] @[Accumulator_Array.scala 68:26]
      _WIRE[26] <= Acc_Result[3][2] @[Accumulator_Array.scala 68:26]
      _WIRE[27] <= Acc_Result[3][3] @[Accumulator_Array.scala 68:26]
      _WIRE[28] <= Acc_Result[3][4] @[Accumulator_Array.scala 68:26]
      _WIRE[29] <= Acc_Result[3][5] @[Accumulator_Array.scala 68:26]
      _WIRE[30] <= Acc_Result[3][6] @[Accumulator_Array.scala 68:26]
      _WIRE[31] <= Acc_Result[3][7] @[Accumulator_Array.scala 68:26]
      _WIRE[32] <= Acc_Result[4][0] @[Accumulator_Array.scala 68:26]
      _WIRE[33] <= Acc_Result[4][1] @[Accumulator_Array.scala 68:26]
      _WIRE[34] <= Acc_Result[4][2] @[Accumulator_Array.scala 68:26]
      _WIRE[35] <= Acc_Result[4][3] @[Accumulator_Array.scala 68:26]
      _WIRE[36] <= Acc_Result[4][4] @[Accumulator_Array.scala 68:26]
      _WIRE[37] <= Acc_Result[4][5] @[Accumulator_Array.scala 68:26]
      _WIRE[38] <= Acc_Result[4][6] @[Accumulator_Array.scala 68:26]
      _WIRE[39] <= Acc_Result[4][7] @[Accumulator_Array.scala 68:26]
      _WIRE[40] <= Acc_Result[5][0] @[Accumulator_Array.scala 68:26]
      _WIRE[41] <= Acc_Result[5][1] @[Accumulator_Array.scala 68:26]
      _WIRE[42] <= Acc_Result[5][2] @[Accumulator_Array.scala 68:26]
      _WIRE[43] <= Acc_Result[5][3] @[Accumulator_Array.scala 68:26]
      _WIRE[44] <= Acc_Result[5][4] @[Accumulator_Array.scala 68:26]
      _WIRE[45] <= Acc_Result[5][5] @[Accumulator_Array.scala 68:26]
      _WIRE[46] <= Acc_Result[5][6] @[Accumulator_Array.scala 68:26]
      _WIRE[47] <= Acc_Result[5][7] @[Accumulator_Array.scala 68:26]
      _WIRE[48] <= Acc_Result[6][0] @[Accumulator_Array.scala 68:26]
      _WIRE[49] <= Acc_Result[6][1] @[Accumulator_Array.scala 68:26]
      _WIRE[50] <= Acc_Result[6][2] @[Accumulator_Array.scala 68:26]
      _WIRE[51] <= Acc_Result[6][3] @[Accumulator_Array.scala 68:26]
      _WIRE[52] <= Acc_Result[6][4] @[Accumulator_Array.scala 68:26]
      _WIRE[53] <= Acc_Result[6][5] @[Accumulator_Array.scala 68:26]
      _WIRE[54] <= Acc_Result[6][6] @[Accumulator_Array.scala 68:26]
      _WIRE[55] <= Acc_Result[6][7] @[Accumulator_Array.scala 68:26]
      _WIRE[56] <= Acc_Result[7][0] @[Accumulator_Array.scala 68:26]
      _WIRE[57] <= Acc_Result[7][1] @[Accumulator_Array.scala 68:26]
      _WIRE[58] <= Acc_Result[7][2] @[Accumulator_Array.scala 68:26]
      _WIRE[59] <= Acc_Result[7][3] @[Accumulator_Array.scala 68:26]
      _WIRE[60] <= Acc_Result[7][4] @[Accumulator_Array.scala 68:26]
      _WIRE[61] <= Acc_Result[7][5] @[Accumulator_Array.scala 68:26]
      _WIRE[62] <= Acc_Result[7][6] @[Accumulator_Array.scala 68:26]
      _WIRE[63] <= Acc_Result[7][7] @[Accumulator_Array.scala 68:26]
      io.out_sum <= _WIRE @[Accumulator_Array.scala 68:16]
      io.valid <= UInt<1>("h1") @[Accumulator_Array.scala 69:14]
    else :
      wire _WIRE_1 : UInt<32>[64] @[Accumulator_Array.scala 71:26]
      _WIRE_1[0] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[1] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[2] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[3] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[4] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[5] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[6] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[7] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[8] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[9] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[10] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[11] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[12] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[13] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[14] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[15] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[16] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[17] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[18] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[19] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[20] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[21] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[22] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[23] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[24] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[25] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[26] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[27] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[28] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[29] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[30] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[31] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[32] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[33] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[34] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[35] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[36] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[37] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[38] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[39] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[40] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[41] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[42] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[43] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[44] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[45] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[46] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[47] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[48] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[49] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[50] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[51] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[52] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[53] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[54] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[55] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[56] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[57] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[58] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[59] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[60] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[61] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[62] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      _WIRE_1[63] <= UInt<32>("h0") @[Accumulator_Array.scala 71:26]
      io.out_sum <= _WIRE_1 @[Accumulator_Array.scala 71:16]
      io.valid <= UInt<1>("h0") @[Accumulator_Array.scala 72:14]

  module Mini_TPU :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip Compute : UInt<1>, flip Data_x : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>[64]}, flip Weight_x : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>[64]}, Sum_x : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>[64]}}

    inst activation_buffer of Activation_Buffer @[Mini_TPU.scala 17:33]
    activation_buffer.clock <= clock
    activation_buffer.reset <= reset
    inst weight_buffer of Weight_Buffer @[Mini_TPU.scala 18:29]
    weight_buffer.clock <= clock
    weight_buffer.reset <= reset
    inst systolic_array of Systolic_Array @[Mini_TPU.scala 19:30]
    systolic_array.clock <= clock
    systolic_array.reset <= reset
    inst accumulation_array of Accumulator_Array @[Mini_TPU.scala 20:34]
    accumulation_array.clock <= clock
    accumulation_array.reset <= reset
    reg stateReg : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[Mini_TPU.scala 24:25]
    activation_buffer.io.ren <= UInt<1>("h0") @[Mini_TPU.scala 27:28]
    weight_buffer.io.ren <= UInt<1>("h0") @[Mini_TPU.scala 28:24]
    accumulation_array.io.in_acc <= UInt<1>("h0") @[Mini_TPU.scala 29:32]
    accumulation_array.io.in_compute_done <= UInt<1>("h0") @[Mini_TPU.scala 30:41]
    node _T = eq(UInt<3>("h0"), stateReg) @[Mini_TPU.scala 32:20]
    when _T : @[Mini_TPU.scala 32:20]
      accumulation_array.io.in_compute_done <= UInt<1>("h0") @[Mini_TPU.scala 34:45]
      node _T_1 = eq(activation_buffer.io.isempty, UInt<1>("h0")) @[Mini_TPU.scala 35:27]
      node _T_2 = and(io.Compute, _T_1) @[Mini_TPU.scala 35:23]
      node _T_3 = eq(weight_buffer.io.isempty, UInt<1>("h0")) @[Mini_TPU.scala 35:62]
      node _T_4 = and(_T_2, _T_3) @[Mini_TPU.scala 35:58]
      when _T_4 : @[Mini_TPU.scala 35:90]
        weight_buffer.io.ren <= UInt<1>("h1") @[Mini_TPU.scala 36:30]
        stateReg <= UInt<3>("h1") @[Mini_TPU.scala 37:18]
      else :
        stateReg <= UInt<3>("h0") @[Mini_TPU.scala 39:18]
    else :
      node _T_5 = eq(UInt<3>("h1"), stateReg) @[Mini_TPU.scala 32:20]
      when _T_5 : @[Mini_TPU.scala 32:20]
        weight_buffer.io.ren <= UInt<1>("h0") @[Mini_TPU.scala 43:28]
        when weight_buffer.io.isdone : @[Mini_TPU.scala 44:37]
          activation_buffer.io.ren <= UInt<1>("h1") @[Mini_TPU.scala 45:34]
          stateReg <= UInt<3>("h2") @[Mini_TPU.scala 46:18]
        else :
          stateReg <= UInt<3>("h1") @[Mini_TPU.scala 48:18]
      else :
        node _T_6 = eq(UInt<3>("h2"), stateReg) @[Mini_TPU.scala 32:20]
        when _T_6 : @[Mini_TPU.scala 32:20]
          activation_buffer.io.ren <= UInt<1>("h0") @[Mini_TPU.scala 52:32]
          when activation_buffer.io.isdone : @[Mini_TPU.scala 53:41]
            accumulation_array.io.in_acc <= UInt<1>("h1") @[Mini_TPU.scala 54:38]
            stateReg <= UInt<3>("h3") @[Mini_TPU.scala 55:18]
          else :
            stateReg <= UInt<3>("h2") @[Mini_TPU.scala 57:18]
        else :
          node _T_7 = eq(UInt<3>("h3"), stateReg) @[Mini_TPU.scala 32:20]
          when _T_7 : @[Mini_TPU.scala 32:20]
            accumulation_array.io.in_acc <= UInt<1>("h0") @[Mini_TPU.scala 61:36]
            when accumulation_array.io.isdone : @[Mini_TPU.scala 62:42]
              node _T_8 = eq(activation_buffer.io.isempty, UInt<1>("h0")) @[Mini_TPU.scala 63:15]
              node _T_9 = eq(weight_buffer.io.isempty, UInt<1>("h0")) @[Mini_TPU.scala 63:50]
              node _T_10 = and(_T_8, _T_9) @[Mini_TPU.scala 63:46]
              when _T_10 : @[Mini_TPU.scala 63:78]
                weight_buffer.io.ren <= UInt<1>("h1") @[Mini_TPU.scala 64:32]
                stateReg <= UInt<3>("h1") @[Mini_TPU.scala 65:20]
              else :
                stateReg <= UInt<3>("h4") @[Mini_TPU.scala 67:20]
            else :
              stateReg <= UInt<3>("h3") @[Mini_TPU.scala 70:18]
          else :
            node _T_11 = eq(UInt<3>("h4"), stateReg) @[Mini_TPU.scala 32:20]
            when _T_11 : @[Mini_TPU.scala 32:20]
              accumulation_array.io.in_compute_done <= UInt<1>("h1") @[Mini_TPU.scala 74:45]
              stateReg <= UInt<3>("h0") @[Mini_TPU.scala 75:16]
    node _io_Weight_x_ready_T = eq(weight_buffer.io.isfull, UInt<1>("h0")) @[Mini_TPU.scala 80:24]
    io.Weight_x.ready <= _io_Weight_x_ready_T @[Mini_TPU.scala 80:21]
    weight_buffer.io.wen <= io.Weight_x.valid @[Mini_TPU.scala 81:24]
    weight_buffer.io.in_weight_x[0] <= io.Weight_x.bits[0] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[1] <= io.Weight_x.bits[1] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[2] <= io.Weight_x.bits[2] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[3] <= io.Weight_x.bits[3] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[4] <= io.Weight_x.bits[4] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[5] <= io.Weight_x.bits[5] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[6] <= io.Weight_x.bits[6] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[7] <= io.Weight_x.bits[7] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[8] <= io.Weight_x.bits[8] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[9] <= io.Weight_x.bits[9] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[10] <= io.Weight_x.bits[10] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[11] <= io.Weight_x.bits[11] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[12] <= io.Weight_x.bits[12] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[13] <= io.Weight_x.bits[13] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[14] <= io.Weight_x.bits[14] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[15] <= io.Weight_x.bits[15] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[16] <= io.Weight_x.bits[16] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[17] <= io.Weight_x.bits[17] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[18] <= io.Weight_x.bits[18] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[19] <= io.Weight_x.bits[19] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[20] <= io.Weight_x.bits[20] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[21] <= io.Weight_x.bits[21] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[22] <= io.Weight_x.bits[22] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[23] <= io.Weight_x.bits[23] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[24] <= io.Weight_x.bits[24] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[25] <= io.Weight_x.bits[25] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[26] <= io.Weight_x.bits[26] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[27] <= io.Weight_x.bits[27] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[28] <= io.Weight_x.bits[28] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[29] <= io.Weight_x.bits[29] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[30] <= io.Weight_x.bits[30] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[31] <= io.Weight_x.bits[31] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[32] <= io.Weight_x.bits[32] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[33] <= io.Weight_x.bits[33] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[34] <= io.Weight_x.bits[34] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[35] <= io.Weight_x.bits[35] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[36] <= io.Weight_x.bits[36] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[37] <= io.Weight_x.bits[37] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[38] <= io.Weight_x.bits[38] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[39] <= io.Weight_x.bits[39] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[40] <= io.Weight_x.bits[40] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[41] <= io.Weight_x.bits[41] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[42] <= io.Weight_x.bits[42] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[43] <= io.Weight_x.bits[43] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[44] <= io.Weight_x.bits[44] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[45] <= io.Weight_x.bits[45] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[46] <= io.Weight_x.bits[46] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[47] <= io.Weight_x.bits[47] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[48] <= io.Weight_x.bits[48] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[49] <= io.Weight_x.bits[49] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[50] <= io.Weight_x.bits[50] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[51] <= io.Weight_x.bits[51] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[52] <= io.Weight_x.bits[52] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[53] <= io.Weight_x.bits[53] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[54] <= io.Weight_x.bits[54] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[55] <= io.Weight_x.bits[55] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[56] <= io.Weight_x.bits[56] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[57] <= io.Weight_x.bits[57] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[58] <= io.Weight_x.bits[58] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[59] <= io.Weight_x.bits[59] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[60] <= io.Weight_x.bits[60] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[61] <= io.Weight_x.bits[61] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[62] <= io.Weight_x.bits[62] @[Mini_TPU.scala 82:32]
    weight_buffer.io.in_weight_x[63] <= io.Weight_x.bits[63] @[Mini_TPU.scala 82:32]
    node _io_Data_x_ready_T = eq(activation_buffer.io.isfull, UInt<1>("h0")) @[Mini_TPU.scala 85:22]
    io.Data_x.ready <= _io_Data_x_ready_T @[Mini_TPU.scala 85:19]
    activation_buffer.io.wen <= io.Data_x.valid @[Mini_TPU.scala 86:28]
    activation_buffer.io.in_data_x[0] <= io.Data_x.bits[0] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[1] <= io.Data_x.bits[1] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[2] <= io.Data_x.bits[2] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[3] <= io.Data_x.bits[3] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[4] <= io.Data_x.bits[4] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[5] <= io.Data_x.bits[5] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[6] <= io.Data_x.bits[6] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[7] <= io.Data_x.bits[7] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[8] <= io.Data_x.bits[8] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[9] <= io.Data_x.bits[9] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[10] <= io.Data_x.bits[10] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[11] <= io.Data_x.bits[11] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[12] <= io.Data_x.bits[12] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[13] <= io.Data_x.bits[13] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[14] <= io.Data_x.bits[14] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[15] <= io.Data_x.bits[15] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[16] <= io.Data_x.bits[16] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[17] <= io.Data_x.bits[17] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[18] <= io.Data_x.bits[18] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[19] <= io.Data_x.bits[19] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[20] <= io.Data_x.bits[20] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[21] <= io.Data_x.bits[21] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[22] <= io.Data_x.bits[22] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[23] <= io.Data_x.bits[23] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[24] <= io.Data_x.bits[24] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[25] <= io.Data_x.bits[25] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[26] <= io.Data_x.bits[26] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[27] <= io.Data_x.bits[27] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[28] <= io.Data_x.bits[28] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[29] <= io.Data_x.bits[29] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[30] <= io.Data_x.bits[30] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[31] <= io.Data_x.bits[31] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[32] <= io.Data_x.bits[32] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[33] <= io.Data_x.bits[33] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[34] <= io.Data_x.bits[34] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[35] <= io.Data_x.bits[35] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[36] <= io.Data_x.bits[36] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[37] <= io.Data_x.bits[37] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[38] <= io.Data_x.bits[38] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[39] <= io.Data_x.bits[39] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[40] <= io.Data_x.bits[40] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[41] <= io.Data_x.bits[41] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[42] <= io.Data_x.bits[42] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[43] <= io.Data_x.bits[43] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[44] <= io.Data_x.bits[44] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[45] <= io.Data_x.bits[45] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[46] <= io.Data_x.bits[46] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[47] <= io.Data_x.bits[47] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[48] <= io.Data_x.bits[48] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[49] <= io.Data_x.bits[49] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[50] <= io.Data_x.bits[50] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[51] <= io.Data_x.bits[51] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[52] <= io.Data_x.bits[52] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[53] <= io.Data_x.bits[53] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[54] <= io.Data_x.bits[54] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[55] <= io.Data_x.bits[55] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[56] <= io.Data_x.bits[56] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[57] <= io.Data_x.bits[57] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[58] <= io.Data_x.bits[58] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[59] <= io.Data_x.bits[59] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[60] <= io.Data_x.bits[60] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[61] <= io.Data_x.bits[61] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[62] <= io.Data_x.bits[62] @[Mini_TPU.scala 87:34]
    activation_buffer.io.in_data_x[63] <= io.Data_x.bits[63] @[Mini_TPU.scala 87:34]
    io.Sum_x.valid <= accumulation_array.io.valid @[Mini_TPU.scala 90:18]
    node _T_12 = and(io.Sum_x.ready, io.Sum_x.valid) @[Decoupled.scala 52:35]
    when _T_12 : @[Mini_TPU.scala 91:24]
      io.Sum_x.bits <= accumulation_array.io.out_sum @[Mini_TPU.scala 92:19]
    else :
      wire _WIRE : UInt<1>[64] @[Mini_TPU.scala 94:29]
      _WIRE[0] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[1] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[2] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[3] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[4] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[5] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[6] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[7] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[8] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[9] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[10] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[11] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[12] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[13] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[14] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[15] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[16] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[17] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[18] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[19] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[20] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[21] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[22] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[23] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[24] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[25] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[26] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[27] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[28] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[29] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[30] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[31] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[32] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[33] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[34] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[35] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[36] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[37] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[38] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[39] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[40] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[41] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[42] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[43] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[44] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[45] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[46] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[47] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[48] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[49] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[50] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[51] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[52] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[53] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[54] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[55] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[56] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[57] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[58] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[59] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[60] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[61] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[62] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      _WIRE[63] <= UInt<1>("h0") @[Mini_TPU.scala 94:29]
      io.Sum_x.bits[0] <= _WIRE[0] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[1] <= _WIRE[1] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[2] <= _WIRE[2] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[3] <= _WIRE[3] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[4] <= _WIRE[4] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[5] <= _WIRE[5] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[6] <= _WIRE[6] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[7] <= _WIRE[7] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[8] <= _WIRE[8] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[9] <= _WIRE[9] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[10] <= _WIRE[10] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[11] <= _WIRE[11] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[12] <= _WIRE[12] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[13] <= _WIRE[13] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[14] <= _WIRE[14] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[15] <= _WIRE[15] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[16] <= _WIRE[16] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[17] <= _WIRE[17] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[18] <= _WIRE[18] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[19] <= _WIRE[19] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[20] <= _WIRE[20] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[21] <= _WIRE[21] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[22] <= _WIRE[22] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[23] <= _WIRE[23] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[24] <= _WIRE[24] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[25] <= _WIRE[25] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[26] <= _WIRE[26] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[27] <= _WIRE[27] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[28] <= _WIRE[28] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[29] <= _WIRE[29] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[30] <= _WIRE[30] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[31] <= _WIRE[31] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[32] <= _WIRE[32] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[33] <= _WIRE[33] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[34] <= _WIRE[34] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[35] <= _WIRE[35] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[36] <= _WIRE[36] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[37] <= _WIRE[37] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[38] <= _WIRE[38] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[39] <= _WIRE[39] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[40] <= _WIRE[40] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[41] <= _WIRE[41] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[42] <= _WIRE[42] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[43] <= _WIRE[43] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[44] <= _WIRE[44] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[45] <= _WIRE[45] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[46] <= _WIRE[46] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[47] <= _WIRE[47] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[48] <= _WIRE[48] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[49] <= _WIRE[49] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[50] <= _WIRE[50] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[51] <= _WIRE[51] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[52] <= _WIRE[52] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[53] <= _WIRE[53] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[54] <= _WIRE[54] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[55] <= _WIRE[55] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[56] <= _WIRE[56] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[57] <= _WIRE[57] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[58] <= _WIRE[58] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[59] <= _WIRE[59] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[60] <= _WIRE[60] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[61] <= _WIRE[61] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[62] <= _WIRE[62] @[Mini_TPU.scala 94:19]
      io.Sum_x.bits[63] <= _WIRE[63] @[Mini_TPU.scala 94:19]
    systolic_array.io.flow <= activation_buffer.io.out_flow @[Mini_TPU.scala 98:26]
    systolic_array.io.activate[0] <= activation_buffer.io.out_activate[0] @[Mini_TPU.scala 99:30]
    systolic_array.io.activate[1] <= activation_buffer.io.out_activate[1] @[Mini_TPU.scala 99:30]
    systolic_array.io.activate[2] <= activation_buffer.io.out_activate[2] @[Mini_TPU.scala 99:30]
    systolic_array.io.activate[3] <= activation_buffer.io.out_activate[3] @[Mini_TPU.scala 99:30]
    systolic_array.io.activate[4] <= activation_buffer.io.out_activate[4] @[Mini_TPU.scala 99:30]
    systolic_array.io.activate[5] <= activation_buffer.io.out_activate[5] @[Mini_TPU.scala 99:30]
    systolic_array.io.activate[6] <= activation_buffer.io.out_activate[6] @[Mini_TPU.scala 99:30]
    systolic_array.io.activate[7] <= activation_buffer.io.out_activate[7] @[Mini_TPU.scala 99:30]
    systolic_array.io.shift <= weight_buffer.io.out_shift @[Mini_TPU.scala 102:27]
    systolic_array.io.weight[0] <= weight_buffer.io.out_weight[0] @[Mini_TPU.scala 103:28]
    systolic_array.io.weight[1] <= weight_buffer.io.out_weight[1] @[Mini_TPU.scala 103:28]
    systolic_array.io.weight[2] <= weight_buffer.io.out_weight[2] @[Mini_TPU.scala 103:28]
    systolic_array.io.weight[3] <= weight_buffer.io.out_weight[3] @[Mini_TPU.scala 103:28]
    systolic_array.io.weight[4] <= weight_buffer.io.out_weight[4] @[Mini_TPU.scala 103:28]
    systolic_array.io.weight[5] <= weight_buffer.io.out_weight[5] @[Mini_TPU.scala 103:28]
    systolic_array.io.weight[6] <= weight_buffer.io.out_weight[6] @[Mini_TPU.scala 103:28]
    systolic_array.io.weight[7] <= weight_buffer.io.out_weight[7] @[Mini_TPU.scala 103:28]
    accumulation_array.io.in_valid[0] <= systolic_array.io.valid[0] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_valid[1] <= systolic_array.io.valid[1] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_valid[2] <= systolic_array.io.valid[2] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_valid[3] <= systolic_array.io.valid[3] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_valid[4] <= systolic_array.io.valid[4] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_valid[5] <= systolic_array.io.valid[5] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_valid[6] <= systolic_array.io.valid[6] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_valid[7] <= systolic_array.io.valid[7] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_psum[0] <= systolic_array.io.psum[0] @[Mini_TPU.scala 107:33]
    accumulation_array.io.in_psum[1] <= systolic_array.io.psum[1] @[Mini_TPU.scala 107:33]
    accumulation_array.io.in_psum[2] <= systolic_array.io.psum[2] @[Mini_TPU.scala 107:33]
    accumulation_array.io.in_psum[3] <= systolic_array.io.psum[3] @[Mini_TPU.scala 107:33]
    accumulation_array.io.in_psum[4] <= systolic_array.io.psum[4] @[Mini_TPU.scala 107:33]
    accumulation_array.io.in_psum[5] <= systolic_array.io.psum[5] @[Mini_TPU.scala 107:33]
    accumulation_array.io.in_psum[6] <= systolic_array.io.psum[6] @[Mini_TPU.scala 107:33]
    accumulation_array.io.in_psum[7] <= systolic_array.io.psum[7] @[Mini_TPU.scala 107:33]

