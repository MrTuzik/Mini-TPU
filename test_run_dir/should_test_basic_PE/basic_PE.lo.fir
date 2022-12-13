circuit basic_PE :
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
