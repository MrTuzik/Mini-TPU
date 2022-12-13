circuit Accumulator_Array :
  module Accumulator_Array :
    input clock : Clock
    input reset : UInt<1>
    input io_in_psum_0 : UInt<16>
    input io_in_psum_1 : UInt<16>
    input io_in_psum_2 : UInt<16>
    input io_in_psum_3 : UInt<16>
    input io_in_valid_0 : UInt<1>
    input io_in_valid_1 : UInt<1>
    input io_in_valid_2 : UInt<1>
    input io_in_valid_3 : UInt<1>
    input io_in_acc : UInt<1>
    input io_in_compute_done : UInt<1>
    output io_isdone : UInt<1>
    output io_out_sum_0 : UInt<32>
    output io_out_sum_1 : UInt<32>
    output io_out_sum_2 : UInt<32>
    output io_out_sum_3 : UInt<32>
    output io_out_sum_4 : UInt<32>
    output io_out_sum_5 : UInt<32>
    output io_out_sum_6 : UInt<32>
    output io_out_sum_7 : UInt<32>
    output io_out_sum_8 : UInt<32>
    output io_out_sum_9 : UInt<32>
    output io_out_sum_10 : UInt<32>
    output io_out_sum_11 : UInt<32>
    output io_out_sum_12 : UInt<32>
    output io_out_sum_13 : UInt<32>
    output io_out_sum_14 : UInt<32>
    output io_out_sum_15 : UInt<32>
    output io_valid : UInt<1>

    reg Acc_Buffer_0_0 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_0_0) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_0_1 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_0_1) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_0_2 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_0_2) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_0_3 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_0_3) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_1_0 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_1_0) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_1_1 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_1_1) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_1_2 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_1_2) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_1_3 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_1_3) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_2_0 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_2_0) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_2_1 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_2_1) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_2_2 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_2_2) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_2_3 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_2_3) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_3_0 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_3_0) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_3_1 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_3_1) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_3_2 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_3_2) @[Accumulator_Array.scala 20:27]
    reg Acc_Buffer_3_3 : UInt<16>, clock with :
      reset => (UInt<1>("h0"), Acc_Buffer_3_3) @[Accumulator_Array.scala 20:27]
    reg Acc_Result_0_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_0_0) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_0_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_0_1) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_0_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_0_2) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_0_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_0_3) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_1_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_1_0) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_1_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_1_1) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_1_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_1_2) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_1_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_1_3) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_2_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_2_0) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_2_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_2_1) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_2_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_2_2) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_2_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_2_3) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_3_0 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_3_0) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_3_1 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_3_1) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_3_2 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_3_2) @[Accumulator_Array.scala 21:27]
    reg Acc_Result_3_3 : UInt<32>, clock with :
      reset => (UInt<1>("h0"), Acc_Result_3_3) @[Accumulator_Array.scala 21:27]
    reg valid_counter_0 : UInt<3>, clock with :
      reset => (UInt<1>("h0"), valid_counter_0) @[Accumulator_Array.scala 22:30]
    reg valid_counter_1 : UInt<3>, clock with :
      reset => (UInt<1>("h0"), valid_counter_1) @[Accumulator_Array.scala 22:30]
    reg valid_counter_2 : UInt<3>, clock with :
      reset => (UInt<1>("h0"), valid_counter_2) @[Accumulator_Array.scala 22:30]
    reg valid_counter_3 : UInt<3>, clock with :
      reset => (UInt<1>("h0"), valid_counter_3) @[Accumulator_Array.scala 22:30]
    node _T = bits(valid_counter_0, 1, 0)
    node _Acc_Buffer_T_0 = io_in_psum_0 @[Accumulator_Array.scala 26:{39,39}]
    node _GEN_0 = mux(eq(UInt<1>("h0"), _T), _Acc_Buffer_T_0, Acc_Buffer_0_0) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_1 = mux(eq(UInt<1>("h1"), _T), _Acc_Buffer_T_0, Acc_Buffer_1_0) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_2 = mux(eq(UInt<2>("h2"), _T), _Acc_Buffer_T_0, Acc_Buffer_2_0) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_3 = mux(eq(UInt<2>("h3"), _T), _Acc_Buffer_T_0, Acc_Buffer_3_0) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _T_1 = bits(valid_counter_0, 1, 0)
    node _Acc_Buffer_0_T = bits(valid_counter_0, 1, 0)
    node _GEN_8 = validif(eq(UInt<1>("h0"), _Acc_Buffer_0_T), Acc_Buffer_0_0) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_9 = mux(eq(UInt<1>("h1"), _Acc_Buffer_0_T), Acc_Buffer_1_0, _GEN_8) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_10 = mux(eq(UInt<2>("h2"), _Acc_Buffer_0_T), Acc_Buffer_2_0, _GEN_9) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_11 = mux(eq(UInt<2>("h3"), _Acc_Buffer_0_T), Acc_Buffer_3_0, _GEN_10) @[Accumulator_Array.scala 28:{39,39}]
    node _Acc_Buffer_Acc_Buffer_0_T_0 = _GEN_11 @[Accumulator_Array.scala 28:39]
    node _Acc_Buffer_T_1_0 = _Acc_Buffer_Acc_Buffer_0_T_0 @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_4 = mux(eq(UInt<1>("h0"), _T_1), _Acc_Buffer_T_1_0, Acc_Buffer_0_0) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_5 = mux(eq(UInt<1>("h1"), _T_1), _Acc_Buffer_T_1_0, Acc_Buffer_1_0) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_6 = mux(eq(UInt<2>("h2"), _T_1), _Acc_Buffer_T_1_0, Acc_Buffer_2_0) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_7 = mux(eq(UInt<2>("h3"), _T_1), _Acc_Buffer_T_1_0, Acc_Buffer_3_0) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_12 = mux(io_in_valid_0, _GEN_0, _GEN_4) @[Accumulator_Array.scala 25:26]
    node _GEN_13 = mux(io_in_valid_0, _GEN_1, _GEN_5) @[Accumulator_Array.scala 25:26]
    node _GEN_14 = mux(io_in_valid_0, _GEN_2, _GEN_6) @[Accumulator_Array.scala 25:26]
    node _GEN_15 = mux(io_in_valid_0, _GEN_3, _GEN_7) @[Accumulator_Array.scala 25:26]
    node _T_2 = bits(valid_counter_1, 1, 0)
    node _Acc_Buffer_T_2_1 = io_in_psum_1 @[Accumulator_Array.scala 26:{39,39}]
    node _GEN_16 = mux(eq(UInt<1>("h0"), _T_2), _Acc_Buffer_T_2_1, Acc_Buffer_0_1) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_17 = mux(eq(UInt<1>("h1"), _T_2), _Acc_Buffer_T_2_1, Acc_Buffer_1_1) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_18 = mux(eq(UInt<2>("h2"), _T_2), _Acc_Buffer_T_2_1, Acc_Buffer_2_1) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_19 = mux(eq(UInt<2>("h3"), _T_2), _Acc_Buffer_T_2_1, Acc_Buffer_3_1) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _T_3 = bits(valid_counter_1, 1, 0)
    node _Acc_Buffer_1_T = bits(valid_counter_1, 1, 0)
    node _GEN_24 = validif(eq(UInt<1>("h0"), _Acc_Buffer_1_T), Acc_Buffer_0_1) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_25 = mux(eq(UInt<1>("h1"), _Acc_Buffer_1_T), Acc_Buffer_1_1, _GEN_24) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_26 = mux(eq(UInt<2>("h2"), _Acc_Buffer_1_T), Acc_Buffer_2_1, _GEN_25) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_27 = mux(eq(UInt<2>("h3"), _Acc_Buffer_1_T), Acc_Buffer_3_1, _GEN_26) @[Accumulator_Array.scala 28:{39,39}]
    node _Acc_Buffer_Acc_Buffer_1_T_1 = _GEN_27 @[Accumulator_Array.scala 28:39]
    node _Acc_Buffer_T_3_1 = _Acc_Buffer_Acc_Buffer_1_T_1 @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_20 = mux(eq(UInt<1>("h0"), _T_3), _Acc_Buffer_T_3_1, Acc_Buffer_0_1) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_21 = mux(eq(UInt<1>("h1"), _T_3), _Acc_Buffer_T_3_1, Acc_Buffer_1_1) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_22 = mux(eq(UInt<2>("h2"), _T_3), _Acc_Buffer_T_3_1, Acc_Buffer_2_1) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_23 = mux(eq(UInt<2>("h3"), _T_3), _Acc_Buffer_T_3_1, Acc_Buffer_3_1) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_28 = mux(io_in_valid_1, _GEN_16, _GEN_20) @[Accumulator_Array.scala 25:26]
    node _GEN_29 = mux(io_in_valid_1, _GEN_17, _GEN_21) @[Accumulator_Array.scala 25:26]
    node _GEN_30 = mux(io_in_valid_1, _GEN_18, _GEN_22) @[Accumulator_Array.scala 25:26]
    node _GEN_31 = mux(io_in_valid_1, _GEN_19, _GEN_23) @[Accumulator_Array.scala 25:26]
    node _T_4 = bits(valid_counter_2, 1, 0)
    node _Acc_Buffer_T_4_2 = io_in_psum_2 @[Accumulator_Array.scala 26:{39,39}]
    node _GEN_32 = mux(eq(UInt<1>("h0"), _T_4), _Acc_Buffer_T_4_2, Acc_Buffer_0_2) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_33 = mux(eq(UInt<1>("h1"), _T_4), _Acc_Buffer_T_4_2, Acc_Buffer_1_2) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_34 = mux(eq(UInt<2>("h2"), _T_4), _Acc_Buffer_T_4_2, Acc_Buffer_2_2) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_35 = mux(eq(UInt<2>("h3"), _T_4), _Acc_Buffer_T_4_2, Acc_Buffer_3_2) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _T_5 = bits(valid_counter_2, 1, 0)
    node _Acc_Buffer_2_T = bits(valid_counter_2, 1, 0)
    node _GEN_40 = validif(eq(UInt<1>("h0"), _Acc_Buffer_2_T), Acc_Buffer_0_2) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_41 = mux(eq(UInt<1>("h1"), _Acc_Buffer_2_T), Acc_Buffer_1_2, _GEN_40) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_42 = mux(eq(UInt<2>("h2"), _Acc_Buffer_2_T), Acc_Buffer_2_2, _GEN_41) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_43 = mux(eq(UInt<2>("h3"), _Acc_Buffer_2_T), Acc_Buffer_3_2, _GEN_42) @[Accumulator_Array.scala 28:{39,39}]
    node _Acc_Buffer_Acc_Buffer_2_T_2 = _GEN_43 @[Accumulator_Array.scala 28:39]
    node _Acc_Buffer_T_5_2 = _Acc_Buffer_Acc_Buffer_2_T_2 @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_36 = mux(eq(UInt<1>("h0"), _T_5), _Acc_Buffer_T_5_2, Acc_Buffer_0_2) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_37 = mux(eq(UInt<1>("h1"), _T_5), _Acc_Buffer_T_5_2, Acc_Buffer_1_2) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_38 = mux(eq(UInt<2>("h2"), _T_5), _Acc_Buffer_T_5_2, Acc_Buffer_2_2) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_39 = mux(eq(UInt<2>("h3"), _T_5), _Acc_Buffer_T_5_2, Acc_Buffer_3_2) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_44 = mux(io_in_valid_2, _GEN_32, _GEN_36) @[Accumulator_Array.scala 25:26]
    node _GEN_45 = mux(io_in_valid_2, _GEN_33, _GEN_37) @[Accumulator_Array.scala 25:26]
    node _GEN_46 = mux(io_in_valid_2, _GEN_34, _GEN_38) @[Accumulator_Array.scala 25:26]
    node _GEN_47 = mux(io_in_valid_2, _GEN_35, _GEN_39) @[Accumulator_Array.scala 25:26]
    node _T_6 = bits(valid_counter_3, 1, 0)
    node _Acc_Buffer_T_6_3 = io_in_psum_3 @[Accumulator_Array.scala 26:{39,39}]
    node _GEN_48 = mux(eq(UInt<1>("h0"), _T_6), _Acc_Buffer_T_6_3, Acc_Buffer_0_3) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_49 = mux(eq(UInt<1>("h1"), _T_6), _Acc_Buffer_T_6_3, Acc_Buffer_1_3) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_50 = mux(eq(UInt<2>("h2"), _T_6), _Acc_Buffer_T_6_3, Acc_Buffer_2_3) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _GEN_51 = mux(eq(UInt<2>("h3"), _T_6), _Acc_Buffer_T_6_3, Acc_Buffer_3_3) @[Accumulator_Array.scala 20:27 26:{39,39}]
    node _T_7 = bits(valid_counter_3, 1, 0)
    node _Acc_Buffer_3_T = bits(valid_counter_3, 1, 0)
    node _GEN_56 = validif(eq(UInt<1>("h0"), _Acc_Buffer_3_T), Acc_Buffer_0_3) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_57 = mux(eq(UInt<1>("h1"), _Acc_Buffer_3_T), Acc_Buffer_1_3, _GEN_56) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_58 = mux(eq(UInt<2>("h2"), _Acc_Buffer_3_T), Acc_Buffer_2_3, _GEN_57) @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_59 = mux(eq(UInt<2>("h3"), _Acc_Buffer_3_T), Acc_Buffer_3_3, _GEN_58) @[Accumulator_Array.scala 28:{39,39}]
    node _Acc_Buffer_Acc_Buffer_3_T_3 = _GEN_59 @[Accumulator_Array.scala 28:39]
    node _Acc_Buffer_T_7_3 = _Acc_Buffer_Acc_Buffer_3_T_3 @[Accumulator_Array.scala 28:{39,39}]
    node _GEN_52 = mux(eq(UInt<1>("h0"), _T_7), _Acc_Buffer_T_7_3, Acc_Buffer_0_3) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_53 = mux(eq(UInt<1>("h1"), _T_7), _Acc_Buffer_T_7_3, Acc_Buffer_1_3) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_54 = mux(eq(UInt<2>("h2"), _T_7), _Acc_Buffer_T_7_3, Acc_Buffer_2_3) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_55 = mux(eq(UInt<2>("h3"), _T_7), _Acc_Buffer_T_7_3, Acc_Buffer_3_3) @[Accumulator_Array.scala 20:27 28:{39,39}]
    node _GEN_60 = mux(io_in_valid_3, _GEN_48, _GEN_52) @[Accumulator_Array.scala 25:26]
    node _GEN_61 = mux(io_in_valid_3, _GEN_49, _GEN_53) @[Accumulator_Array.scala 25:26]
    node _GEN_62 = mux(io_in_valid_3, _GEN_50, _GEN_54) @[Accumulator_Array.scala 25:26]
    node _GEN_63 = mux(io_in_valid_3, _GEN_51, _GEN_55) @[Accumulator_Array.scala 25:26]
    node _T_8 = lt(valid_counter_0, UInt<2>("h3")) @[Accumulator_Array.scala 34:46]
    node _T_9 = and(io_in_valid_0, _T_8) @[Accumulator_Array.scala 34:25]
    node _valid_counter_0_T = add(valid_counter_0, UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
    node _valid_counter_0_T_1 = tail(_valid_counter_0_T, 1) @[Accumulator_Array.scala 35:44]
    node _T_10 = eq(valid_counter_0, UInt<2>("h3")) @[Accumulator_Array.scala 36:33]
    node _GEN_64 = mux(_T_10, UInt<1>("h0"), valid_counter_0) @[Accumulator_Array.scala 36:55 37:24 39:24]
    node _GEN_65 = mux(_T_9, _valid_counter_0_T_1, _GEN_64) @[Accumulator_Array.scala 34:67 35:24]
    node _T_11 = lt(valid_counter_1, UInt<2>("h3")) @[Accumulator_Array.scala 34:46]
    node _T_12 = and(io_in_valid_1, _T_11) @[Accumulator_Array.scala 34:25]
    node _valid_counter_1_T = add(valid_counter_1, UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
    node _valid_counter_1_T_1 = tail(_valid_counter_1_T, 1) @[Accumulator_Array.scala 35:44]
    node _T_13 = eq(valid_counter_1, UInt<2>("h3")) @[Accumulator_Array.scala 36:33]
    node _GEN_66 = mux(_T_13, UInt<1>("h0"), valid_counter_1) @[Accumulator_Array.scala 36:55 37:24 39:24]
    node _GEN_67 = mux(_T_12, _valid_counter_1_T_1, _GEN_66) @[Accumulator_Array.scala 34:67 35:24]
    node _T_14 = lt(valid_counter_2, UInt<2>("h3")) @[Accumulator_Array.scala 34:46]
    node _T_15 = and(io_in_valid_2, _T_14) @[Accumulator_Array.scala 34:25]
    node _valid_counter_2_T = add(valid_counter_2, UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
    node _valid_counter_2_T_1 = tail(_valid_counter_2_T, 1) @[Accumulator_Array.scala 35:44]
    node _T_16 = eq(valid_counter_2, UInt<2>("h3")) @[Accumulator_Array.scala 36:33]
    node _GEN_68 = mux(_T_16, UInt<1>("h0"), valid_counter_2) @[Accumulator_Array.scala 36:55 37:24 39:24]
    node _GEN_69 = mux(_T_15, _valid_counter_2_T_1, _GEN_68) @[Accumulator_Array.scala 34:67 35:24]
    node _T_17 = lt(valid_counter_3, UInt<2>("h3")) @[Accumulator_Array.scala 34:46]
    node _T_18 = and(io_in_valid_3, _T_17) @[Accumulator_Array.scala 34:25]
    node _valid_counter_3_T = add(valid_counter_3, UInt<1>("h1")) @[Accumulator_Array.scala 35:44]
    node _valid_counter_3_T_1 = tail(_valid_counter_3_T, 1) @[Accumulator_Array.scala 35:44]
    node _T_19 = eq(valid_counter_3, UInt<2>("h3")) @[Accumulator_Array.scala 36:33]
    node _GEN_70 = mux(_T_19, UInt<1>("h0"), valid_counter_3) @[Accumulator_Array.scala 36:55 37:24 39:24]
    node _GEN_71 = mux(_T_18, _valid_counter_3_T_1, _GEN_70) @[Accumulator_Array.scala 34:67 35:24]
    reg acc_counter : UInt<3>, clock with :
      reset => (UInt<1>("h0"), acc_counter) @[Accumulator_Array.scala 43:28]
    node _T_20 = eq(acc_counter, UInt<1>("h0")) @[Accumulator_Array.scala 45:34]
    node _T_21 = and(io_in_acc, _T_20) @[Accumulator_Array.scala 45:18]
    node _acc_counter_T = add(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 46:32]
    node _acc_counter_T_1 = tail(_acc_counter_T, 1) @[Accumulator_Array.scala 46:32]
    node _T_22 = eq(acc_counter, UInt<3>("h4")) @[Accumulator_Array.scala 47:26]
    node _T_23 = neq(acc_counter, UInt<1>("h0")) @[Accumulator_Array.scala 49:26]
    node _acc_counter_T_2 = add(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 50:32]
    node _acc_counter_T_3 = tail(_acc_counter_T_2, 1) @[Accumulator_Array.scala 50:32]
    node _GEN_72 = mux(_T_23, _acc_counter_T_3, acc_counter) @[Accumulator_Array.scala 49:35 50:17 52:17]
    node _GEN_73 = mux(_T_22, UInt<1>("h0"), _GEN_72) @[Accumulator_Array.scala 47:43 48:17]
    node _GEN_74 = mux(_T_21, _acc_counter_T_1, _GEN_73) @[Accumulator_Array.scala 45:44 46:17]
    node _T_24 = neq(acc_counter, UInt<1>("h0")) @[Accumulator_Array.scala 55:20]
    node _T_25 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
    node _T_26 = tail(_T_25, 1) @[Accumulator_Array.scala 57:30]
    node _T_27 = bits(_T_26, 1, 0)
    node _Acc_Result_0_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
    node _Acc_Result_0_T_1 = tail(_Acc_Result_0_T, 1) @[Accumulator_Array.scala 57:66]
    node _Acc_Result_0_T_2 = bits(_Acc_Result_0_T_1, 1, 0)
    node _Acc_Result_0_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
    node _Acc_Result_0_T_4 = tail(_Acc_Result_0_T_3, 1) @[Accumulator_Array.scala 57:101]
    node _Acc_Result_0_T_5 = bits(_Acc_Result_0_T_4, 1, 0)
    node _GEN_75 = validif(eq(UInt<1>("h0"), _Acc_Result_0_T_2), Acc_Result_0_0) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_76 = mux(eq(UInt<1>("h1"), _Acc_Result_0_T_2), Acc_Result_1_0, _GEN_75) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_77 = mux(eq(UInt<2>("h2"), _Acc_Result_0_T_2), Acc_Result_2_0, _GEN_76) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_78 = mux(eq(UInt<2>("h3"), _Acc_Result_0_T_2), Acc_Result_3_0, _GEN_77) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_79 = validif(eq(UInt<1>("h0"), _Acc_Result_0_T_5), Acc_Buffer_0_0) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_80 = mux(eq(UInt<1>("h1"), _Acc_Result_0_T_5), Acc_Buffer_1_0, _GEN_79) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_81 = mux(eq(UInt<2>("h2"), _Acc_Result_0_T_5), Acc_Buffer_2_0, _GEN_80) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_82 = mux(eq(UInt<2>("h3"), _Acc_Result_0_T_5), Acc_Buffer_3_0, _GEN_81) @[Accumulator_Array.scala 57:{76,76}]
    node _Acc_Result_Acc_Result_0_T_2_0 = _GEN_78 @[Accumulator_Array.scala 57:76]
    node _Acc_Buffer_Acc_Result_0_T_5_0 = _GEN_82 @[Accumulator_Array.scala 57:76]
    node _Acc_Result_0_T_6 = add(_Acc_Result_Acc_Result_0_T_2_0, _Acc_Buffer_Acc_Result_0_T_5_0) @[Accumulator_Array.scala 57:76]
    node _Acc_Result_0_T_7 = tail(_Acc_Result_0_T_6, 1) @[Accumulator_Array.scala 57:76]
    node _Acc_Result_T_27_0 = _Acc_Result_0_T_7 @[Accumulator_Array.scala 57:{40,40}]
    node _GEN_83 = mux(eq(UInt<1>("h0"), _T_27), _Acc_Result_T_27_0, Acc_Result_0_0) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_84 = mux(eq(UInt<1>("h1"), _T_27), _Acc_Result_T_27_0, Acc_Result_1_0) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_85 = mux(eq(UInt<2>("h2"), _T_27), _Acc_Result_T_27_0, Acc_Result_2_0) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_86 = mux(eq(UInt<2>("h3"), _T_27), _Acc_Result_T_27_0, Acc_Result_3_0) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _T_28 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
    node _T_29 = tail(_T_28, 1) @[Accumulator_Array.scala 57:30]
    node _T_30 = bits(_T_29, 1, 0)
    node _Acc_Result_1_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
    node _Acc_Result_1_T_1 = tail(_Acc_Result_1_T, 1) @[Accumulator_Array.scala 57:66]
    node _Acc_Result_1_T_2 = bits(_Acc_Result_1_T_1, 1, 0)
    node _Acc_Result_1_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
    node _Acc_Result_1_T_4 = tail(_Acc_Result_1_T_3, 1) @[Accumulator_Array.scala 57:101]
    node _Acc_Result_1_T_5 = bits(_Acc_Result_1_T_4, 1, 0)
    node _GEN_87 = validif(eq(UInt<1>("h0"), _Acc_Result_1_T_2), Acc_Result_0_1) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_88 = mux(eq(UInt<1>("h1"), _Acc_Result_1_T_2), Acc_Result_1_1, _GEN_87) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_89 = mux(eq(UInt<2>("h2"), _Acc_Result_1_T_2), Acc_Result_2_1, _GEN_88) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_90 = mux(eq(UInt<2>("h3"), _Acc_Result_1_T_2), Acc_Result_3_1, _GEN_89) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_91 = validif(eq(UInt<1>("h0"), _Acc_Result_1_T_5), Acc_Buffer_0_1) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_92 = mux(eq(UInt<1>("h1"), _Acc_Result_1_T_5), Acc_Buffer_1_1, _GEN_91) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_93 = mux(eq(UInt<2>("h2"), _Acc_Result_1_T_5), Acc_Buffer_2_1, _GEN_92) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_94 = mux(eq(UInt<2>("h3"), _Acc_Result_1_T_5), Acc_Buffer_3_1, _GEN_93) @[Accumulator_Array.scala 57:{76,76}]
    node _Acc_Result_Acc_Result_1_T_2_1 = _GEN_90 @[Accumulator_Array.scala 57:76]
    node _Acc_Buffer_Acc_Result_1_T_5_1 = _GEN_94 @[Accumulator_Array.scala 57:76]
    node _Acc_Result_1_T_6 = add(_Acc_Result_Acc_Result_1_T_2_1, _Acc_Buffer_Acc_Result_1_T_5_1) @[Accumulator_Array.scala 57:76]
    node _Acc_Result_1_T_7 = tail(_Acc_Result_1_T_6, 1) @[Accumulator_Array.scala 57:76]
    node _Acc_Result_T_30_1 = _Acc_Result_1_T_7 @[Accumulator_Array.scala 57:{40,40}]
    node _GEN_95 = mux(eq(UInt<1>("h0"), _T_30), _Acc_Result_T_30_1, Acc_Result_0_1) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_96 = mux(eq(UInt<1>("h1"), _T_30), _Acc_Result_T_30_1, Acc_Result_1_1) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_97 = mux(eq(UInt<2>("h2"), _T_30), _Acc_Result_T_30_1, Acc_Result_2_1) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_98 = mux(eq(UInt<2>("h3"), _T_30), _Acc_Result_T_30_1, Acc_Result_3_1) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _T_31 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
    node _T_32 = tail(_T_31, 1) @[Accumulator_Array.scala 57:30]
    node _T_33 = bits(_T_32, 1, 0)
    node _Acc_Result_2_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
    node _Acc_Result_2_T_1 = tail(_Acc_Result_2_T, 1) @[Accumulator_Array.scala 57:66]
    node _Acc_Result_2_T_2 = bits(_Acc_Result_2_T_1, 1, 0)
    node _Acc_Result_2_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
    node _Acc_Result_2_T_4 = tail(_Acc_Result_2_T_3, 1) @[Accumulator_Array.scala 57:101]
    node _Acc_Result_2_T_5 = bits(_Acc_Result_2_T_4, 1, 0)
    node _GEN_99 = validif(eq(UInt<1>("h0"), _Acc_Result_2_T_2), Acc_Result_0_2) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_100 = mux(eq(UInt<1>("h1"), _Acc_Result_2_T_2), Acc_Result_1_2, _GEN_99) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_101 = mux(eq(UInt<2>("h2"), _Acc_Result_2_T_2), Acc_Result_2_2, _GEN_100) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_102 = mux(eq(UInt<2>("h3"), _Acc_Result_2_T_2), Acc_Result_3_2, _GEN_101) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_103 = validif(eq(UInt<1>("h0"), _Acc_Result_2_T_5), Acc_Buffer_0_2) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_104 = mux(eq(UInt<1>("h1"), _Acc_Result_2_T_5), Acc_Buffer_1_2, _GEN_103) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_105 = mux(eq(UInt<2>("h2"), _Acc_Result_2_T_5), Acc_Buffer_2_2, _GEN_104) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_106 = mux(eq(UInt<2>("h3"), _Acc_Result_2_T_5), Acc_Buffer_3_2, _GEN_105) @[Accumulator_Array.scala 57:{76,76}]
    node _Acc_Result_Acc_Result_2_T_2_2 = _GEN_102 @[Accumulator_Array.scala 57:76]
    node _Acc_Buffer_Acc_Result_2_T_5_2 = _GEN_106 @[Accumulator_Array.scala 57:76]
    node _Acc_Result_2_T_6 = add(_Acc_Result_Acc_Result_2_T_2_2, _Acc_Buffer_Acc_Result_2_T_5_2) @[Accumulator_Array.scala 57:76]
    node _Acc_Result_2_T_7 = tail(_Acc_Result_2_T_6, 1) @[Accumulator_Array.scala 57:76]
    node _Acc_Result_T_33_2 = _Acc_Result_2_T_7 @[Accumulator_Array.scala 57:{40,40}]
    node _GEN_107 = mux(eq(UInt<1>("h0"), _T_33), _Acc_Result_T_33_2, Acc_Result_0_2) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_108 = mux(eq(UInt<1>("h1"), _T_33), _Acc_Result_T_33_2, Acc_Result_1_2) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_109 = mux(eq(UInt<2>("h2"), _T_33), _Acc_Result_T_33_2, Acc_Result_2_2) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_110 = mux(eq(UInt<2>("h3"), _T_33), _Acc_Result_T_33_2, Acc_Result_3_2) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _T_34 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:30]
    node _T_35 = tail(_T_34, 1) @[Accumulator_Array.scala 57:30]
    node _T_36 = bits(_T_35, 1, 0)
    node _Acc_Result_3_T = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:66]
    node _Acc_Result_3_T_1 = tail(_Acc_Result_3_T, 1) @[Accumulator_Array.scala 57:66]
    node _Acc_Result_3_T_2 = bits(_Acc_Result_3_T_1, 1, 0)
    node _Acc_Result_3_T_3 = sub(acc_counter, UInt<1>("h1")) @[Accumulator_Array.scala 57:101]
    node _Acc_Result_3_T_4 = tail(_Acc_Result_3_T_3, 1) @[Accumulator_Array.scala 57:101]
    node _Acc_Result_3_T_5 = bits(_Acc_Result_3_T_4, 1, 0)
    node _GEN_111 = validif(eq(UInt<1>("h0"), _Acc_Result_3_T_2), Acc_Result_0_3) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_112 = mux(eq(UInt<1>("h1"), _Acc_Result_3_T_2), Acc_Result_1_3, _GEN_111) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_113 = mux(eq(UInt<2>("h2"), _Acc_Result_3_T_2), Acc_Result_2_3, _GEN_112) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_114 = mux(eq(UInt<2>("h3"), _Acc_Result_3_T_2), Acc_Result_3_3, _GEN_113) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_115 = validif(eq(UInt<1>("h0"), _Acc_Result_3_T_5), Acc_Buffer_0_3) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_116 = mux(eq(UInt<1>("h1"), _Acc_Result_3_T_5), Acc_Buffer_1_3, _GEN_115) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_117 = mux(eq(UInt<2>("h2"), _Acc_Result_3_T_5), Acc_Buffer_2_3, _GEN_116) @[Accumulator_Array.scala 57:{76,76}]
    node _GEN_118 = mux(eq(UInt<2>("h3"), _Acc_Result_3_T_5), Acc_Buffer_3_3, _GEN_117) @[Accumulator_Array.scala 57:{76,76}]
    node _Acc_Result_Acc_Result_3_T_2_3 = _GEN_114 @[Accumulator_Array.scala 57:76]
    node _Acc_Buffer_Acc_Result_3_T_5_3 = _GEN_118 @[Accumulator_Array.scala 57:76]
    node _Acc_Result_3_T_6 = add(_Acc_Result_Acc_Result_3_T_2_3, _Acc_Buffer_Acc_Result_3_T_5_3) @[Accumulator_Array.scala 57:76]
    node _Acc_Result_3_T_7 = tail(_Acc_Result_3_T_6, 1) @[Accumulator_Array.scala 57:76]
    node _Acc_Result_T_36_3 = _Acc_Result_3_T_7 @[Accumulator_Array.scala 57:{40,40}]
    node _GEN_119 = mux(eq(UInt<1>("h0"), _T_36), _Acc_Result_T_36_3, Acc_Result_0_3) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_120 = mux(eq(UInt<1>("h1"), _T_36), _Acc_Result_T_36_3, Acc_Result_1_3) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_121 = mux(eq(UInt<2>("h2"), _T_36), _Acc_Result_T_36_3, Acc_Result_2_3) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_122 = mux(eq(UInt<2>("h3"), _T_36), _Acc_Result_T_36_3, Acc_Result_3_3) @[Accumulator_Array.scala 21:27 57:{40,40}]
    node _GEN_123 = mux(_T_24, _GEN_83, Acc_Result_0_0) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_124 = mux(_T_24, _GEN_84, Acc_Result_1_0) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_125 = mux(_T_24, _GEN_85, Acc_Result_2_0) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_126 = mux(_T_24, _GEN_86, Acc_Result_3_0) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_127 = mux(_T_24, _GEN_95, Acc_Result_0_1) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_128 = mux(_T_24, _GEN_96, Acc_Result_1_1) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_129 = mux(_T_24, _GEN_97, Acc_Result_2_1) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_130 = mux(_T_24, _GEN_98, Acc_Result_3_1) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_131 = mux(_T_24, _GEN_107, Acc_Result_0_2) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_132 = mux(_T_24, _GEN_108, Acc_Result_1_2) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_133 = mux(_T_24, _GEN_109, Acc_Result_2_2) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_134 = mux(_T_24, _GEN_110, Acc_Result_3_2) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_135 = mux(_T_24, _GEN_119, Acc_Result_0_3) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_136 = mux(_T_24, _GEN_120, Acc_Result_1_3) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_137 = mux(_T_24, _GEN_121, Acc_Result_2_3) @[Accumulator_Array.scala 21:27 55:29]
    node _GEN_138 = mux(_T_24, _GEN_122, Acc_Result_3_3) @[Accumulator_Array.scala 21:27 55:29]
    node _T_37 = eq(acc_counter, UInt<3>("h4")) @[Accumulator_Array.scala 61:20]
    node _GEN_139 = mux(_T_37, UInt<1>("h1"), UInt<1>("h0")) @[Accumulator_Array.scala 61:37 62:15 64:15]
    node _WIRE__0 = Acc_Result_0_0 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_0 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_140 = mux(io_in_compute_done, _WIRE__0, _WIRE_1_0) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__1 = Acc_Result_0_1 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_1 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_141 = mux(io_in_compute_done, _WIRE__1, _WIRE_1_1) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__2 = Acc_Result_0_2 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_2 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_142 = mux(io_in_compute_done, _WIRE__2, _WIRE_1_2) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__3 = Acc_Result_0_3 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_3 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_143 = mux(io_in_compute_done, _WIRE__3, _WIRE_1_3) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__4 = Acc_Result_1_0 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_4 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_144 = mux(io_in_compute_done, _WIRE__4, _WIRE_1_4) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__5 = Acc_Result_1_1 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_5 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_145 = mux(io_in_compute_done, _WIRE__5, _WIRE_1_5) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__6 = Acc_Result_1_2 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_6 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_146 = mux(io_in_compute_done, _WIRE__6, _WIRE_1_6) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__7 = Acc_Result_1_3 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_7 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_147 = mux(io_in_compute_done, _WIRE__7, _WIRE_1_7) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__8 = Acc_Result_2_0 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_8 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_148 = mux(io_in_compute_done, _WIRE__8, _WIRE_1_8) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__9 = Acc_Result_2_1 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_9 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_149 = mux(io_in_compute_done, _WIRE__9, _WIRE_1_9) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__10 = Acc_Result_2_2 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_10 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_150 = mux(io_in_compute_done, _WIRE__10, _WIRE_1_10) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__11 = Acc_Result_2_3 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_11 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_151 = mux(io_in_compute_done, _WIRE__11, _WIRE_1_11) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__12 = Acc_Result_3_0 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_12 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_152 = mux(io_in_compute_done, _WIRE__12, _WIRE_1_12) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__13 = Acc_Result_3_1 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_13 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_153 = mux(io_in_compute_done, _WIRE__13, _WIRE_1_13) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__14 = Acc_Result_3_2 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_14 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_154 = mux(io_in_compute_done, _WIRE__14, _WIRE_1_14) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _WIRE__15 = Acc_Result_3_3 @[Accumulator_Array.scala 68:{26,26}]
    node _WIRE_1_15 = UInt<32>("h0") @[Accumulator_Array.scala 71:{26,26}]
    node _GEN_155 = mux(io_in_compute_done, _WIRE__15, _WIRE_1_15) @[Accumulator_Array.scala 67:28 68:16 71:16]
    node _GEN_156 = mux(io_in_compute_done, UInt<1>("h1"), UInt<1>("h0")) @[Accumulator_Array.scala 67:28 69:14 72:14]
    node _Acc_Buffer_WIRE__0 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE__1 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE__2 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE__3 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_1_0 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_1_1 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_1_2 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_1_3 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_2_0 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_2_1 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_2_2 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_2_3 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_3_0 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_3_1 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_3_2 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_3_3 = UInt<16>("h0") @[Accumulator_Array.scala 20:{62,62}]
    node _Acc_Buffer_WIRE_4_0_0 = _Acc_Buffer_WIRE__0 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_0_1 = _Acc_Buffer_WIRE__1 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_0_2 = _Acc_Buffer_WIRE__2 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_0_3 = _Acc_Buffer_WIRE__3 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_1_0 = _Acc_Buffer_WIRE_1_0 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_1_1 = _Acc_Buffer_WIRE_1_1 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_1_2 = _Acc_Buffer_WIRE_1_2 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_1_3 = _Acc_Buffer_WIRE_1_3 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_2_0 = _Acc_Buffer_WIRE_2_0 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_2_1 = _Acc_Buffer_WIRE_2_1 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_2_2 = _Acc_Buffer_WIRE_2_2 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_2_3 = _Acc_Buffer_WIRE_2_3 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_3_0 = _Acc_Buffer_WIRE_3_0 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_3_1 = _Acc_Buffer_WIRE_3_1 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_3_2 = _Acc_Buffer_WIRE_3_2 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Buffer_WIRE_4_3_3 = _Acc_Buffer_WIRE_3_3 @[Accumulator_Array.scala 20:{35,35}]
    node _Acc_Result_WIRE__0 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE__1 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE__2 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE__3 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_1_0 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_1_1 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_1_2 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_1_3 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_2_0 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_2_1 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_2_2 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_2_3 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_3_0 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_3_1 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_3_2 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_3_3 = UInt<32>("h0") @[Accumulator_Array.scala 21:{62,62}]
    node _Acc_Result_WIRE_4_0_0 = _Acc_Result_WIRE__0 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_0_1 = _Acc_Result_WIRE__1 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_0_2 = _Acc_Result_WIRE__2 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_0_3 = _Acc_Result_WIRE__3 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_1_0 = _Acc_Result_WIRE_1_0 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_1_1 = _Acc_Result_WIRE_1_1 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_1_2 = _Acc_Result_WIRE_1_2 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_1_3 = _Acc_Result_WIRE_1_3 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_2_0 = _Acc_Result_WIRE_2_0 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_2_1 = _Acc_Result_WIRE_2_1 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_2_2 = _Acc_Result_WIRE_2_2 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_2_3 = _Acc_Result_WIRE_2_3 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_3_0 = _Acc_Result_WIRE_3_0 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_3_1 = _Acc_Result_WIRE_3_1 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_3_2 = _Acc_Result_WIRE_3_2 @[Accumulator_Array.scala 21:{35,35}]
    node _Acc_Result_WIRE_4_3_3 = _Acc_Result_WIRE_3_3 @[Accumulator_Array.scala 21:{35,35}]
    node _valid_counter_WIRE_0 = UInt<3>("h0") @[Accumulator_Array.scala 22:{38,38}]
    node _valid_counter_WIRE_1 = UInt<3>("h0") @[Accumulator_Array.scala 22:{38,38}]
    node _valid_counter_WIRE_2 = UInt<3>("h0") @[Accumulator_Array.scala 22:{38,38}]
    node _valid_counter_WIRE_3 = UInt<3>("h0") @[Accumulator_Array.scala 22:{38,38}]
    io_isdone <= _GEN_139
    io_out_sum_0 <= _GEN_140
    io_out_sum_1 <= _GEN_141
    io_out_sum_2 <= _GEN_142
    io_out_sum_3 <= _GEN_143
    io_out_sum_4 <= _GEN_144
    io_out_sum_5 <= _GEN_145
    io_out_sum_6 <= _GEN_146
    io_out_sum_7 <= _GEN_147
    io_out_sum_8 <= _GEN_148
    io_out_sum_9 <= _GEN_149
    io_out_sum_10 <= _GEN_150
    io_out_sum_11 <= _GEN_151
    io_out_sum_12 <= _GEN_152
    io_out_sum_13 <= _GEN_153
    io_out_sum_14 <= _GEN_154
    io_out_sum_15 <= _GEN_155
    io_valid <= _GEN_156
    Acc_Buffer_0_0 <= mux(reset, _Acc_Buffer_WIRE_4_0_0, _GEN_12) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_0_1 <= mux(reset, _Acc_Buffer_WIRE_4_0_1, _GEN_28) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_0_2 <= mux(reset, _Acc_Buffer_WIRE_4_0_2, _GEN_44) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_0_3 <= mux(reset, _Acc_Buffer_WIRE_4_0_3, _GEN_60) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_1_0 <= mux(reset, _Acc_Buffer_WIRE_4_1_0, _GEN_13) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_1_1 <= mux(reset, _Acc_Buffer_WIRE_4_1_1, _GEN_29) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_1_2 <= mux(reset, _Acc_Buffer_WIRE_4_1_2, _GEN_45) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_1_3 <= mux(reset, _Acc_Buffer_WIRE_4_1_3, _GEN_61) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_2_0 <= mux(reset, _Acc_Buffer_WIRE_4_2_0, _GEN_14) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_2_1 <= mux(reset, _Acc_Buffer_WIRE_4_2_1, _GEN_30) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_2_2 <= mux(reset, _Acc_Buffer_WIRE_4_2_2, _GEN_46) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_2_3 <= mux(reset, _Acc_Buffer_WIRE_4_2_3, _GEN_62) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_3_0 <= mux(reset, _Acc_Buffer_WIRE_4_3_0, _GEN_15) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_3_1 <= mux(reset, _Acc_Buffer_WIRE_4_3_1, _GEN_31) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_3_2 <= mux(reset, _Acc_Buffer_WIRE_4_3_2, _GEN_47) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Buffer_3_3 <= mux(reset, _Acc_Buffer_WIRE_4_3_3, _GEN_63) @[Accumulator_Array.scala 20:{27,27}]
    Acc_Result_0_0 <= mux(reset, _Acc_Result_WIRE_4_0_0, _GEN_123) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_0_1 <= mux(reset, _Acc_Result_WIRE_4_0_1, _GEN_127) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_0_2 <= mux(reset, _Acc_Result_WIRE_4_0_2, _GEN_131) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_0_3 <= mux(reset, _Acc_Result_WIRE_4_0_3, _GEN_135) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_1_0 <= mux(reset, _Acc_Result_WIRE_4_1_0, _GEN_124) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_1_1 <= mux(reset, _Acc_Result_WIRE_4_1_1, _GEN_128) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_1_2 <= mux(reset, _Acc_Result_WIRE_4_1_2, _GEN_132) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_1_3 <= mux(reset, _Acc_Result_WIRE_4_1_3, _GEN_136) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_2_0 <= mux(reset, _Acc_Result_WIRE_4_2_0, _GEN_125) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_2_1 <= mux(reset, _Acc_Result_WIRE_4_2_1, _GEN_129) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_2_2 <= mux(reset, _Acc_Result_WIRE_4_2_2, _GEN_133) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_2_3 <= mux(reset, _Acc_Result_WIRE_4_2_3, _GEN_137) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_3_0 <= mux(reset, _Acc_Result_WIRE_4_3_0, _GEN_126) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_3_1 <= mux(reset, _Acc_Result_WIRE_4_3_1, _GEN_130) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_3_2 <= mux(reset, _Acc_Result_WIRE_4_3_2, _GEN_134) @[Accumulator_Array.scala 21:{27,27}]
    Acc_Result_3_3 <= mux(reset, _Acc_Result_WIRE_4_3_3, _GEN_138) @[Accumulator_Array.scala 21:{27,27}]
    valid_counter_0 <= mux(reset, _valid_counter_WIRE_0, _GEN_65) @[Accumulator_Array.scala 22:{30,30}]
    valid_counter_1 <= mux(reset, _valid_counter_WIRE_1, _GEN_67) @[Accumulator_Array.scala 22:{30,30}]
    valid_counter_2 <= mux(reset, _valid_counter_WIRE_2, _GEN_69) @[Accumulator_Array.scala 22:{30,30}]
    valid_counter_3 <= mux(reset, _valid_counter_WIRE_3, _GEN_71) @[Accumulator_Array.scala 22:{30,30}]
    acc_counter <= mux(reset, UInt<3>("h0"), _GEN_74) @[Accumulator_Array.scala 43:{28,28}]
