circuit Systolic_Array :
  module basic_PE :
    input clock : Clock
    input reset : UInt<1>
    input io_in_activate : UInt<8>
    input io_in_weight : UInt<8>
    input io_in_psum : UInt<16>
    input io_in_flow : UInt<1>
    input io_in_shift : UInt<1>
    output io_out_activate : UInt<8>
    output io_out_weight : UInt<8>
    output io_out_psum : UInt<16>

    reg Activation_Reg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), Activation_Reg) @[basic_PE.scala 17:31]
    reg Weight_Reg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), Weight_Reg) @[basic_PE.scala 18:27]
    reg PSum_Reg : UInt<16>, clock with :
      reset => (UInt<1>("h0"), PSum_Reg) @[basic_PE.scala 19:25]
    node _GEN_0 = mux(io_in_flow, io_in_activate, Activation_Reg) @[basic_PE.scala 22:20 23:20 25:20]
    node _GEN_1 = mux(io_in_flow, io_in_psum, PSum_Reg) @[basic_PE.scala 31:26 32:14 34:14]
    node _GEN_2 = mux(io_in_shift, UInt<1>("h0"), _GEN_1) @[basic_PE.scala 29:21 30:14]
    node _GEN_3 = mux(io_in_shift, io_in_weight, Weight_Reg) @[basic_PE.scala 38:21 39:16 41:16]
    node _io_out_psum_T = mul(Activation_Reg, Weight_Reg) @[basic_PE.scala 47:33]
    node _io_out_psum_T_1 = add(_io_out_psum_T, PSum_Reg) @[basic_PE.scala 47:46]
    node _io_out_psum_T_2 = tail(_io_out_psum_T_1, 1) @[basic_PE.scala 47:46]
    io_out_activate <= Activation_Reg @[basic_PE.scala 45:19]
    io_out_weight <= Weight_Reg @[basic_PE.scala 46:17]
    io_out_psum <= _io_out_psum_T_2 @[basic_PE.scala 47:15]
    Activation_Reg <= mux(reset, UInt<8>("h0"), _GEN_0) @[basic_PE.scala 17:{31,31}]
    Weight_Reg <= mux(reset, UInt<8>("h0"), _GEN_3) @[basic_PE.scala 18:{27,27}]
    PSum_Reg <= mux(reset, UInt<16>("h0"), _GEN_2) @[basic_PE.scala 19:{25,25}]

  module Systolic_Array :
    input clock : Clock
    input reset : UInt<1>
    input io_activate_0 : UInt<8>
    input io_activate_1 : UInt<8>
    input io_activate_2 : UInt<8>
    input io_activate_3 : UInt<8>
    input io_activate_4 : UInt<8>
    input io_activate_5 : UInt<8>
    input io_activate_6 : UInt<8>
    input io_activate_7 : UInt<8>
    input io_weight_0 : UInt<8>
    input io_weight_1 : UInt<8>
    input io_weight_2 : UInt<8>
    input io_weight_3 : UInt<8>
    input io_weight_4 : UInt<8>
    input io_weight_5 : UInt<8>
    input io_weight_6 : UInt<8>
    input io_weight_7 : UInt<8>
    input io_flow : UInt<1>
    input io_shift : UInt<1>
    output io_psum_0 : UInt<16>
    output io_psum_1 : UInt<16>
    output io_psum_2 : UInt<16>
    output io_psum_3 : UInt<16>
    output io_psum_4 : UInt<16>
    output io_psum_5 : UInt<16>
    output io_psum_6 : UInt<16>
    output io_psum_7 : UInt<16>
    output io_valid_0 : UInt<1>
    output io_valid_1 : UInt<1>
    output io_valid_2 : UInt<1>
    output io_valid_3 : UInt<1>
    output io_valid_4 : UInt<1>
    output io_valid_5 : UInt<1>
    output io_valid_6 : UInt<1>
    output io_valid_7 : UInt<1>

    inst PE_Array_0_0 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_0_1 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_0_2 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_0_3 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_0_4 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_0_5 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_0_6 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_0_7 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_1_0 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_1_1 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_1_2 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_1_3 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_1_4 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_1_5 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_1_6 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_1_7 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_2_0 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_2_1 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_2_2 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_2_3 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_2_4 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_2_5 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_2_6 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_2_7 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_3_0 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_3_1 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_3_2 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_3_3 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_3_4 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_3_5 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_3_6 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_3_7 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_4_0 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_4_1 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_4_2 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_4_3 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_4_4 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_4_5 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_4_6 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_4_7 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_5_0 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_5_1 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_5_2 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_5_3 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_5_4 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_5_5 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_5_6 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_5_7 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_6_0 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_6_1 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_6_2 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_6_3 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_6_4 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_6_5 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_6_6 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_6_7 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_7_0 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_7_1 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_7_2 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_7_3 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_7_4 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_7_5 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_7_6 of basic_PE @[Systolic_Array.scala 19:62]
    inst PE_Array_7_7 of basic_PE @[Systolic_Array.scala 19:62]
    reg flow_counter : UInt<5>, clock with :
      reset => (UInt<1>("h0"), flow_counter) @[Systolic_Array.scala 52:29]
    reg valid_reg : UInt<8>, clock with :
      reset => (UInt<1>("h0"), valid_reg) @[Systolic_Array.scala 53:26]
    node _T = lt(flow_counter, UInt<5>("h16")) @[Systolic_Array.scala 56:33]
    node _T_1 = and(io_flow, _T) @[Systolic_Array.scala 56:16]
    node _flow_counter_T = add(flow_counter, UInt<1>("h1")) @[Systolic_Array.scala 57:34]
    node _flow_counter_T_1 = tail(_flow_counter_T, 1) @[Systolic_Array.scala 57:34]
    node _T_2 = eq(flow_counter, UInt<5>("h16")) @[Systolic_Array.scala 58:27]
    node _GEN_0 = mux(_T_2, UInt<1>("h0"), flow_counter) @[Systolic_Array.scala 58:53 59:18 61:18]
    node _GEN_1 = mux(_T_1, _flow_counter_T_1, _GEN_0) @[Systolic_Array.scala 56:58 57:18]
    node _T_3 = leq(UInt<3>("h7"), flow_counter) @[Systolic_Array.scala 65:37]
    node _T_4 = and(io_flow, _T_3) @[Systolic_Array.scala 65:17]
    node _T_5 = lt(flow_counter, UInt<4>("hf")) @[Systolic_Array.scala 65:71]
    node _T_6 = and(_T_4, _T_5) @[Systolic_Array.scala 65:54]
    node _valid_reg_T = bits(valid_reg, 6, 0) @[Systolic_Array.scala 66:31]
    node _valid_reg_T_1 = cat(_valid_reg_T, UInt<1>("h1")) @[Cat.scala 33:92]
    node _T_7 = geq(flow_counter, UInt<4>("hf")) @[Systolic_Array.scala 67:39]
    node _T_8 = and(io_flow, _T_7) @[Systolic_Array.scala 67:22]
    node _valid_reg_T_2 = bits(valid_reg, 6, 0) @[Systolic_Array.scala 68:31]
    node _valid_reg_T_3 = cat(_valid_reg_T_2, UInt<1>("h0")) @[Cat.scala 33:92]
    node _GEN_2 = mux(_T_8, _valid_reg_T_3, UInt<1>("h0")) @[Systolic_Array.scala 67:65 68:15 70:15]
    node _GEN_3 = mux(_T_6, _valid_reg_T_1, _GEN_2) @[Systolic_Array.scala 65:96 66:15]
    node _T_9 = bits(valid_reg, 0, 0) @[Systolic_Array.scala 73:33]
    node _T_10 = bits(valid_reg, 1, 1) @[Systolic_Array.scala 73:33]
    node _T_11 = bits(valid_reg, 2, 2) @[Systolic_Array.scala 73:33]
    node _T_12 = bits(valid_reg, 3, 3) @[Systolic_Array.scala 73:33]
    node _T_13 = bits(valid_reg, 4, 4) @[Systolic_Array.scala 73:33]
    node _T_14 = bits(valid_reg, 5, 5) @[Systolic_Array.scala 73:33]
    node _T_15 = bits(valid_reg, 6, 6) @[Systolic_Array.scala 73:33]
    node _T_16 = bits(valid_reg, 7, 7) @[Systolic_Array.scala 73:33]
    node _WIRE_0 = _T_9 @[Systolic_Array.scala 73:{22,22}]
    node _WIRE_1 = _T_10 @[Systolic_Array.scala 73:{22,22}]
    node _WIRE_2 = _T_11 @[Systolic_Array.scala 73:{22,22}]
    node _WIRE_3 = _T_12 @[Systolic_Array.scala 73:{22,22}]
    node _WIRE_4 = _T_13 @[Systolic_Array.scala 73:{22,22}]
    node _WIRE_5 = _T_14 @[Systolic_Array.scala 73:{22,22}]
    node _WIRE_6 = _T_15 @[Systolic_Array.scala 73:{22,22}]
    node _WIRE_7 = _T_16 @[Systolic_Array.scala 73:{22,22}]
    io_psum_0 <= PE_Array_7_0.io_out_psum @[DataPath.scala 24:10]
    io_psum_1 <= PE_Array_7_1.io_out_psum @[DataPath.scala 24:10]
    io_psum_2 <= PE_Array_7_2.io_out_psum @[DataPath.scala 24:10]
    io_psum_3 <= PE_Array_7_3.io_out_psum @[DataPath.scala 24:10]
    io_psum_4 <= PE_Array_7_4.io_out_psum @[DataPath.scala 24:10]
    io_psum_5 <= PE_Array_7_5.io_out_psum @[DataPath.scala 24:10]
    io_psum_6 <= PE_Array_7_6.io_out_psum @[DataPath.scala 24:10]
    io_psum_7 <= PE_Array_7_7.io_out_psum @[DataPath.scala 24:10]
    io_valid_0 <= _WIRE_0 @[Systolic_Array.scala 73:12]
    io_valid_1 <= _WIRE_1 @[Systolic_Array.scala 73:12]
    io_valid_2 <= _WIRE_2 @[Systolic_Array.scala 73:12]
    io_valid_3 <= _WIRE_3 @[Systolic_Array.scala 73:12]
    io_valid_4 <= _WIRE_4 @[Systolic_Array.scala 73:12]
    io_valid_5 <= _WIRE_5 @[Systolic_Array.scala 73:12]
    io_valid_6 <= _WIRE_6 @[Systolic_Array.scala 73:12]
    io_valid_7 <= _WIRE_7 @[Systolic_Array.scala 73:12]
    PE_Array_0_0.clock <= clock
    PE_Array_0_0.reset <= reset
    PE_Array_0_0.io_in_activate <= io_activate_0 @[DataPath.scala 11:26]
    PE_Array_0_0.io_in_weight <= io_weight_0 @[DataPath.scala 20:23]
    PE_Array_0_0.io_in_psum <= UInt<16>("h0") @[DataPath.scala 21:21]
    PE_Array_0_0.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_0_0.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_0_1.clock <= clock
    PE_Array_0_1.reset <= reset
    PE_Array_0_1.io_in_activate <= PE_Array_0_0.io_out_activate @[DataPath.scala 7:26]
    PE_Array_0_1.io_in_weight <= io_weight_1 @[DataPath.scala 20:23]
    PE_Array_0_1.io_in_psum <= UInt<16>("h0") @[DataPath.scala 21:21]
    PE_Array_0_1.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_0_1.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_0_2.clock <= clock
    PE_Array_0_2.reset <= reset
    PE_Array_0_2.io_in_activate <= PE_Array_0_1.io_out_activate @[DataPath.scala 7:26]
    PE_Array_0_2.io_in_weight <= io_weight_2 @[DataPath.scala 20:23]
    PE_Array_0_2.io_in_psum <= UInt<16>("h0") @[DataPath.scala 21:21]
    PE_Array_0_2.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_0_2.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_0_3.clock <= clock
    PE_Array_0_3.reset <= reset
    PE_Array_0_3.io_in_activate <= PE_Array_0_2.io_out_activate @[DataPath.scala 7:26]
    PE_Array_0_3.io_in_weight <= io_weight_3 @[DataPath.scala 20:23]
    PE_Array_0_3.io_in_psum <= UInt<16>("h0") @[DataPath.scala 21:21]
    PE_Array_0_3.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_0_3.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_0_4.clock <= clock
    PE_Array_0_4.reset <= reset
    PE_Array_0_4.io_in_activate <= PE_Array_0_3.io_out_activate @[DataPath.scala 7:26]
    PE_Array_0_4.io_in_weight <= io_weight_4 @[DataPath.scala 20:23]
    PE_Array_0_4.io_in_psum <= UInt<16>("h0") @[DataPath.scala 21:21]
    PE_Array_0_4.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_0_4.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_0_5.clock <= clock
    PE_Array_0_5.reset <= reset
    PE_Array_0_5.io_in_activate <= PE_Array_0_4.io_out_activate @[DataPath.scala 7:26]
    PE_Array_0_5.io_in_weight <= io_weight_5 @[DataPath.scala 20:23]
    PE_Array_0_5.io_in_psum <= UInt<16>("h0") @[DataPath.scala 21:21]
    PE_Array_0_5.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_0_5.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_0_6.clock <= clock
    PE_Array_0_6.reset <= reset
    PE_Array_0_6.io_in_activate <= PE_Array_0_5.io_out_activate @[DataPath.scala 7:26]
    PE_Array_0_6.io_in_weight <= io_weight_6 @[DataPath.scala 20:23]
    PE_Array_0_6.io_in_psum <= UInt<16>("h0") @[DataPath.scala 21:21]
    PE_Array_0_6.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_0_6.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_0_7.clock <= clock
    PE_Array_0_7.reset <= reset
    PE_Array_0_7.io_in_activate <= PE_Array_0_6.io_out_activate @[DataPath.scala 7:26]
    PE_Array_0_7.io_in_weight <= io_weight_7 @[DataPath.scala 20:23]
    PE_Array_0_7.io_in_psum <= UInt<16>("h0") @[DataPath.scala 21:21]
    PE_Array_0_7.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_0_7.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_1_0.clock <= clock
    PE_Array_1_0.reset <= reset
    PE_Array_1_0.io_in_activate <= io_activate_1 @[DataPath.scala 11:26]
    PE_Array_1_0.io_in_weight <= PE_Array_0_0.io_out_weight @[DataPath.scala 15:23]
    PE_Array_1_0.io_in_psum <= PE_Array_0_0.io_out_psum @[DataPath.scala 16:21]
    PE_Array_1_0.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_1_0.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_1_1.clock <= clock
    PE_Array_1_1.reset <= reset
    PE_Array_1_1.io_in_activate <= PE_Array_1_0.io_out_activate @[DataPath.scala 7:26]
    PE_Array_1_1.io_in_weight <= PE_Array_0_1.io_out_weight @[DataPath.scala 15:23]
    PE_Array_1_1.io_in_psum <= PE_Array_0_1.io_out_psum @[DataPath.scala 16:21]
    PE_Array_1_1.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_1_1.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_1_2.clock <= clock
    PE_Array_1_2.reset <= reset
    PE_Array_1_2.io_in_activate <= PE_Array_1_1.io_out_activate @[DataPath.scala 7:26]
    PE_Array_1_2.io_in_weight <= PE_Array_0_2.io_out_weight @[DataPath.scala 15:23]
    PE_Array_1_2.io_in_psum <= PE_Array_0_2.io_out_psum @[DataPath.scala 16:21]
    PE_Array_1_2.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_1_2.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_1_3.clock <= clock
    PE_Array_1_3.reset <= reset
    PE_Array_1_3.io_in_activate <= PE_Array_1_2.io_out_activate @[DataPath.scala 7:26]
    PE_Array_1_3.io_in_weight <= PE_Array_0_3.io_out_weight @[DataPath.scala 15:23]
    PE_Array_1_3.io_in_psum <= PE_Array_0_3.io_out_psum @[DataPath.scala 16:21]
    PE_Array_1_3.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_1_3.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_1_4.clock <= clock
    PE_Array_1_4.reset <= reset
    PE_Array_1_4.io_in_activate <= PE_Array_1_3.io_out_activate @[DataPath.scala 7:26]
    PE_Array_1_4.io_in_weight <= PE_Array_0_4.io_out_weight @[DataPath.scala 15:23]
    PE_Array_1_4.io_in_psum <= PE_Array_0_4.io_out_psum @[DataPath.scala 16:21]
    PE_Array_1_4.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_1_4.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_1_5.clock <= clock
    PE_Array_1_5.reset <= reset
    PE_Array_1_5.io_in_activate <= PE_Array_1_4.io_out_activate @[DataPath.scala 7:26]
    PE_Array_1_5.io_in_weight <= PE_Array_0_5.io_out_weight @[DataPath.scala 15:23]
    PE_Array_1_5.io_in_psum <= PE_Array_0_5.io_out_psum @[DataPath.scala 16:21]
    PE_Array_1_5.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_1_5.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_1_6.clock <= clock
    PE_Array_1_6.reset <= reset
    PE_Array_1_6.io_in_activate <= PE_Array_1_5.io_out_activate @[DataPath.scala 7:26]
    PE_Array_1_6.io_in_weight <= PE_Array_0_6.io_out_weight @[DataPath.scala 15:23]
    PE_Array_1_6.io_in_psum <= PE_Array_0_6.io_out_psum @[DataPath.scala 16:21]
    PE_Array_1_6.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_1_6.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_1_7.clock <= clock
    PE_Array_1_7.reset <= reset
    PE_Array_1_7.io_in_activate <= PE_Array_1_6.io_out_activate @[DataPath.scala 7:26]
    PE_Array_1_7.io_in_weight <= PE_Array_0_7.io_out_weight @[DataPath.scala 15:23]
    PE_Array_1_7.io_in_psum <= PE_Array_0_7.io_out_psum @[DataPath.scala 16:21]
    PE_Array_1_7.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_1_7.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_2_0.clock <= clock
    PE_Array_2_0.reset <= reset
    PE_Array_2_0.io_in_activate <= io_activate_2 @[DataPath.scala 11:26]
    PE_Array_2_0.io_in_weight <= PE_Array_1_0.io_out_weight @[DataPath.scala 15:23]
    PE_Array_2_0.io_in_psum <= PE_Array_1_0.io_out_psum @[DataPath.scala 16:21]
    PE_Array_2_0.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_2_0.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_2_1.clock <= clock
    PE_Array_2_1.reset <= reset
    PE_Array_2_1.io_in_activate <= PE_Array_2_0.io_out_activate @[DataPath.scala 7:26]
    PE_Array_2_1.io_in_weight <= PE_Array_1_1.io_out_weight @[DataPath.scala 15:23]
    PE_Array_2_1.io_in_psum <= PE_Array_1_1.io_out_psum @[DataPath.scala 16:21]
    PE_Array_2_1.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_2_1.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_2_2.clock <= clock
    PE_Array_2_2.reset <= reset
    PE_Array_2_2.io_in_activate <= PE_Array_2_1.io_out_activate @[DataPath.scala 7:26]
    PE_Array_2_2.io_in_weight <= PE_Array_1_2.io_out_weight @[DataPath.scala 15:23]
    PE_Array_2_2.io_in_psum <= PE_Array_1_2.io_out_psum @[DataPath.scala 16:21]
    PE_Array_2_2.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_2_2.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_2_3.clock <= clock
    PE_Array_2_3.reset <= reset
    PE_Array_2_3.io_in_activate <= PE_Array_2_2.io_out_activate @[DataPath.scala 7:26]
    PE_Array_2_3.io_in_weight <= PE_Array_1_3.io_out_weight @[DataPath.scala 15:23]
    PE_Array_2_3.io_in_psum <= PE_Array_1_3.io_out_psum @[DataPath.scala 16:21]
    PE_Array_2_3.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_2_3.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_2_4.clock <= clock
    PE_Array_2_4.reset <= reset
    PE_Array_2_4.io_in_activate <= PE_Array_2_3.io_out_activate @[DataPath.scala 7:26]
    PE_Array_2_4.io_in_weight <= PE_Array_1_4.io_out_weight @[DataPath.scala 15:23]
    PE_Array_2_4.io_in_psum <= PE_Array_1_4.io_out_psum @[DataPath.scala 16:21]
    PE_Array_2_4.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_2_4.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_2_5.clock <= clock
    PE_Array_2_5.reset <= reset
    PE_Array_2_5.io_in_activate <= PE_Array_2_4.io_out_activate @[DataPath.scala 7:26]
    PE_Array_2_5.io_in_weight <= PE_Array_1_5.io_out_weight @[DataPath.scala 15:23]
    PE_Array_2_5.io_in_psum <= PE_Array_1_5.io_out_psum @[DataPath.scala 16:21]
    PE_Array_2_5.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_2_5.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_2_6.clock <= clock
    PE_Array_2_6.reset <= reset
    PE_Array_2_6.io_in_activate <= PE_Array_2_5.io_out_activate @[DataPath.scala 7:26]
    PE_Array_2_6.io_in_weight <= PE_Array_1_6.io_out_weight @[DataPath.scala 15:23]
    PE_Array_2_6.io_in_psum <= PE_Array_1_6.io_out_psum @[DataPath.scala 16:21]
    PE_Array_2_6.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_2_6.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_2_7.clock <= clock
    PE_Array_2_7.reset <= reset
    PE_Array_2_7.io_in_activate <= PE_Array_2_6.io_out_activate @[DataPath.scala 7:26]
    PE_Array_2_7.io_in_weight <= PE_Array_1_7.io_out_weight @[DataPath.scala 15:23]
    PE_Array_2_7.io_in_psum <= PE_Array_1_7.io_out_psum @[DataPath.scala 16:21]
    PE_Array_2_7.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_2_7.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_3_0.clock <= clock
    PE_Array_3_0.reset <= reset
    PE_Array_3_0.io_in_activate <= io_activate_3 @[DataPath.scala 11:26]
    PE_Array_3_0.io_in_weight <= PE_Array_2_0.io_out_weight @[DataPath.scala 15:23]
    PE_Array_3_0.io_in_psum <= PE_Array_2_0.io_out_psum @[DataPath.scala 16:21]
    PE_Array_3_0.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_3_0.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_3_1.clock <= clock
    PE_Array_3_1.reset <= reset
    PE_Array_3_1.io_in_activate <= PE_Array_3_0.io_out_activate @[DataPath.scala 7:26]
    PE_Array_3_1.io_in_weight <= PE_Array_2_1.io_out_weight @[DataPath.scala 15:23]
    PE_Array_3_1.io_in_psum <= PE_Array_2_1.io_out_psum @[DataPath.scala 16:21]
    PE_Array_3_1.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_3_1.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_3_2.clock <= clock
    PE_Array_3_2.reset <= reset
    PE_Array_3_2.io_in_activate <= PE_Array_3_1.io_out_activate @[DataPath.scala 7:26]
    PE_Array_3_2.io_in_weight <= PE_Array_2_2.io_out_weight @[DataPath.scala 15:23]
    PE_Array_3_2.io_in_psum <= PE_Array_2_2.io_out_psum @[DataPath.scala 16:21]
    PE_Array_3_2.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_3_2.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_3_3.clock <= clock
    PE_Array_3_3.reset <= reset
    PE_Array_3_3.io_in_activate <= PE_Array_3_2.io_out_activate @[DataPath.scala 7:26]
    PE_Array_3_3.io_in_weight <= PE_Array_2_3.io_out_weight @[DataPath.scala 15:23]
    PE_Array_3_3.io_in_psum <= PE_Array_2_3.io_out_psum @[DataPath.scala 16:21]
    PE_Array_3_3.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_3_3.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_3_4.clock <= clock
    PE_Array_3_4.reset <= reset
    PE_Array_3_4.io_in_activate <= PE_Array_3_3.io_out_activate @[DataPath.scala 7:26]
    PE_Array_3_4.io_in_weight <= PE_Array_2_4.io_out_weight @[DataPath.scala 15:23]
    PE_Array_3_4.io_in_psum <= PE_Array_2_4.io_out_psum @[DataPath.scala 16:21]
    PE_Array_3_4.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_3_4.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_3_5.clock <= clock
    PE_Array_3_5.reset <= reset
    PE_Array_3_5.io_in_activate <= PE_Array_3_4.io_out_activate @[DataPath.scala 7:26]
    PE_Array_3_5.io_in_weight <= PE_Array_2_5.io_out_weight @[DataPath.scala 15:23]
    PE_Array_3_5.io_in_psum <= PE_Array_2_5.io_out_psum @[DataPath.scala 16:21]
    PE_Array_3_5.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_3_5.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_3_6.clock <= clock
    PE_Array_3_6.reset <= reset
    PE_Array_3_6.io_in_activate <= PE_Array_3_5.io_out_activate @[DataPath.scala 7:26]
    PE_Array_3_6.io_in_weight <= PE_Array_2_6.io_out_weight @[DataPath.scala 15:23]
    PE_Array_3_6.io_in_psum <= PE_Array_2_6.io_out_psum @[DataPath.scala 16:21]
    PE_Array_3_6.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_3_6.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_3_7.clock <= clock
    PE_Array_3_7.reset <= reset
    PE_Array_3_7.io_in_activate <= PE_Array_3_6.io_out_activate @[DataPath.scala 7:26]
    PE_Array_3_7.io_in_weight <= PE_Array_2_7.io_out_weight @[DataPath.scala 15:23]
    PE_Array_3_7.io_in_psum <= PE_Array_2_7.io_out_psum @[DataPath.scala 16:21]
    PE_Array_3_7.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_3_7.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_4_0.clock <= clock
    PE_Array_4_0.reset <= reset
    PE_Array_4_0.io_in_activate <= io_activate_4 @[DataPath.scala 11:26]
    PE_Array_4_0.io_in_weight <= PE_Array_3_0.io_out_weight @[DataPath.scala 15:23]
    PE_Array_4_0.io_in_psum <= PE_Array_3_0.io_out_psum @[DataPath.scala 16:21]
    PE_Array_4_0.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_4_0.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_4_1.clock <= clock
    PE_Array_4_1.reset <= reset
    PE_Array_4_1.io_in_activate <= PE_Array_4_0.io_out_activate @[DataPath.scala 7:26]
    PE_Array_4_1.io_in_weight <= PE_Array_3_1.io_out_weight @[DataPath.scala 15:23]
    PE_Array_4_1.io_in_psum <= PE_Array_3_1.io_out_psum @[DataPath.scala 16:21]
    PE_Array_4_1.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_4_1.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_4_2.clock <= clock
    PE_Array_4_2.reset <= reset
    PE_Array_4_2.io_in_activate <= PE_Array_4_1.io_out_activate @[DataPath.scala 7:26]
    PE_Array_4_2.io_in_weight <= PE_Array_3_2.io_out_weight @[DataPath.scala 15:23]
    PE_Array_4_2.io_in_psum <= PE_Array_3_2.io_out_psum @[DataPath.scala 16:21]
    PE_Array_4_2.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_4_2.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_4_3.clock <= clock
    PE_Array_4_3.reset <= reset
    PE_Array_4_3.io_in_activate <= PE_Array_4_2.io_out_activate @[DataPath.scala 7:26]
    PE_Array_4_3.io_in_weight <= PE_Array_3_3.io_out_weight @[DataPath.scala 15:23]
    PE_Array_4_3.io_in_psum <= PE_Array_3_3.io_out_psum @[DataPath.scala 16:21]
    PE_Array_4_3.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_4_3.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_4_4.clock <= clock
    PE_Array_4_4.reset <= reset
    PE_Array_4_4.io_in_activate <= PE_Array_4_3.io_out_activate @[DataPath.scala 7:26]
    PE_Array_4_4.io_in_weight <= PE_Array_3_4.io_out_weight @[DataPath.scala 15:23]
    PE_Array_4_4.io_in_psum <= PE_Array_3_4.io_out_psum @[DataPath.scala 16:21]
    PE_Array_4_4.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_4_4.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_4_5.clock <= clock
    PE_Array_4_5.reset <= reset
    PE_Array_4_5.io_in_activate <= PE_Array_4_4.io_out_activate @[DataPath.scala 7:26]
    PE_Array_4_5.io_in_weight <= PE_Array_3_5.io_out_weight @[DataPath.scala 15:23]
    PE_Array_4_5.io_in_psum <= PE_Array_3_5.io_out_psum @[DataPath.scala 16:21]
    PE_Array_4_5.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_4_5.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_4_6.clock <= clock
    PE_Array_4_6.reset <= reset
    PE_Array_4_6.io_in_activate <= PE_Array_4_5.io_out_activate @[DataPath.scala 7:26]
    PE_Array_4_6.io_in_weight <= PE_Array_3_6.io_out_weight @[DataPath.scala 15:23]
    PE_Array_4_6.io_in_psum <= PE_Array_3_6.io_out_psum @[DataPath.scala 16:21]
    PE_Array_4_6.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_4_6.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_4_7.clock <= clock
    PE_Array_4_7.reset <= reset
    PE_Array_4_7.io_in_activate <= PE_Array_4_6.io_out_activate @[DataPath.scala 7:26]
    PE_Array_4_7.io_in_weight <= PE_Array_3_7.io_out_weight @[DataPath.scala 15:23]
    PE_Array_4_7.io_in_psum <= PE_Array_3_7.io_out_psum @[DataPath.scala 16:21]
    PE_Array_4_7.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_4_7.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_5_0.clock <= clock
    PE_Array_5_0.reset <= reset
    PE_Array_5_0.io_in_activate <= io_activate_5 @[DataPath.scala 11:26]
    PE_Array_5_0.io_in_weight <= PE_Array_4_0.io_out_weight @[DataPath.scala 15:23]
    PE_Array_5_0.io_in_psum <= PE_Array_4_0.io_out_psum @[DataPath.scala 16:21]
    PE_Array_5_0.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_5_0.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_5_1.clock <= clock
    PE_Array_5_1.reset <= reset
    PE_Array_5_1.io_in_activate <= PE_Array_5_0.io_out_activate @[DataPath.scala 7:26]
    PE_Array_5_1.io_in_weight <= PE_Array_4_1.io_out_weight @[DataPath.scala 15:23]
    PE_Array_5_1.io_in_psum <= PE_Array_4_1.io_out_psum @[DataPath.scala 16:21]
    PE_Array_5_1.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_5_1.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_5_2.clock <= clock
    PE_Array_5_2.reset <= reset
    PE_Array_5_2.io_in_activate <= PE_Array_5_1.io_out_activate @[DataPath.scala 7:26]
    PE_Array_5_2.io_in_weight <= PE_Array_4_2.io_out_weight @[DataPath.scala 15:23]
    PE_Array_5_2.io_in_psum <= PE_Array_4_2.io_out_psum @[DataPath.scala 16:21]
    PE_Array_5_2.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_5_2.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_5_3.clock <= clock
    PE_Array_5_3.reset <= reset
    PE_Array_5_3.io_in_activate <= PE_Array_5_2.io_out_activate @[DataPath.scala 7:26]
    PE_Array_5_3.io_in_weight <= PE_Array_4_3.io_out_weight @[DataPath.scala 15:23]
    PE_Array_5_3.io_in_psum <= PE_Array_4_3.io_out_psum @[DataPath.scala 16:21]
    PE_Array_5_3.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_5_3.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_5_4.clock <= clock
    PE_Array_5_4.reset <= reset
    PE_Array_5_4.io_in_activate <= PE_Array_5_3.io_out_activate @[DataPath.scala 7:26]
    PE_Array_5_4.io_in_weight <= PE_Array_4_4.io_out_weight @[DataPath.scala 15:23]
    PE_Array_5_4.io_in_psum <= PE_Array_4_4.io_out_psum @[DataPath.scala 16:21]
    PE_Array_5_4.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_5_4.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_5_5.clock <= clock
    PE_Array_5_5.reset <= reset
    PE_Array_5_5.io_in_activate <= PE_Array_5_4.io_out_activate @[DataPath.scala 7:26]
    PE_Array_5_5.io_in_weight <= PE_Array_4_5.io_out_weight @[DataPath.scala 15:23]
    PE_Array_5_5.io_in_psum <= PE_Array_4_5.io_out_psum @[DataPath.scala 16:21]
    PE_Array_5_5.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_5_5.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_5_6.clock <= clock
    PE_Array_5_6.reset <= reset
    PE_Array_5_6.io_in_activate <= PE_Array_5_5.io_out_activate @[DataPath.scala 7:26]
    PE_Array_5_6.io_in_weight <= PE_Array_4_6.io_out_weight @[DataPath.scala 15:23]
    PE_Array_5_6.io_in_psum <= PE_Array_4_6.io_out_psum @[DataPath.scala 16:21]
    PE_Array_5_6.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_5_6.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_5_7.clock <= clock
    PE_Array_5_7.reset <= reset
    PE_Array_5_7.io_in_activate <= PE_Array_5_6.io_out_activate @[DataPath.scala 7:26]
    PE_Array_5_7.io_in_weight <= PE_Array_4_7.io_out_weight @[DataPath.scala 15:23]
    PE_Array_5_7.io_in_psum <= PE_Array_4_7.io_out_psum @[DataPath.scala 16:21]
    PE_Array_5_7.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_5_7.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_6_0.clock <= clock
    PE_Array_6_0.reset <= reset
    PE_Array_6_0.io_in_activate <= io_activate_6 @[DataPath.scala 11:26]
    PE_Array_6_0.io_in_weight <= PE_Array_5_0.io_out_weight @[DataPath.scala 15:23]
    PE_Array_6_0.io_in_psum <= PE_Array_5_0.io_out_psum @[DataPath.scala 16:21]
    PE_Array_6_0.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_6_0.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_6_1.clock <= clock
    PE_Array_6_1.reset <= reset
    PE_Array_6_1.io_in_activate <= PE_Array_6_0.io_out_activate @[DataPath.scala 7:26]
    PE_Array_6_1.io_in_weight <= PE_Array_5_1.io_out_weight @[DataPath.scala 15:23]
    PE_Array_6_1.io_in_psum <= PE_Array_5_1.io_out_psum @[DataPath.scala 16:21]
    PE_Array_6_1.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_6_1.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_6_2.clock <= clock
    PE_Array_6_2.reset <= reset
    PE_Array_6_2.io_in_activate <= PE_Array_6_1.io_out_activate @[DataPath.scala 7:26]
    PE_Array_6_2.io_in_weight <= PE_Array_5_2.io_out_weight @[DataPath.scala 15:23]
    PE_Array_6_2.io_in_psum <= PE_Array_5_2.io_out_psum @[DataPath.scala 16:21]
    PE_Array_6_2.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_6_2.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_6_3.clock <= clock
    PE_Array_6_3.reset <= reset
    PE_Array_6_3.io_in_activate <= PE_Array_6_2.io_out_activate @[DataPath.scala 7:26]
    PE_Array_6_3.io_in_weight <= PE_Array_5_3.io_out_weight @[DataPath.scala 15:23]
    PE_Array_6_3.io_in_psum <= PE_Array_5_3.io_out_psum @[DataPath.scala 16:21]
    PE_Array_6_3.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_6_3.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_6_4.clock <= clock
    PE_Array_6_4.reset <= reset
    PE_Array_6_4.io_in_activate <= PE_Array_6_3.io_out_activate @[DataPath.scala 7:26]
    PE_Array_6_4.io_in_weight <= PE_Array_5_4.io_out_weight @[DataPath.scala 15:23]
    PE_Array_6_4.io_in_psum <= PE_Array_5_4.io_out_psum @[DataPath.scala 16:21]
    PE_Array_6_4.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_6_4.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_6_5.clock <= clock
    PE_Array_6_5.reset <= reset
    PE_Array_6_5.io_in_activate <= PE_Array_6_4.io_out_activate @[DataPath.scala 7:26]
    PE_Array_6_5.io_in_weight <= PE_Array_5_5.io_out_weight @[DataPath.scala 15:23]
    PE_Array_6_5.io_in_psum <= PE_Array_5_5.io_out_psum @[DataPath.scala 16:21]
    PE_Array_6_5.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_6_5.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_6_6.clock <= clock
    PE_Array_6_6.reset <= reset
    PE_Array_6_6.io_in_activate <= PE_Array_6_5.io_out_activate @[DataPath.scala 7:26]
    PE_Array_6_6.io_in_weight <= PE_Array_5_6.io_out_weight @[DataPath.scala 15:23]
    PE_Array_6_6.io_in_psum <= PE_Array_5_6.io_out_psum @[DataPath.scala 16:21]
    PE_Array_6_6.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_6_6.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_6_7.clock <= clock
    PE_Array_6_7.reset <= reset
    PE_Array_6_7.io_in_activate <= PE_Array_6_6.io_out_activate @[DataPath.scala 7:26]
    PE_Array_6_7.io_in_weight <= PE_Array_5_7.io_out_weight @[DataPath.scala 15:23]
    PE_Array_6_7.io_in_psum <= PE_Array_5_7.io_out_psum @[DataPath.scala 16:21]
    PE_Array_6_7.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_6_7.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_7_0.clock <= clock
    PE_Array_7_0.reset <= reset
    PE_Array_7_0.io_in_activate <= io_activate_7 @[DataPath.scala 11:26]
    PE_Array_7_0.io_in_weight <= PE_Array_6_0.io_out_weight @[DataPath.scala 15:23]
    PE_Array_7_0.io_in_psum <= PE_Array_6_0.io_out_psum @[DataPath.scala 16:21]
    PE_Array_7_0.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_7_0.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_7_1.clock <= clock
    PE_Array_7_1.reset <= reset
    PE_Array_7_1.io_in_activate <= PE_Array_7_0.io_out_activate @[DataPath.scala 7:26]
    PE_Array_7_1.io_in_weight <= PE_Array_6_1.io_out_weight @[DataPath.scala 15:23]
    PE_Array_7_1.io_in_psum <= PE_Array_6_1.io_out_psum @[DataPath.scala 16:21]
    PE_Array_7_1.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_7_1.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_7_2.clock <= clock
    PE_Array_7_2.reset <= reset
    PE_Array_7_2.io_in_activate <= PE_Array_7_1.io_out_activate @[DataPath.scala 7:26]
    PE_Array_7_2.io_in_weight <= PE_Array_6_2.io_out_weight @[DataPath.scala 15:23]
    PE_Array_7_2.io_in_psum <= PE_Array_6_2.io_out_psum @[DataPath.scala 16:21]
    PE_Array_7_2.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_7_2.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_7_3.clock <= clock
    PE_Array_7_3.reset <= reset
    PE_Array_7_3.io_in_activate <= PE_Array_7_2.io_out_activate @[DataPath.scala 7:26]
    PE_Array_7_3.io_in_weight <= PE_Array_6_3.io_out_weight @[DataPath.scala 15:23]
    PE_Array_7_3.io_in_psum <= PE_Array_6_3.io_out_psum @[DataPath.scala 16:21]
    PE_Array_7_3.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_7_3.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_7_4.clock <= clock
    PE_Array_7_4.reset <= reset
    PE_Array_7_4.io_in_activate <= PE_Array_7_3.io_out_activate @[DataPath.scala 7:26]
    PE_Array_7_4.io_in_weight <= PE_Array_6_4.io_out_weight @[DataPath.scala 15:23]
    PE_Array_7_4.io_in_psum <= PE_Array_6_4.io_out_psum @[DataPath.scala 16:21]
    PE_Array_7_4.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_7_4.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_7_5.clock <= clock
    PE_Array_7_5.reset <= reset
    PE_Array_7_5.io_in_activate <= PE_Array_7_4.io_out_activate @[DataPath.scala 7:26]
    PE_Array_7_5.io_in_weight <= PE_Array_6_5.io_out_weight @[DataPath.scala 15:23]
    PE_Array_7_5.io_in_psum <= PE_Array_6_5.io_out_psum @[DataPath.scala 16:21]
    PE_Array_7_5.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_7_5.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_7_6.clock <= clock
    PE_Array_7_6.reset <= reset
    PE_Array_7_6.io_in_activate <= PE_Array_7_5.io_out_activate @[DataPath.scala 7:26]
    PE_Array_7_6.io_in_weight <= PE_Array_6_6.io_out_weight @[DataPath.scala 15:23]
    PE_Array_7_6.io_in_psum <= PE_Array_6_6.io_out_psum @[DataPath.scala 16:21]
    PE_Array_7_6.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_7_6.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    PE_Array_7_7.clock <= clock
    PE_Array_7_7.reset <= reset
    PE_Array_7_7.io_in_activate <= PE_Array_7_6.io_out_activate @[DataPath.scala 7:26]
    PE_Array_7_7.io_in_weight <= PE_Array_6_7.io_out_weight @[DataPath.scala 15:23]
    PE_Array_7_7.io_in_psum <= PE_Array_6_7.io_out_psum @[DataPath.scala 16:21]
    PE_Array_7_7.io_in_flow <= io_flow @[Systolic_Array.scala 22:54]
    PE_Array_7_7.io_in_shift <= io_shift @[Systolic_Array.scala 23:55]
    flow_counter <= mux(reset, UInt<5>("h0"), _GEN_1) @[Systolic_Array.scala 52:{29,29}]
    valid_reg <= mux(reset, UInt<8>("h0"), _GEN_3) @[Systolic_Array.scala 53:{26,26}]
