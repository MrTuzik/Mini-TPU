circuit Mini_TPU :
  module Activation_Buffer :
    input clock : Clock
    input reset : Reset
    output io : { flip wen : UInt<1>, flip ren : UInt<1>, flip in_data_x : UInt<8>[16], out_activate : UInt<8>[4], out_flow : UInt<1>, isfull : UInt<1>, isempty : UInt<1>, isdone : UInt<1>}

    wire _buffer_WIRE : UInt<8>[16] @[Activation_Buffer.scala 24:64]
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
    wire _buffer_WIRE_1 : UInt<8>[16] @[Activation_Buffer.scala 24:64]
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
    wire _buffer_WIRE_2 : UInt<8>[16] @[Activation_Buffer.scala 24:64]
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
    wire _buffer_WIRE_3 : UInt<8>[16] @[Activation_Buffer.scala 24:64]
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
    wire _buffer_WIRE_4 : UInt<8>[16] @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[0] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[1] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[2] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[3] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[4] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[5] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[6] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[7] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[8] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[9] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[10] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[11] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[12] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[13] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[14] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_4[15] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    wire _buffer_WIRE_5 : UInt<8>[16] @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[0] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[1] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[2] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[3] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[4] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[5] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[6] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[7] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[8] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[9] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[10] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[11] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[12] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[13] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[14] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_5[15] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    wire _buffer_WIRE_6 : UInt<8>[16] @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[0] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[1] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[2] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[3] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[4] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[5] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[6] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[7] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[8] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[9] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[10] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[11] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[12] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[13] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[14] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_6[15] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    wire _buffer_WIRE_7 : UInt<8>[16] @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[0] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[1] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[2] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[3] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[4] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[5] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[6] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[7] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[8] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[9] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[10] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[11] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[12] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[13] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[14] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    _buffer_WIRE_7[15] <= UInt<8>("h0") @[Activation_Buffer.scala 24:64]
    wire _buffer_WIRE_8 : UInt<8>[16][8] @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_8[0] <= _buffer_WIRE @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_8[1] <= _buffer_WIRE_1 @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_8[2] <= _buffer_WIRE_2 @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_8[3] <= _buffer_WIRE_3 @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_8[4] <= _buffer_WIRE_4 @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_8[5] <= _buffer_WIRE_5 @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_8[6] <= _buffer_WIRE_6 @[Activation_Buffer.scala 24:31]
    _buffer_WIRE_8[7] <= _buffer_WIRE_7 @[Activation_Buffer.scala 24:31]
    reg buffer : UInt<8>[16][8], clock with :
      reset => (reset, _buffer_WIRE_8) @[Activation_Buffer.scala 24:23]
    reg read_ptr : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Activation_Buffer.scala 27:25]
    reg write_ptr : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Activation_Buffer.scala 28:26]
    wire full : UInt<1> @[Activation_Buffer.scala 29:18]
    wire empty : UInt<1> @[Activation_Buffer.scala 30:19]
    node _full_T = bits(read_ptr, 2, 0) @[Activation_Buffer.scala 33:20]
    node _full_T_1 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 33:57]
    node _full_T_2 = eq(_full_T, _full_T_1) @[Activation_Buffer.scala 33:44]
    node _full_T_3 = bits(read_ptr, 3, 3) @[Activation_Buffer.scala 33:94]
    node _full_T_4 = bits(write_ptr, 3, 3) @[Activation_Buffer.scala 33:124]
    node _full_T_5 = neq(_full_T_3, _full_T_4) @[Activation_Buffer.scala 33:111]
    node _full_T_6 = and(_full_T_2, _full_T_5) @[Activation_Buffer.scala 33:82]
    full <= _full_T_6 @[Activation_Buffer.scala 33:8]
    node _empty_T = bits(read_ptr, 2, 0) @[Activation_Buffer.scala 34:21]
    node _empty_T_1 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 34:58]
    node _empty_T_2 = eq(_empty_T, _empty_T_1) @[Activation_Buffer.scala 34:45]
    node _empty_T_3 = bits(read_ptr, 3, 3) @[Activation_Buffer.scala 34:95]
    node _empty_T_4 = bits(write_ptr, 3, 3) @[Activation_Buffer.scala 34:125]
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
      node _T_4 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_4][0] <= io.in_data_x[0] @[Activation_Buffer.scala 49:68]
      node _T_5 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_5][1] <= io.in_data_x[4] @[Activation_Buffer.scala 49:68]
      node _T_6 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_6][2] <= io.in_data_x[8] @[Activation_Buffer.scala 49:68]
      node _T_7 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_7][3] <= io.in_data_x[12] @[Activation_Buffer.scala 49:68]
      node _T_8 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_8][4] <= io.in_data_x[1] @[Activation_Buffer.scala 49:68]
      node _T_9 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_9][5] <= io.in_data_x[5] @[Activation_Buffer.scala 49:68]
      node _T_10 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_10][6] <= io.in_data_x[9] @[Activation_Buffer.scala 49:68]
      node _T_11 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_11][7] <= io.in_data_x[13] @[Activation_Buffer.scala 49:68]
      node _T_12 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_12][8] <= io.in_data_x[2] @[Activation_Buffer.scala 49:68]
      node _T_13 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_13][9] <= io.in_data_x[6] @[Activation_Buffer.scala 49:68]
      node _T_14 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_14][10] <= io.in_data_x[10] @[Activation_Buffer.scala 49:68]
      node _T_15 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_15][11] <= io.in_data_x[14] @[Activation_Buffer.scala 49:68]
      node _T_16 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_16][12] <= io.in_data_x[3] @[Activation_Buffer.scala 49:68]
      node _T_17 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_17][13] <= io.in_data_x[7] @[Activation_Buffer.scala 49:68]
      node _T_18 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_18][14] <= io.in_data_x[11] @[Activation_Buffer.scala 49:68]
      node _T_19 = bits(write_ptr, 2, 0) @[Activation_Buffer.scala 49:25]
      buffer[_T_19][15] <= io.in_data_x[15] @[Activation_Buffer.scala 49:68]
    reg flow_ptr : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Activation_Buffer.scala 55:25]
    node _T_20 = eq(empty, UInt<1>("h0")) @[Activation_Buffer.scala 57:19]
    node _T_21 = and(io.ren, _T_20) @[Activation_Buffer.scala 57:15]
    when _T_21 : @[Activation_Buffer.scala 57:28]
      node _flow_ptr_T = add(flow_ptr, UInt<1>("h1")) @[Activation_Buffer.scala 58:26]
      node _flow_ptr_T_1 = tail(_flow_ptr_T, 1) @[Activation_Buffer.scala 58:26]
      flow_ptr <= _flow_ptr_T_1 @[Activation_Buffer.scala 58:14]
    else :
      node _T_22 = eq(flow_ptr, UInt<4>("ha")) @[Activation_Buffer.scala 59:23]
      when _T_22 : @[Activation_Buffer.scala 59:49]
        flow_ptr <= UInt<1>("h0") @[Activation_Buffer.scala 60:14]
      else :
        node _T_23 = neq(flow_ptr, UInt<1>("h0")) @[Activation_Buffer.scala 61:23]
        when _T_23 : @[Activation_Buffer.scala 61:32]
          node _flow_ptr_T_2 = add(flow_ptr, UInt<1>("h1")) @[Activation_Buffer.scala 62:26]
          node _flow_ptr_T_3 = tail(_flow_ptr_T_2, 1) @[Activation_Buffer.scala 62:26]
          flow_ptr <= _flow_ptr_T_3 @[Activation_Buffer.scala 62:14]
        else :
          flow_ptr <= UInt<1>("h0") @[Activation_Buffer.scala 64:14]
    node _T_24 = neq(flow_ptr, UInt<1>("h0")) @[Activation_Buffer.scala 67:17]
    when _T_24 : @[Activation_Buffer.scala 67:26]
      io.out_flow <= UInt<1>("h1") @[Activation_Buffer.scala 68:17]
    else :
      io.out_flow <= UInt<1>("h0") @[Activation_Buffer.scala 70:17]
    node _T_25 = neq(flow_ptr, UInt<1>("h0")) @[Activation_Buffer.scala 73:17]
    when _T_25 : @[Activation_Buffer.scala 73:26]
      node _T_26 = lt(UInt<1>("h0"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_27 = leq(flow_ptr, UInt<3>("h4")) @[Activation_Buffer.scala 75:43]
      node _T_28 = and(_T_26, _T_27) @[Activation_Buffer.scala 75:30]
      when _T_28 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_0_T = bits(read_ptr, 2, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_0_T_1 = add(UInt<1>("h0"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_0_T_2 = tail(_io_out_activate_0_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_0_T_3 = sub(_io_out_activate_0_T_2, UInt<1>("h1")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_0_T_4 = tail(_io_out_activate_0_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[0] <= buffer[_io_out_activate_0_T][_io_out_activate_0_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[0] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
      node _T_29 = lt(UInt<1>("h1"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_30 = leq(flow_ptr, UInt<3>("h5")) @[Activation_Buffer.scala 75:43]
      node _T_31 = and(_T_29, _T_30) @[Activation_Buffer.scala 75:30]
      when _T_31 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_1_T = bits(read_ptr, 2, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_1_T_1 = add(UInt<3>("h4"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_1_T_2 = tail(_io_out_activate_1_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_1_T_3 = sub(_io_out_activate_1_T_2, UInt<2>("h2")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_1_T_4 = tail(_io_out_activate_1_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[1] <= buffer[_io_out_activate_1_T][_io_out_activate_1_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[1] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
      node _T_32 = lt(UInt<2>("h2"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_33 = leq(flow_ptr, UInt<3>("h6")) @[Activation_Buffer.scala 75:43]
      node _T_34 = and(_T_32, _T_33) @[Activation_Buffer.scala 75:30]
      when _T_34 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_2_T = bits(read_ptr, 2, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_2_T_1 = add(UInt<4>("h8"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_2_T_2 = tail(_io_out_activate_2_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_2_T_3 = sub(_io_out_activate_2_T_2, UInt<2>("h3")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_2_T_4 = tail(_io_out_activate_2_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[2] <= buffer[_io_out_activate_2_T][_io_out_activate_2_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[2] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
      node _T_35 = lt(UInt<2>("h3"), flow_ptr) @[Activation_Buffer.scala 75:18]
      node _T_36 = leq(flow_ptr, UInt<3>("h7")) @[Activation_Buffer.scala 75:43]
      node _T_37 = and(_T_35, _T_36) @[Activation_Buffer.scala 75:30]
      when _T_37 : @[Activation_Buffer.scala 75:65]
        node _io_out_activate_3_T = bits(read_ptr, 2, 0) @[Activation_Buffer.scala 76:46]
        node _io_out_activate_3_T_1 = add(UInt<4>("hc"), flow_ptr) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_3_T_2 = tail(_io_out_activate_3_T_1, 1) @[Activation_Buffer.scala 76:88]
        node _io_out_activate_3_T_3 = sub(_io_out_activate_3_T_2, UInt<3>("h4")) @[Activation_Buffer.scala 76:99]
        node _io_out_activate_3_T_4 = tail(_io_out_activate_3_T_3, 1) @[Activation_Buffer.scala 76:99]
        io.out_activate[3] <= buffer[_io_out_activate_3_T][_io_out_activate_3_T_4] @[Activation_Buffer.scala 76:28]
      else :
        io.out_activate[3] <= UInt<1>("h0") @[Activation_Buffer.scala 78:28]
    else :
      io.out_activate[0] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
      io.out_activate[1] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
      io.out_activate[2] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
      io.out_activate[3] <= UInt<1>("h0") @[Activation_Buffer.scala 83:26]
    node _T_38 = eq(flow_ptr, UInt<4>("ha")) @[Activation_Buffer.scala 87:17]
    when _T_38 : @[Activation_Buffer.scala 87:43]
      node _read_ptr_T = add(read_ptr, UInt<1>("h1")) @[Activation_Buffer.scala 88:26]
      node _read_ptr_T_1 = tail(_read_ptr_T, 1) @[Activation_Buffer.scala 88:26]
      read_ptr <= _read_ptr_T_1 @[Activation_Buffer.scala 88:14]
    else :
      read_ptr <= read_ptr @[Activation_Buffer.scala 90:14]
    node _T_39 = eq(flow_ptr, UInt<4>("ha")) @[Activation_Buffer.scala 93:17]
    when _T_39 : @[Activation_Buffer.scala 93:43]
      io.isdone <= UInt<1>("h1") @[Activation_Buffer.scala 94:15]
    else :
      io.isdone <= UInt<1>("h0") @[Activation_Buffer.scala 96:15]

  module Weight_Buffer :
    input clock : Clock
    input reset : Reset
    output io : { flip wen : UInt<1>, flip ren : UInt<1>, flip in_weight_x : UInt<8>[16], out_weight : UInt<8>[4], out_shift : UInt<1>, isfull : UInt<1>, isempty : UInt<1>, isdone : UInt<1>}

    wire _buffer_WIRE : UInt<8>[16] @[Weight_Buffer.scala 25:62]
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
    wire _buffer_WIRE_1 : UInt<8>[16] @[Weight_Buffer.scala 25:62]
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
    wire _buffer_WIRE_2 : UInt<8>[16] @[Weight_Buffer.scala 25:62]
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
    wire _buffer_WIRE_3 : UInt<8>[16] @[Weight_Buffer.scala 25:62]
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
    wire _buffer_WIRE_4 : UInt<8>[16][4] @[Weight_Buffer.scala 25:31]
    _buffer_WIRE_4[0] <= _buffer_WIRE @[Weight_Buffer.scala 25:31]
    _buffer_WIRE_4[1] <= _buffer_WIRE_1 @[Weight_Buffer.scala 25:31]
    _buffer_WIRE_4[2] <= _buffer_WIRE_2 @[Weight_Buffer.scala 25:31]
    _buffer_WIRE_4[3] <= _buffer_WIRE_3 @[Weight_Buffer.scala 25:31]
    reg buffer : UInt<8>[16][4], clock with :
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
    reg shift_ptr : UInt<3>, clock with :
      reset => (reset, UInt<3>("h4")) @[Weight_Buffer.scala 51:26]
    node _T_5 = eq(empty, UInt<1>("h0")) @[Weight_Buffer.scala 53:19]
    node _T_6 = and(io.ren, _T_5) @[Weight_Buffer.scala 53:15]
    when _T_6 : @[Weight_Buffer.scala 53:28]
      node _shift_ptr_T = sub(shift_ptr, UInt<1>("h1")) @[Weight_Buffer.scala 54:28]
      node _shift_ptr_T_1 = tail(_shift_ptr_T, 1) @[Weight_Buffer.scala 54:28]
      shift_ptr <= _shift_ptr_T_1 @[Weight_Buffer.scala 54:15]
    else :
      node _T_7 = leq(UInt<1>("h1"), shift_ptr) @[Weight_Buffer.scala 55:19]
      node _T_8 = lt(shift_ptr, UInt<3>("h4")) @[Weight_Buffer.scala 55:47]
      node _T_9 = and(_T_7, _T_8) @[Weight_Buffer.scala 55:33]
      when _T_9 : @[Weight_Buffer.scala 55:61]
        node _shift_ptr_T_2 = sub(shift_ptr, UInt<1>("h1")) @[Weight_Buffer.scala 56:28]
        node _shift_ptr_T_3 = tail(_shift_ptr_T_2, 1) @[Weight_Buffer.scala 56:28]
        shift_ptr <= _shift_ptr_T_3 @[Weight_Buffer.scala 56:15]
      else :
        shift_ptr <= UInt<3>("h4") @[Weight_Buffer.scala 58:15]
    node _T_10 = neq(shift_ptr, UInt<3>("h4")) @[Weight_Buffer.scala 61:18]
    when _T_10 : @[Weight_Buffer.scala 61:34]
      io.out_shift <= UInt<1>("h1") @[Weight_Buffer.scala 62:18]
      node _io_out_weight_0_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_0_T_1 = mul(shift_ptr, UInt<3>("h4")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_0_T_2 = add(_io_out_weight_0_T_1, UInt<1>("h0")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_0_T_3 = tail(_io_out_weight_0_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_0_T_4 = bits(_io_out_weight_0_T_3, 3, 0)
      io.out_weight[0] <= buffer[_io_out_weight_0_T][_io_out_weight_0_T_4] @[Weight_Buffer.scala 64:24]
      node _io_out_weight_1_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_1_T_1 = mul(shift_ptr, UInt<3>("h4")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_1_T_2 = add(_io_out_weight_1_T_1, UInt<1>("h1")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_1_T_3 = tail(_io_out_weight_1_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_1_T_4 = bits(_io_out_weight_1_T_3, 3, 0)
      io.out_weight[1] <= buffer[_io_out_weight_1_T][_io_out_weight_1_T_4] @[Weight_Buffer.scala 64:24]
      node _io_out_weight_2_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_2_T_1 = mul(shift_ptr, UInt<3>("h4")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_2_T_2 = add(_io_out_weight_2_T_1, UInt<2>("h2")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_2_T_3 = tail(_io_out_weight_2_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_2_T_4 = bits(_io_out_weight_2_T_3, 3, 0)
      io.out_weight[2] <= buffer[_io_out_weight_2_T][_io_out_weight_2_T_4] @[Weight_Buffer.scala 64:24]
      node _io_out_weight_3_T = bits(read_ptr, 1, 0) @[Weight_Buffer.scala 64:42]
      node _io_out_weight_3_T_1 = mul(shift_ptr, UInt<3>("h4")) @[Weight_Buffer.scala 64:75]
      node _io_out_weight_3_T_2 = add(_io_out_weight_3_T_1, UInt<2>("h3")) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_3_T_3 = tail(_io_out_weight_3_T_2, 1) @[Weight_Buffer.scala 64:88]
      node _io_out_weight_3_T_4 = bits(_io_out_weight_3_T_3, 3, 0)
      io.out_weight[3] <= buffer[_io_out_weight_3_T][_io_out_weight_3_T_4] @[Weight_Buffer.scala 64:24]
    else :
      io.out_shift <= UInt<1>("h0") @[Weight_Buffer.scala 67:18]
      io.out_weight[0] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
      io.out_weight[1] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
      io.out_weight[2] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
      io.out_weight[3] <= UInt<1>("h0") @[Weight_Buffer.scala 69:24]
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

  module Systolic_Array :
    input clock : Clock
    input reset : Reset
    output io : { flip activate : UInt<8>[4], flip weight : UInt<8>[4], flip flow : UInt<1>, flip shift : UInt<1>, psum : UInt<16>[4], valid : UInt<1>[4]}

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
    inst PE_Array_1_0 of basic_PE_4 @[Systolic_Array.scala 19:62]
    PE_Array_1_0.clock <= clock
    PE_Array_1_0.reset <= reset
    inst PE_Array_1_1 of basic_PE_5 @[Systolic_Array.scala 19:62]
    PE_Array_1_1.clock <= clock
    PE_Array_1_1.reset <= reset
    inst PE_Array_1_2 of basic_PE_6 @[Systolic_Array.scala 19:62]
    PE_Array_1_2.clock <= clock
    PE_Array_1_2.reset <= reset
    inst PE_Array_1_3 of basic_PE_7 @[Systolic_Array.scala 19:62]
    PE_Array_1_3.clock <= clock
    PE_Array_1_3.reset <= reset
    inst PE_Array_2_0 of basic_PE_8 @[Systolic_Array.scala 19:62]
    PE_Array_2_0.clock <= clock
    PE_Array_2_0.reset <= reset
    inst PE_Array_2_1 of basic_PE_9 @[Systolic_Array.scala 19:62]
    PE_Array_2_1.clock <= clock
    PE_Array_2_1.reset <= reset
    inst PE_Array_2_2 of basic_PE_10 @[Systolic_Array.scala 19:62]
    PE_Array_2_2.clock <= clock
    PE_Array_2_2.reset <= reset
    inst PE_Array_2_3 of basic_PE_11 @[Systolic_Array.scala 19:62]
    PE_Array_2_3.clock <= clock
    PE_Array_2_3.reset <= reset
    inst PE_Array_3_0 of basic_PE_12 @[Systolic_Array.scala 19:62]
    PE_Array_3_0.clock <= clock
    PE_Array_3_0.reset <= reset
    inst PE_Array_3_1 of basic_PE_13 @[Systolic_Array.scala 19:62]
    PE_Array_3_1.clock <= clock
    PE_Array_3_1.reset <= reset
    inst PE_Array_3_2 of basic_PE_14 @[Systolic_Array.scala 19:62]
    PE_Array_3_2.clock <= clock
    PE_Array_3_2.reset <= reset
    inst PE_Array_3_3 of basic_PE_15 @[Systolic_Array.scala 19:62]
    PE_Array_3_3.clock <= clock
    PE_Array_3_3.reset <= reset
    PE_Array_0_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_0.io.in_weight <= PE_Array_0_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_0.io.in_psum <= PE_Array_0_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_1.io.in_weight <= PE_Array_0_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_1.io.in_psum <= PE_Array_0_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_2.io.in_weight <= PE_Array_0_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_2.io.in_psum <= PE_Array_0_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_3.io.in_weight <= PE_Array_0_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_3.io.in_psum <= PE_Array_0_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_0.io.in_weight <= PE_Array_1_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_0.io.in_psum <= PE_Array_1_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_1.io.in_weight <= PE_Array_1_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_1.io.in_psum <= PE_Array_1_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_2.io.in_weight <= PE_Array_1_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_2.io.in_psum <= PE_Array_1_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_3.io.in_weight <= PE_Array_1_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_3.io.in_psum <= PE_Array_1_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_0.io.in_weight <= PE_Array_2_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_0.io.in_psum <= PE_Array_2_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_1.io.in_weight <= PE_Array_2_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_1.io.in_psum <= PE_Array_2_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_2.io.in_weight <= PE_Array_2_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_2.io.in_psum <= PE_Array_2_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_3.io.in_weight <= PE_Array_2_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_3.io.in_psum <= PE_Array_2_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_0_0.io.in_weight <= io.weight[0] @[DataPath.scala 20:23]
    PE_Array_0_0.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_1.io.in_weight <= io.weight[1] @[DataPath.scala 20:23]
    PE_Array_0_1.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_2.io.in_weight <= io.weight[2] @[DataPath.scala 20:23]
    PE_Array_0_2.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_3.io.in_weight <= io.weight[3] @[DataPath.scala 20:23]
    PE_Array_0_3.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    io.psum[0] <= PE_Array_3_0.io.out_psum @[DataPath.scala 24:10]
    io.psum[1] <= PE_Array_3_1.io.out_psum @[DataPath.scala 24:10]
    io.psum[2] <= PE_Array_3_2.io.out_psum @[DataPath.scala 24:10]
    io.psum[3] <= PE_Array_3_3.io.out_psum @[DataPath.scala 24:10]
    PE_Array_0_1.io.in_activate <= PE_Array_0_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_2.io.in_activate <= PE_Array_0_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_3.io.in_activate <= PE_Array_0_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_1.io.in_activate <= PE_Array_1_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_2.io.in_activate <= PE_Array_1_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_3.io.in_activate <= PE_Array_1_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_1.io.in_activate <= PE_Array_2_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_2.io.in_activate <= PE_Array_2_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_3.io.in_activate <= PE_Array_2_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_1.io.in_activate <= PE_Array_3_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_2.io.in_activate <= PE_Array_3_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_3.io.in_activate <= PE_Array_3_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_0.io.in_activate <= io.activate[0] @[DataPath.scala 11:26]
    PE_Array_1_0.io.in_activate <= io.activate[1] @[DataPath.scala 11:26]
    PE_Array_2_0.io.in_activate <= io.activate[2] @[DataPath.scala 11:26]
    PE_Array_3_0.io.in_activate <= io.activate[3] @[DataPath.scala 11:26]
    reg flow_counter : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Systolic_Array.scala 52:29]
    reg valid_reg : UInt<4>, clock with :
      reset => (reset, UInt<4>("h0")) @[Systolic_Array.scala 53:26]
    node _T = lt(flow_counter, UInt<4>("ha")) @[Systolic_Array.scala 56:33]
    node _T_1 = and(io.flow, _T) @[Systolic_Array.scala 56:16]
    when _T_1 : @[Systolic_Array.scala 56:58]
      node _flow_counter_T = add(flow_counter, UInt<1>("h1")) @[Systolic_Array.scala 57:34]
      node _flow_counter_T_1 = tail(_flow_counter_T, 1) @[Systolic_Array.scala 57:34]
      flow_counter <= _flow_counter_T_1 @[Systolic_Array.scala 57:18]
    else :
      node _T_2 = eq(flow_counter, UInt<4>("ha")) @[Systolic_Array.scala 58:27]
      when _T_2 : @[Systolic_Array.scala 58:53]
        flow_counter <= UInt<1>("h0") @[Systolic_Array.scala 59:18]
      else :
        flow_counter <= flow_counter @[Systolic_Array.scala 61:18]
    node _T_3 = leq(UInt<2>("h3"), flow_counter) @[Systolic_Array.scala 65:37]
    node _T_4 = and(io.flow, _T_3) @[Systolic_Array.scala 65:17]
    node _T_5 = lt(flow_counter, UInt<3>("h7")) @[Systolic_Array.scala 65:71]
    node _T_6 = and(_T_4, _T_5) @[Systolic_Array.scala 65:54]
    when _T_6 : @[Systolic_Array.scala 65:96]
      node _valid_reg_T = bits(valid_reg, 2, 0) @[Systolic_Array.scala 66:31]
      node _valid_reg_T_1 = cat(_valid_reg_T, UInt<1>("h1")) @[Cat.scala 33:92]
      valid_reg <= _valid_reg_T_1 @[Systolic_Array.scala 66:15]
    else :
      node _T_7 = geq(flow_counter, UInt<3>("h7")) @[Systolic_Array.scala 67:39]
      node _T_8 = and(io.flow, _T_7) @[Systolic_Array.scala 67:22]
      when _T_8 : @[Systolic_Array.scala 67:65]
        node _valid_reg_T_2 = bits(valid_reg, 2, 0) @[Systolic_Array.scala 68:31]
        node _valid_reg_T_3 = cat(_valid_reg_T_2, UInt<1>("h0")) @[Cat.scala 33:92]
        valid_reg <= _valid_reg_T_3 @[Systolic_Array.scala 68:15]
      else :
        valid_reg <= UInt<1>("h0") @[Systolic_Array.scala 70:15]
    node _T_9 = bits(valid_reg, 0, 0) @[Systolic_Array.scala 73:33]
    node _T_10 = bits(valid_reg, 1, 1) @[Systolic_Array.scala 73:33]
    node _T_11 = bits(valid_reg, 2, 2) @[Systolic_Array.scala 73:33]
    node _T_12 = bits(valid_reg, 3, 3) @[Systolic_Array.scala 73:33]
    wire _WIRE : UInt<1>[4] @[Systolic_Array.scala 73:22]
    _WIRE[0] <= _T_9 @[Systolic_Array.scala 73:22]
    _WIRE[1] <= _T_10 @[Systolic_Array.scala 73:22]
    _WIRE[2] <= _T_11 @[Systolic_Array.scala 73:22]
    _WIRE[3] <= _T_12 @[Systolic_Array.scala 73:22]
    io.valid <= _WIRE @[Systolic_Array.scala 73:12]

  module Accumulator_Array :
    input clock : Clock
    input reset : Reset
    output io : { flip in_psum : UInt<16>[4], flip in_valid : UInt<1>[4], flip in_acc : UInt<1>, flip in_compute_done : UInt<1>, isdone : UInt<1>, out_sum : UInt<32>[16], valid : UInt<1>}

    wire _Acc_Buffer_WIRE : UInt<16>[4] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_1 : UInt<16>[4] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_1[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_2 : UInt<16>[4] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_2[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_3 : UInt<16>[4] @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[0] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[1] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[2] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    _Acc_Buffer_WIRE_3[3] <= UInt<16>("h0") @[Accumulator_Array.scala 20:62]
    wire _Acc_Buffer_WIRE_4 : UInt<16>[4][4] @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_4[0] <= _Acc_Buffer_WIRE @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_4[1] <= _Acc_Buffer_WIRE_1 @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_4[2] <= _Acc_Buffer_WIRE_2 @[Accumulator_Array.scala 20:35]
    _Acc_Buffer_WIRE_4[3] <= _Acc_Buffer_WIRE_3 @[Accumulator_Array.scala 20:35]
    reg Acc_Buffer : UInt<16>[4][4], clock with :
      reset => (reset, _Acc_Buffer_WIRE_4) @[Accumulator_Array.scala 20:27]
    wire _Acc_Result_WIRE : UInt<32>[4] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_1 : UInt<32>[4] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_1[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_2 : UInt<32>[4] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_2[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_3 : UInt<32>[4] @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[0] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[1] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[2] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    _Acc_Result_WIRE_3[3] <= UInt<32>("h0") @[Accumulator_Array.scala 21:62]
    wire _Acc_Result_WIRE_4 : UInt<32>[4][4] @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_4[0] <= _Acc_Result_WIRE @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_4[1] <= _Acc_Result_WIRE_1 @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_4[2] <= _Acc_Result_WIRE_2 @[Accumulator_Array.scala 21:35]
    _Acc_Result_WIRE_4[3] <= _Acc_Result_WIRE_3 @[Accumulator_Array.scala 21:35]
    reg Acc_Result : UInt<32>[4][4], clock with :
      reset => (reset, _Acc_Result_WIRE_4) @[Accumulator_Array.scala 21:27]
    wire _valid_counter_WIRE : UInt<3>[4] @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[0] <= UInt<3>("h0") @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[1] <= UInt<3>("h0") @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[2] <= UInt<3>("h0") @[Accumulator_Array.scala 22:38]
    _valid_counter_WIRE[3] <= UInt<3>("h0") @[Accumulator_Array.scala 22:38]
    reg valid_counter : UInt<3>[4], clock with :
      reset => (reset, _valid_counter_WIRE) @[Accumulator_Array.scala 22:30]
    when io.in_valid[0] : @[Accumulator_Array.scala 25:26]
      node _T = bits(valid_counter[0], 1, 0)
      Acc_Buffer[_T][0] <= io.in_psum[0] @[Accumulator_Array.scala 26:39]
    else :
      node _T_1 = bits(valid_counter[0], 1, 0)
      node _Acc_Buffer_0_T = bits(valid_counter[0], 1, 0)
      Acc_Buffer[_T_1][0] <= Acc_Buffer[_Acc_Buffer_0_T][0] @[Accumulator_Array.scala 28:39]
    when io.in_valid[1] : @[Accumulator_Array.scala 25:26]
      node _T_2 = bits(valid_counter[1], 1, 0)
      Acc_Buffer[_T_2][1] <= io.in_psum[1] @[Accumulator_Array.scala 26:39]
    else :
      node _T_3 = bits(valid_counter[1], 1, 0)
      node _Acc_Buffer_1_T = bits(valid_counter[1], 1, 0)
      Acc_Buffer[_T_3][1] <= Acc_Buffer[_Acc_Buffer_1_T][1] @[Accumulator_Array.scala 28:39]
    when io.in_valid[2] : @[Accumulator_Array.scala 25:26]
      node _T_4 = bits(valid_counter[2], 1, 0)
      Acc_Buffer[_T_4][2] <= io.in_psum[2] @[Accumulator_Array.scala 26:39]
    else :
      node _T_5 = bits(valid_counter[2], 1, 0)
      node _Acc_Buffer_2_T = bits(valid_counter[2], 1, 0)
      Acc_Buffer[_T_5][2] <= Acc_Buffer[_Acc_Buffer_2_T][2] @[Accumulator_Array.scala 28:39]
    when io.in_valid[3] : @[Accumulator_Array.scala 25:26]
      node _T_6 = bits(valid_counter[3], 1, 0)
      Acc_Buffer[_T_6][3] <= io.in_psum[3] @[Accumulator_Array.scala 26:39]
    else :
      node _T_7 = bits(valid_counter[3], 1, 0)
      node _Acc_Buffer_3_T = bits(valid_counter[3], 1, 0)
      Acc_Buffer[_T_7][3] <= Acc_Buffer[_Acc_Buffer_3_T][3] @[Accumulator_Array.scala 28:39]
    node _T_8 = lt(valid_counter[0], UInt<2>("h3")) @[Accumulator_Array.scala 34:46]
    node _T_9 = and(io.in_valid[0], _T_8) @[Accumulator_Array.scala 34:25]
    when _T_9 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_0_T = add(valid_counter[0], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_0_T_1 = tail(_valid_counter_0_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[0] <= _valid_counter_0_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_10 = eq(valid_counter[0], UInt<2>("h3")) @[Accumulator_Array.scala 36:33]
      when _T_10 : @[Accumulator_Array.scala 36:55]
        valid_counter[0] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[0] <= valid_counter[0] @[Accumulator_Array.scala 39:24]
    node _T_11 = lt(valid_counter[1], UInt<2>("h3")) @[Accumulator_Array.scala 34:46]
    node _T_12 = and(io.in_valid[1], _T_11) @[Accumulator_Array.scala 34:25]
    when _T_12 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_1_T = add(valid_counter[1], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_1_T_1 = tail(_valid_counter_1_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[1] <= _valid_counter_1_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_13 = eq(valid_counter[1], UInt<2>("h3")) @[Accumulator_Array.scala 36:33]
      when _T_13 : @[Accumulator_Array.scala 36:55]
        valid_counter[1] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[1] <= valid_counter[1] @[Accumulator_Array.scala 39:24]
    node _T_14 = lt(valid_counter[2], UInt<2>("h3")) @[Accumulator_Array.scala 34:46]
    node _T_15 = and(io.in_valid[2], _T_14) @[Accumulator_Array.scala 34:25]
    when _T_15 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_2_T = add(valid_counter[2], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_2_T_1 = tail(_valid_counter_2_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[2] <= _valid_counter_2_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_16 = eq(valid_counter[2], UInt<2>("h3")) @[Accumulator_Array.scala 36:33]
      when _T_16 : @[Accumulator_Array.scala 36:55]
        valid_counter[2] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[2] <= valid_counter[2] @[Accumulator_Array.scala 39:24]
    node _T_17 = lt(valid_counter[3], UInt<2>("h3")) @[Accumulator_Array.scala 34:46]
    node _T_18 = and(io.in_valid[3], _T_17) @[Accumulator_Array.scala 34:25]
    when _T_18 : @[Accumulator_Array.scala 34:67]
      node _valid_counter_3_T = add(valid_counter[3], UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
      node _valid_counter_3_T_1 = tail(_valid_counter_3_T, 1) @[Accumulator_Array.scala 35:44]
      valid_counter[3] <= _valid_counter_3_T_1 @[Accumulator_Array.scala 35:24]
    else :
      node _T_19 = eq(valid_counter[3], UInt<2>("h3")) @[Accumulator_Array.scala 36:33]
      when _T_19 : @[Accumulator_Array.scala 36:55]
        valid_counter[3] <= UInt<1>("h0") @[Accumulator_Array.scala 37:24]
      else :
        valid_counter[3] <= valid_counter[3] @[Accumulator_Array.scala 39:24]
    reg acc_counter : UInt<3>, clock with :
      reset => (reset, UInt<3>("h0")) @[Accumulator_Array.scala 43:28]
    node _T_20 = eq(acc_counter, UInt<1>("h0")) @[Accumulator_Array.scala 45:34]
    node _T_21 = and(io.in_acc, _T_20) @[Accumulator_Array.scala 45:18]
    when _T_21 : @[Accumulator_Array.scala 45:44]
      node _acc_counter_T = add(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 46:32]
      node _acc_counter_T_1 = tail(_acc_counter_T, 1) @[Accumulator_Array.scala 46:32]
      acc_counter <= _acc_counter_T_1 @[Accumulator_Array.scala 46:17]
    else :
      node _T_22 = eq(acc_counter, UInt<3>("h4")) @[Accumulator_Array.scala 47:26]
      when _T_22 : @[Accumulator_Array.scala 47:43]
        acc_counter <= UInt<1>("h0") @[Accumulator_Array.scala 48:17]
      else :
        node _T_23 = neq(acc_counter, UInt<1>("h0")) @[Accumulator_Array.scala 49:26]
        when _T_23 : @[Accumulator_Array.scala 49:35]
          node _acc_counter_T_2 = add(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 50:32]
          node _acc_counter_T_3 = tail(_acc_counter_T_2, 1) @[Accumulator_Array.scala 50:32]
          acc_counter <= _acc_counter_T_3 @[Accumulator_Array.scala 50:17]
        else :
          acc_counter <= acc_counter @[Accumulator_Array.scala 52:17]
    node _T_24 = neq(acc_counter, UInt<1>("h0")) @[Accumulator_Array.scala 55:20]
    when _T_24 : @[Accumulator_Array.scala 55:29]
      node _T_25 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_26 = tail(_T_25, 1) @[Accumulator_Array.scala 57:30]
      node _T_27 = bits(_T_26, 1, 0)
      node _Acc_Result_0_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_0_T_1 = tail(_Acc_Result_0_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_0_T_2 = bits(_Acc_Result_0_T_1, 1, 0)
      node _Acc_Result_0_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_0_T_4 = tail(_Acc_Result_0_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_0_T_5 = bits(_Acc_Result_0_T_4, 1, 0)
      node _Acc_Result_0_T_6 = add(Acc_Result[_Acc_Result_0_T_2][0], Acc_Buffer[_Acc_Result_0_T_5][0]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_0_T_7 = tail(_Acc_Result_0_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_27][0] <= _Acc_Result_0_T_7 @[Accumulator_Array.scala 57:40]
      node _T_28 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_29 = tail(_T_28, 1) @[Accumulator_Array.scala 57:30]
      node _T_30 = bits(_T_29, 1, 0)
      node _Acc_Result_1_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_1_T_1 = tail(_Acc_Result_1_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_1_T_2 = bits(_Acc_Result_1_T_1, 1, 0)
      node _Acc_Result_1_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_1_T_4 = tail(_Acc_Result_1_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_1_T_5 = bits(_Acc_Result_1_T_4, 1, 0)
      node _Acc_Result_1_T_6 = add(Acc_Result[_Acc_Result_1_T_2][1], Acc_Buffer[_Acc_Result_1_T_5][1]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_1_T_7 = tail(_Acc_Result_1_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_30][1] <= _Acc_Result_1_T_7 @[Accumulator_Array.scala 57:40]
      node _T_31 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_32 = tail(_T_31, 1) @[Accumulator_Array.scala 57:30]
      node _T_33 = bits(_T_32, 1, 0)
      node _Acc_Result_2_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_2_T_1 = tail(_Acc_Result_2_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_2_T_2 = bits(_Acc_Result_2_T_1, 1, 0)
      node _Acc_Result_2_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_2_T_4 = tail(_Acc_Result_2_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_2_T_5 = bits(_Acc_Result_2_T_4, 1, 0)
      node _Acc_Result_2_T_6 = add(Acc_Result[_Acc_Result_2_T_2][2], Acc_Buffer[_Acc_Result_2_T_5][2]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_2_T_7 = tail(_Acc_Result_2_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_33][2] <= _Acc_Result_2_T_7 @[Accumulator_Array.scala 57:40]
      node _T_34 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
      node _T_35 = tail(_T_34, 1) @[Accumulator_Array.scala 57:30]
      node _T_36 = bits(_T_35, 1, 0)
      node _Acc_Result_3_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_3_T_1 = tail(_Acc_Result_3_T, 1) @[Accumulator_Array.scala 57:66]
      node _Acc_Result_3_T_2 = bits(_Acc_Result_3_T_1, 1, 0)
      node _Acc_Result_3_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_3_T_4 = tail(_Acc_Result_3_T_3, 1) @[Accumulator_Array.scala 57:101]
      node _Acc_Result_3_T_5 = bits(_Acc_Result_3_T_4, 1, 0)
      node _Acc_Result_3_T_6 = add(Acc_Result[_Acc_Result_3_T_2][3], Acc_Buffer[_Acc_Result_3_T_5][3]) @[Accumulator_Array.scala 57:76]
      node _Acc_Result_3_T_7 = tail(_Acc_Result_3_T_6, 1) @[Accumulator_Array.scala 57:76]
      Acc_Result[_T_36][3] <= _Acc_Result_3_T_7 @[Accumulator_Array.scala 57:40]
    node _T_37 = eq(acc_counter, UInt<3>("h4")) @[Accumulator_Array.scala 61:20]
    when _T_37 : @[Accumulator_Array.scala 61:37]
      io.isdone <= UInt<1>("h1") @[Accumulator_Array.scala 62:15]
    else :
      io.isdone <= UInt<1>("h0") @[Accumulator_Array.scala 64:15]
    when io.in_compute_done : @[Accumulator_Array.scala 67:28]
      wire _WIRE : UInt<32>[16] @[Accumulator_Array.scala 68:26]
      _WIRE[0] <= Acc_Result[0][0] @[Accumulator_Array.scala 68:26]
      _WIRE[1] <= Acc_Result[0][1] @[Accumulator_Array.scala 68:26]
      _WIRE[2] <= Acc_Result[0][2] @[Accumulator_Array.scala 68:26]
      _WIRE[3] <= Acc_Result[0][3] @[Accumulator_Array.scala 68:26]
      _WIRE[4] <= Acc_Result[1][0] @[Accumulator_Array.scala 68:26]
      _WIRE[5] <= Acc_Result[1][1] @[Accumulator_Array.scala 68:26]
      _WIRE[6] <= Acc_Result[1][2] @[Accumulator_Array.scala 68:26]
      _WIRE[7] <= Acc_Result[1][3] @[Accumulator_Array.scala 68:26]
      _WIRE[8] <= Acc_Result[2][0] @[Accumulator_Array.scala 68:26]
      _WIRE[9] <= Acc_Result[2][1] @[Accumulator_Array.scala 68:26]
      _WIRE[10] <= Acc_Result[2][2] @[Accumulator_Array.scala 68:26]
      _WIRE[11] <= Acc_Result[2][3] @[Accumulator_Array.scala 68:26]
      _WIRE[12] <= Acc_Result[3][0] @[Accumulator_Array.scala 68:26]
      _WIRE[13] <= Acc_Result[3][1] @[Accumulator_Array.scala 68:26]
      _WIRE[14] <= Acc_Result[3][2] @[Accumulator_Array.scala 68:26]
      _WIRE[15] <= Acc_Result[3][3] @[Accumulator_Array.scala 68:26]
      io.out_sum <= _WIRE @[Accumulator_Array.scala 68:16]
      io.valid <= UInt<1>("h1") @[Accumulator_Array.scala 69:14]
    else :
      wire _WIRE_1 : UInt<32>[16] @[Accumulator_Array.scala 71:26]
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
      io.out_sum <= _WIRE_1 @[Accumulator_Array.scala 71:16]
      io.valid <= UInt<1>("h0") @[Accumulator_Array.scala 72:14]

  module Mini_TPU :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip Compute : UInt<1>, flip Data_x : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>[16]}, flip Weight_x : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<8>[16]}, Sum_x : { flip ready : UInt<1>, valid : UInt<1>, bits : UInt<32>[16]}}

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
    io.Sum_x.valid <= accumulation_array.io.valid @[Mini_TPU.scala 90:18]
    node _T_12 = and(io.Sum_x.ready, io.Sum_x.valid) @[Decoupled.scala 52:35]
    when _T_12 : @[Mini_TPU.scala 91:24]
      io.Sum_x.bits <= accumulation_array.io.out_sum @[Mini_TPU.scala 92:19]
    else :
      wire _WIRE : UInt<1>[16] @[Mini_TPU.scala 94:29]
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
    systolic_array.io.flow <= activation_buffer.io.out_flow @[Mini_TPU.scala 98:26]
    systolic_array.io.activate[0] <= activation_buffer.io.out_activate[0] @[Mini_TPU.scala 99:30]
    systolic_array.io.activate[1] <= activation_buffer.io.out_activate[1] @[Mini_TPU.scala 99:30]
    systolic_array.io.activate[2] <= activation_buffer.io.out_activate[2] @[Mini_TPU.scala 99:30]
    systolic_array.io.activate[3] <= activation_buffer.io.out_activate[3] @[Mini_TPU.scala 99:30]
    systolic_array.io.shift <= weight_buffer.io.out_shift @[Mini_TPU.scala 102:27]
    systolic_array.io.weight[0] <= weight_buffer.io.out_weight[0] @[Mini_TPU.scala 103:28]
    systolic_array.io.weight[1] <= weight_buffer.io.out_weight[1] @[Mini_TPU.scala 103:28]
    systolic_array.io.weight[2] <= weight_buffer.io.out_weight[2] @[Mini_TPU.scala 103:28]
    systolic_array.io.weight[3] <= weight_buffer.io.out_weight[3] @[Mini_TPU.scala 103:28]
    accumulation_array.io.in_valid[0] <= systolic_array.io.valid[0] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_valid[1] <= systolic_array.io.valid[1] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_valid[2] <= systolic_array.io.valid[2] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_valid[3] <= systolic_array.io.valid[3] @[Mini_TPU.scala 106:34]
    accumulation_array.io.in_psum[0] <= systolic_array.io.psum[0] @[Mini_TPU.scala 107:33]
    accumulation_array.io.in_psum[1] <= systolic_array.io.psum[1] @[Mini_TPU.scala 107:33]
    accumulation_array.io.in_psum[2] <= systolic_array.io.psum[2] @[Mini_TPU.scala 107:33]
    accumulation_array.io.in_psum[3] <= systolic_array.io.psum[3] @[Mini_TPU.scala 107:33]

