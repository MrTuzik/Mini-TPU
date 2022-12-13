circuit Systolic_Array :
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

  module basic_PE_64 :
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

  module basic_PE_65 :
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

  module basic_PE_66 :
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

  module basic_PE_67 :
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

  module basic_PE_68 :
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

  module basic_PE_69 :
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

  module basic_PE_70 :
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

  module basic_PE_71 :
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

  module basic_PE_72 :
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

  module basic_PE_73 :
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

  module basic_PE_74 :
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

  module basic_PE_75 :
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

  module basic_PE_76 :
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

  module basic_PE_77 :
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

  module basic_PE_78 :
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

  module basic_PE_79 :
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

  module basic_PE_80 :
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

  module basic_PE_81 :
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

  module basic_PE_82 :
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

  module basic_PE_83 :
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

  module basic_PE_84 :
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

  module basic_PE_85 :
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

  module basic_PE_86 :
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

  module basic_PE_87 :
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

  module basic_PE_88 :
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

  module basic_PE_89 :
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

  module basic_PE_90 :
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

  module basic_PE_91 :
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

  module basic_PE_92 :
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

  module basic_PE_93 :
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

  module basic_PE_94 :
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

  module basic_PE_95 :
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

  module basic_PE_96 :
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

  module basic_PE_97 :
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

  module basic_PE_98 :
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

  module basic_PE_99 :
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

  module basic_PE_100 :
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

  module basic_PE_101 :
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

  module basic_PE_102 :
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

  module basic_PE_103 :
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

  module basic_PE_104 :
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

  module basic_PE_105 :
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

  module basic_PE_106 :
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

  module basic_PE_107 :
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

  module basic_PE_108 :
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

  module basic_PE_109 :
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

  module basic_PE_110 :
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

  module basic_PE_111 :
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

  module basic_PE_112 :
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

  module basic_PE_113 :
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

  module basic_PE_114 :
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

  module basic_PE_115 :
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

  module basic_PE_116 :
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

  module basic_PE_117 :
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

  module basic_PE_118 :
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

  module basic_PE_119 :
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

  module basic_PE_120 :
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

  module basic_PE_121 :
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

  module basic_PE_122 :
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

  module basic_PE_123 :
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

  module basic_PE_124 :
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

  module basic_PE_125 :
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

  module basic_PE_126 :
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

  module basic_PE_127 :
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

  module basic_PE_128 :
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

  module basic_PE_129 :
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

  module basic_PE_130 :
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

  module basic_PE_131 :
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

  module basic_PE_132 :
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

  module basic_PE_133 :
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

  module basic_PE_134 :
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

  module basic_PE_135 :
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

  module basic_PE_136 :
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

  module basic_PE_137 :
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

  module basic_PE_138 :
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

  module basic_PE_139 :
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

  module basic_PE_140 :
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

  module basic_PE_141 :
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

  module basic_PE_142 :
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

  module basic_PE_143 :
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

  module basic_PE_144 :
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

  module basic_PE_145 :
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

  module basic_PE_146 :
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

  module basic_PE_147 :
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

  module basic_PE_148 :
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

  module basic_PE_149 :
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

  module basic_PE_150 :
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

  module basic_PE_151 :
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

  module basic_PE_152 :
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

  module basic_PE_153 :
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

  module basic_PE_154 :
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

  module basic_PE_155 :
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

  module basic_PE_156 :
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

  module basic_PE_157 :
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

  module basic_PE_158 :
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

  module basic_PE_159 :
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

  module basic_PE_160 :
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

  module basic_PE_161 :
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

  module basic_PE_162 :
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

  module basic_PE_163 :
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

  module basic_PE_164 :
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

  module basic_PE_165 :
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

  module basic_PE_166 :
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

  module basic_PE_167 :
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

  module basic_PE_168 :
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

  module basic_PE_169 :
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

  module basic_PE_170 :
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

  module basic_PE_171 :
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

  module basic_PE_172 :
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

  module basic_PE_173 :
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

  module basic_PE_174 :
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

  module basic_PE_175 :
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

  module basic_PE_176 :
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

  module basic_PE_177 :
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

  module basic_PE_178 :
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

  module basic_PE_179 :
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

  module basic_PE_180 :
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

  module basic_PE_181 :
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

  module basic_PE_182 :
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

  module basic_PE_183 :
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

  module basic_PE_184 :
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

  module basic_PE_185 :
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

  module basic_PE_186 :
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

  module basic_PE_187 :
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

  module basic_PE_188 :
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

  module basic_PE_189 :
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

  module basic_PE_190 :
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

  module basic_PE_191 :
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

  module basic_PE_192 :
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

  module basic_PE_193 :
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

  module basic_PE_194 :
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

  module basic_PE_195 :
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

  module basic_PE_196 :
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

  module basic_PE_197 :
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

  module basic_PE_198 :
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

  module basic_PE_199 :
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

  module basic_PE_200 :
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

  module basic_PE_201 :
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

  module basic_PE_202 :
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

  module basic_PE_203 :
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

  module basic_PE_204 :
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

  module basic_PE_205 :
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

  module basic_PE_206 :
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

  module basic_PE_207 :
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

  module basic_PE_208 :
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

  module basic_PE_209 :
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

  module basic_PE_210 :
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

  module basic_PE_211 :
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

  module basic_PE_212 :
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

  module basic_PE_213 :
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

  module basic_PE_214 :
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

  module basic_PE_215 :
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

  module basic_PE_216 :
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

  module basic_PE_217 :
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

  module basic_PE_218 :
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

  module basic_PE_219 :
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

  module basic_PE_220 :
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

  module basic_PE_221 :
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

  module basic_PE_222 :
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

  module basic_PE_223 :
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

  module basic_PE_224 :
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

  module basic_PE_225 :
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

  module basic_PE_226 :
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

  module basic_PE_227 :
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

  module basic_PE_228 :
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

  module basic_PE_229 :
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

  module basic_PE_230 :
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

  module basic_PE_231 :
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

  module basic_PE_232 :
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

  module basic_PE_233 :
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

  module basic_PE_234 :
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

  module basic_PE_235 :
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

  module basic_PE_236 :
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

  module basic_PE_237 :
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

  module basic_PE_238 :
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

  module basic_PE_239 :
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

  module basic_PE_240 :
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

  module basic_PE_241 :
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

  module basic_PE_242 :
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

  module basic_PE_243 :
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

  module basic_PE_244 :
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

  module basic_PE_245 :
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

  module basic_PE_246 :
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

  module basic_PE_247 :
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

  module basic_PE_248 :
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

  module basic_PE_249 :
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

  module basic_PE_250 :
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

  module basic_PE_251 :
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

  module basic_PE_252 :
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

  module basic_PE_253 :
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

  module basic_PE_254 :
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

  module basic_PE_255 :
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
    input reset : UInt<1>
    output io : { flip activate : UInt<8>[16], flip weight : UInt<8>[16], flip flow : UInt<1>, flip shift : UInt<1>, psum : UInt<16>[16], valid : UInt<1>[16]}

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
    inst PE_Array_0_8 of basic_PE_8 @[Systolic_Array.scala 19:62]
    PE_Array_0_8.clock <= clock
    PE_Array_0_8.reset <= reset
    inst PE_Array_0_9 of basic_PE_9 @[Systolic_Array.scala 19:62]
    PE_Array_0_9.clock <= clock
    PE_Array_0_9.reset <= reset
    inst PE_Array_0_10 of basic_PE_10 @[Systolic_Array.scala 19:62]
    PE_Array_0_10.clock <= clock
    PE_Array_0_10.reset <= reset
    inst PE_Array_0_11 of basic_PE_11 @[Systolic_Array.scala 19:62]
    PE_Array_0_11.clock <= clock
    PE_Array_0_11.reset <= reset
    inst PE_Array_0_12 of basic_PE_12 @[Systolic_Array.scala 19:62]
    PE_Array_0_12.clock <= clock
    PE_Array_0_12.reset <= reset
    inst PE_Array_0_13 of basic_PE_13 @[Systolic_Array.scala 19:62]
    PE_Array_0_13.clock <= clock
    PE_Array_0_13.reset <= reset
    inst PE_Array_0_14 of basic_PE_14 @[Systolic_Array.scala 19:62]
    PE_Array_0_14.clock <= clock
    PE_Array_0_14.reset <= reset
    inst PE_Array_0_15 of basic_PE_15 @[Systolic_Array.scala 19:62]
    PE_Array_0_15.clock <= clock
    PE_Array_0_15.reset <= reset
    inst PE_Array_1_0 of basic_PE_16 @[Systolic_Array.scala 19:62]
    PE_Array_1_0.clock <= clock
    PE_Array_1_0.reset <= reset
    inst PE_Array_1_1 of basic_PE_17 @[Systolic_Array.scala 19:62]
    PE_Array_1_1.clock <= clock
    PE_Array_1_1.reset <= reset
    inst PE_Array_1_2 of basic_PE_18 @[Systolic_Array.scala 19:62]
    PE_Array_1_2.clock <= clock
    PE_Array_1_2.reset <= reset
    inst PE_Array_1_3 of basic_PE_19 @[Systolic_Array.scala 19:62]
    PE_Array_1_3.clock <= clock
    PE_Array_1_3.reset <= reset
    inst PE_Array_1_4 of basic_PE_20 @[Systolic_Array.scala 19:62]
    PE_Array_1_4.clock <= clock
    PE_Array_1_4.reset <= reset
    inst PE_Array_1_5 of basic_PE_21 @[Systolic_Array.scala 19:62]
    PE_Array_1_5.clock <= clock
    PE_Array_1_5.reset <= reset
    inst PE_Array_1_6 of basic_PE_22 @[Systolic_Array.scala 19:62]
    PE_Array_1_6.clock <= clock
    PE_Array_1_6.reset <= reset
    inst PE_Array_1_7 of basic_PE_23 @[Systolic_Array.scala 19:62]
    PE_Array_1_7.clock <= clock
    PE_Array_1_7.reset <= reset
    inst PE_Array_1_8 of basic_PE_24 @[Systolic_Array.scala 19:62]
    PE_Array_1_8.clock <= clock
    PE_Array_1_8.reset <= reset
    inst PE_Array_1_9 of basic_PE_25 @[Systolic_Array.scala 19:62]
    PE_Array_1_9.clock <= clock
    PE_Array_1_9.reset <= reset
    inst PE_Array_1_10 of basic_PE_26 @[Systolic_Array.scala 19:62]
    PE_Array_1_10.clock <= clock
    PE_Array_1_10.reset <= reset
    inst PE_Array_1_11 of basic_PE_27 @[Systolic_Array.scala 19:62]
    PE_Array_1_11.clock <= clock
    PE_Array_1_11.reset <= reset
    inst PE_Array_1_12 of basic_PE_28 @[Systolic_Array.scala 19:62]
    PE_Array_1_12.clock <= clock
    PE_Array_1_12.reset <= reset
    inst PE_Array_1_13 of basic_PE_29 @[Systolic_Array.scala 19:62]
    PE_Array_1_13.clock <= clock
    PE_Array_1_13.reset <= reset
    inst PE_Array_1_14 of basic_PE_30 @[Systolic_Array.scala 19:62]
    PE_Array_1_14.clock <= clock
    PE_Array_1_14.reset <= reset
    inst PE_Array_1_15 of basic_PE_31 @[Systolic_Array.scala 19:62]
    PE_Array_1_15.clock <= clock
    PE_Array_1_15.reset <= reset
    inst PE_Array_2_0 of basic_PE_32 @[Systolic_Array.scala 19:62]
    PE_Array_2_0.clock <= clock
    PE_Array_2_0.reset <= reset
    inst PE_Array_2_1 of basic_PE_33 @[Systolic_Array.scala 19:62]
    PE_Array_2_1.clock <= clock
    PE_Array_2_1.reset <= reset
    inst PE_Array_2_2 of basic_PE_34 @[Systolic_Array.scala 19:62]
    PE_Array_2_2.clock <= clock
    PE_Array_2_2.reset <= reset
    inst PE_Array_2_3 of basic_PE_35 @[Systolic_Array.scala 19:62]
    PE_Array_2_3.clock <= clock
    PE_Array_2_3.reset <= reset
    inst PE_Array_2_4 of basic_PE_36 @[Systolic_Array.scala 19:62]
    PE_Array_2_4.clock <= clock
    PE_Array_2_4.reset <= reset
    inst PE_Array_2_5 of basic_PE_37 @[Systolic_Array.scala 19:62]
    PE_Array_2_5.clock <= clock
    PE_Array_2_5.reset <= reset
    inst PE_Array_2_6 of basic_PE_38 @[Systolic_Array.scala 19:62]
    PE_Array_2_6.clock <= clock
    PE_Array_2_6.reset <= reset
    inst PE_Array_2_7 of basic_PE_39 @[Systolic_Array.scala 19:62]
    PE_Array_2_7.clock <= clock
    PE_Array_2_7.reset <= reset
    inst PE_Array_2_8 of basic_PE_40 @[Systolic_Array.scala 19:62]
    PE_Array_2_8.clock <= clock
    PE_Array_2_8.reset <= reset
    inst PE_Array_2_9 of basic_PE_41 @[Systolic_Array.scala 19:62]
    PE_Array_2_9.clock <= clock
    PE_Array_2_9.reset <= reset
    inst PE_Array_2_10 of basic_PE_42 @[Systolic_Array.scala 19:62]
    PE_Array_2_10.clock <= clock
    PE_Array_2_10.reset <= reset
    inst PE_Array_2_11 of basic_PE_43 @[Systolic_Array.scala 19:62]
    PE_Array_2_11.clock <= clock
    PE_Array_2_11.reset <= reset
    inst PE_Array_2_12 of basic_PE_44 @[Systolic_Array.scala 19:62]
    PE_Array_2_12.clock <= clock
    PE_Array_2_12.reset <= reset
    inst PE_Array_2_13 of basic_PE_45 @[Systolic_Array.scala 19:62]
    PE_Array_2_13.clock <= clock
    PE_Array_2_13.reset <= reset
    inst PE_Array_2_14 of basic_PE_46 @[Systolic_Array.scala 19:62]
    PE_Array_2_14.clock <= clock
    PE_Array_2_14.reset <= reset
    inst PE_Array_2_15 of basic_PE_47 @[Systolic_Array.scala 19:62]
    PE_Array_2_15.clock <= clock
    PE_Array_2_15.reset <= reset
    inst PE_Array_3_0 of basic_PE_48 @[Systolic_Array.scala 19:62]
    PE_Array_3_0.clock <= clock
    PE_Array_3_0.reset <= reset
    inst PE_Array_3_1 of basic_PE_49 @[Systolic_Array.scala 19:62]
    PE_Array_3_1.clock <= clock
    PE_Array_3_1.reset <= reset
    inst PE_Array_3_2 of basic_PE_50 @[Systolic_Array.scala 19:62]
    PE_Array_3_2.clock <= clock
    PE_Array_3_2.reset <= reset
    inst PE_Array_3_3 of basic_PE_51 @[Systolic_Array.scala 19:62]
    PE_Array_3_3.clock <= clock
    PE_Array_3_3.reset <= reset
    inst PE_Array_3_4 of basic_PE_52 @[Systolic_Array.scala 19:62]
    PE_Array_3_4.clock <= clock
    PE_Array_3_4.reset <= reset
    inst PE_Array_3_5 of basic_PE_53 @[Systolic_Array.scala 19:62]
    PE_Array_3_5.clock <= clock
    PE_Array_3_5.reset <= reset
    inst PE_Array_3_6 of basic_PE_54 @[Systolic_Array.scala 19:62]
    PE_Array_3_6.clock <= clock
    PE_Array_3_6.reset <= reset
    inst PE_Array_3_7 of basic_PE_55 @[Systolic_Array.scala 19:62]
    PE_Array_3_7.clock <= clock
    PE_Array_3_7.reset <= reset
    inst PE_Array_3_8 of basic_PE_56 @[Systolic_Array.scala 19:62]
    PE_Array_3_8.clock <= clock
    PE_Array_3_8.reset <= reset
    inst PE_Array_3_9 of basic_PE_57 @[Systolic_Array.scala 19:62]
    PE_Array_3_9.clock <= clock
    PE_Array_3_9.reset <= reset
    inst PE_Array_3_10 of basic_PE_58 @[Systolic_Array.scala 19:62]
    PE_Array_3_10.clock <= clock
    PE_Array_3_10.reset <= reset
    inst PE_Array_3_11 of basic_PE_59 @[Systolic_Array.scala 19:62]
    PE_Array_3_11.clock <= clock
    PE_Array_3_11.reset <= reset
    inst PE_Array_3_12 of basic_PE_60 @[Systolic_Array.scala 19:62]
    PE_Array_3_12.clock <= clock
    PE_Array_3_12.reset <= reset
    inst PE_Array_3_13 of basic_PE_61 @[Systolic_Array.scala 19:62]
    PE_Array_3_13.clock <= clock
    PE_Array_3_13.reset <= reset
    inst PE_Array_3_14 of basic_PE_62 @[Systolic_Array.scala 19:62]
    PE_Array_3_14.clock <= clock
    PE_Array_3_14.reset <= reset
    inst PE_Array_3_15 of basic_PE_63 @[Systolic_Array.scala 19:62]
    PE_Array_3_15.clock <= clock
    PE_Array_3_15.reset <= reset
    inst PE_Array_4_0 of basic_PE_64 @[Systolic_Array.scala 19:62]
    PE_Array_4_0.clock <= clock
    PE_Array_4_0.reset <= reset
    inst PE_Array_4_1 of basic_PE_65 @[Systolic_Array.scala 19:62]
    PE_Array_4_1.clock <= clock
    PE_Array_4_1.reset <= reset
    inst PE_Array_4_2 of basic_PE_66 @[Systolic_Array.scala 19:62]
    PE_Array_4_2.clock <= clock
    PE_Array_4_2.reset <= reset
    inst PE_Array_4_3 of basic_PE_67 @[Systolic_Array.scala 19:62]
    PE_Array_4_3.clock <= clock
    PE_Array_4_3.reset <= reset
    inst PE_Array_4_4 of basic_PE_68 @[Systolic_Array.scala 19:62]
    PE_Array_4_4.clock <= clock
    PE_Array_4_4.reset <= reset
    inst PE_Array_4_5 of basic_PE_69 @[Systolic_Array.scala 19:62]
    PE_Array_4_5.clock <= clock
    PE_Array_4_5.reset <= reset
    inst PE_Array_4_6 of basic_PE_70 @[Systolic_Array.scala 19:62]
    PE_Array_4_6.clock <= clock
    PE_Array_4_6.reset <= reset
    inst PE_Array_4_7 of basic_PE_71 @[Systolic_Array.scala 19:62]
    PE_Array_4_7.clock <= clock
    PE_Array_4_7.reset <= reset
    inst PE_Array_4_8 of basic_PE_72 @[Systolic_Array.scala 19:62]
    PE_Array_4_8.clock <= clock
    PE_Array_4_8.reset <= reset
    inst PE_Array_4_9 of basic_PE_73 @[Systolic_Array.scala 19:62]
    PE_Array_4_9.clock <= clock
    PE_Array_4_9.reset <= reset
    inst PE_Array_4_10 of basic_PE_74 @[Systolic_Array.scala 19:62]
    PE_Array_4_10.clock <= clock
    PE_Array_4_10.reset <= reset
    inst PE_Array_4_11 of basic_PE_75 @[Systolic_Array.scala 19:62]
    PE_Array_4_11.clock <= clock
    PE_Array_4_11.reset <= reset
    inst PE_Array_4_12 of basic_PE_76 @[Systolic_Array.scala 19:62]
    PE_Array_4_12.clock <= clock
    PE_Array_4_12.reset <= reset
    inst PE_Array_4_13 of basic_PE_77 @[Systolic_Array.scala 19:62]
    PE_Array_4_13.clock <= clock
    PE_Array_4_13.reset <= reset
    inst PE_Array_4_14 of basic_PE_78 @[Systolic_Array.scala 19:62]
    PE_Array_4_14.clock <= clock
    PE_Array_4_14.reset <= reset
    inst PE_Array_4_15 of basic_PE_79 @[Systolic_Array.scala 19:62]
    PE_Array_4_15.clock <= clock
    PE_Array_4_15.reset <= reset
    inst PE_Array_5_0 of basic_PE_80 @[Systolic_Array.scala 19:62]
    PE_Array_5_0.clock <= clock
    PE_Array_5_0.reset <= reset
    inst PE_Array_5_1 of basic_PE_81 @[Systolic_Array.scala 19:62]
    PE_Array_5_1.clock <= clock
    PE_Array_5_1.reset <= reset
    inst PE_Array_5_2 of basic_PE_82 @[Systolic_Array.scala 19:62]
    PE_Array_5_2.clock <= clock
    PE_Array_5_2.reset <= reset
    inst PE_Array_5_3 of basic_PE_83 @[Systolic_Array.scala 19:62]
    PE_Array_5_3.clock <= clock
    PE_Array_5_3.reset <= reset
    inst PE_Array_5_4 of basic_PE_84 @[Systolic_Array.scala 19:62]
    PE_Array_5_4.clock <= clock
    PE_Array_5_4.reset <= reset
    inst PE_Array_5_5 of basic_PE_85 @[Systolic_Array.scala 19:62]
    PE_Array_5_5.clock <= clock
    PE_Array_5_5.reset <= reset
    inst PE_Array_5_6 of basic_PE_86 @[Systolic_Array.scala 19:62]
    PE_Array_5_6.clock <= clock
    PE_Array_5_6.reset <= reset
    inst PE_Array_5_7 of basic_PE_87 @[Systolic_Array.scala 19:62]
    PE_Array_5_7.clock <= clock
    PE_Array_5_7.reset <= reset
    inst PE_Array_5_8 of basic_PE_88 @[Systolic_Array.scala 19:62]
    PE_Array_5_8.clock <= clock
    PE_Array_5_8.reset <= reset
    inst PE_Array_5_9 of basic_PE_89 @[Systolic_Array.scala 19:62]
    PE_Array_5_9.clock <= clock
    PE_Array_5_9.reset <= reset
    inst PE_Array_5_10 of basic_PE_90 @[Systolic_Array.scala 19:62]
    PE_Array_5_10.clock <= clock
    PE_Array_5_10.reset <= reset
    inst PE_Array_5_11 of basic_PE_91 @[Systolic_Array.scala 19:62]
    PE_Array_5_11.clock <= clock
    PE_Array_5_11.reset <= reset
    inst PE_Array_5_12 of basic_PE_92 @[Systolic_Array.scala 19:62]
    PE_Array_5_12.clock <= clock
    PE_Array_5_12.reset <= reset
    inst PE_Array_5_13 of basic_PE_93 @[Systolic_Array.scala 19:62]
    PE_Array_5_13.clock <= clock
    PE_Array_5_13.reset <= reset
    inst PE_Array_5_14 of basic_PE_94 @[Systolic_Array.scala 19:62]
    PE_Array_5_14.clock <= clock
    PE_Array_5_14.reset <= reset
    inst PE_Array_5_15 of basic_PE_95 @[Systolic_Array.scala 19:62]
    PE_Array_5_15.clock <= clock
    PE_Array_5_15.reset <= reset
    inst PE_Array_6_0 of basic_PE_96 @[Systolic_Array.scala 19:62]
    PE_Array_6_0.clock <= clock
    PE_Array_6_0.reset <= reset
    inst PE_Array_6_1 of basic_PE_97 @[Systolic_Array.scala 19:62]
    PE_Array_6_1.clock <= clock
    PE_Array_6_1.reset <= reset
    inst PE_Array_6_2 of basic_PE_98 @[Systolic_Array.scala 19:62]
    PE_Array_6_2.clock <= clock
    PE_Array_6_2.reset <= reset
    inst PE_Array_6_3 of basic_PE_99 @[Systolic_Array.scala 19:62]
    PE_Array_6_3.clock <= clock
    PE_Array_6_3.reset <= reset
    inst PE_Array_6_4 of basic_PE_100 @[Systolic_Array.scala 19:62]
    PE_Array_6_4.clock <= clock
    PE_Array_6_4.reset <= reset
    inst PE_Array_6_5 of basic_PE_101 @[Systolic_Array.scala 19:62]
    PE_Array_6_5.clock <= clock
    PE_Array_6_5.reset <= reset
    inst PE_Array_6_6 of basic_PE_102 @[Systolic_Array.scala 19:62]
    PE_Array_6_6.clock <= clock
    PE_Array_6_6.reset <= reset
    inst PE_Array_6_7 of basic_PE_103 @[Systolic_Array.scala 19:62]
    PE_Array_6_7.clock <= clock
    PE_Array_6_7.reset <= reset
    inst PE_Array_6_8 of basic_PE_104 @[Systolic_Array.scala 19:62]
    PE_Array_6_8.clock <= clock
    PE_Array_6_8.reset <= reset
    inst PE_Array_6_9 of basic_PE_105 @[Systolic_Array.scala 19:62]
    PE_Array_6_9.clock <= clock
    PE_Array_6_9.reset <= reset
    inst PE_Array_6_10 of basic_PE_106 @[Systolic_Array.scala 19:62]
    PE_Array_6_10.clock <= clock
    PE_Array_6_10.reset <= reset
    inst PE_Array_6_11 of basic_PE_107 @[Systolic_Array.scala 19:62]
    PE_Array_6_11.clock <= clock
    PE_Array_6_11.reset <= reset
    inst PE_Array_6_12 of basic_PE_108 @[Systolic_Array.scala 19:62]
    PE_Array_6_12.clock <= clock
    PE_Array_6_12.reset <= reset
    inst PE_Array_6_13 of basic_PE_109 @[Systolic_Array.scala 19:62]
    PE_Array_6_13.clock <= clock
    PE_Array_6_13.reset <= reset
    inst PE_Array_6_14 of basic_PE_110 @[Systolic_Array.scala 19:62]
    PE_Array_6_14.clock <= clock
    PE_Array_6_14.reset <= reset
    inst PE_Array_6_15 of basic_PE_111 @[Systolic_Array.scala 19:62]
    PE_Array_6_15.clock <= clock
    PE_Array_6_15.reset <= reset
    inst PE_Array_7_0 of basic_PE_112 @[Systolic_Array.scala 19:62]
    PE_Array_7_0.clock <= clock
    PE_Array_7_0.reset <= reset
    inst PE_Array_7_1 of basic_PE_113 @[Systolic_Array.scala 19:62]
    PE_Array_7_1.clock <= clock
    PE_Array_7_1.reset <= reset
    inst PE_Array_7_2 of basic_PE_114 @[Systolic_Array.scala 19:62]
    PE_Array_7_2.clock <= clock
    PE_Array_7_2.reset <= reset
    inst PE_Array_7_3 of basic_PE_115 @[Systolic_Array.scala 19:62]
    PE_Array_7_3.clock <= clock
    PE_Array_7_3.reset <= reset
    inst PE_Array_7_4 of basic_PE_116 @[Systolic_Array.scala 19:62]
    PE_Array_7_4.clock <= clock
    PE_Array_7_4.reset <= reset
    inst PE_Array_7_5 of basic_PE_117 @[Systolic_Array.scala 19:62]
    PE_Array_7_5.clock <= clock
    PE_Array_7_5.reset <= reset
    inst PE_Array_7_6 of basic_PE_118 @[Systolic_Array.scala 19:62]
    PE_Array_7_6.clock <= clock
    PE_Array_7_6.reset <= reset
    inst PE_Array_7_7 of basic_PE_119 @[Systolic_Array.scala 19:62]
    PE_Array_7_7.clock <= clock
    PE_Array_7_7.reset <= reset
    inst PE_Array_7_8 of basic_PE_120 @[Systolic_Array.scala 19:62]
    PE_Array_7_8.clock <= clock
    PE_Array_7_8.reset <= reset
    inst PE_Array_7_9 of basic_PE_121 @[Systolic_Array.scala 19:62]
    PE_Array_7_9.clock <= clock
    PE_Array_7_9.reset <= reset
    inst PE_Array_7_10 of basic_PE_122 @[Systolic_Array.scala 19:62]
    PE_Array_7_10.clock <= clock
    PE_Array_7_10.reset <= reset
    inst PE_Array_7_11 of basic_PE_123 @[Systolic_Array.scala 19:62]
    PE_Array_7_11.clock <= clock
    PE_Array_7_11.reset <= reset
    inst PE_Array_7_12 of basic_PE_124 @[Systolic_Array.scala 19:62]
    PE_Array_7_12.clock <= clock
    PE_Array_7_12.reset <= reset
    inst PE_Array_7_13 of basic_PE_125 @[Systolic_Array.scala 19:62]
    PE_Array_7_13.clock <= clock
    PE_Array_7_13.reset <= reset
    inst PE_Array_7_14 of basic_PE_126 @[Systolic_Array.scala 19:62]
    PE_Array_7_14.clock <= clock
    PE_Array_7_14.reset <= reset
    inst PE_Array_7_15 of basic_PE_127 @[Systolic_Array.scala 19:62]
    PE_Array_7_15.clock <= clock
    PE_Array_7_15.reset <= reset
    inst PE_Array_8_0 of basic_PE_128 @[Systolic_Array.scala 19:62]
    PE_Array_8_0.clock <= clock
    PE_Array_8_0.reset <= reset
    inst PE_Array_8_1 of basic_PE_129 @[Systolic_Array.scala 19:62]
    PE_Array_8_1.clock <= clock
    PE_Array_8_1.reset <= reset
    inst PE_Array_8_2 of basic_PE_130 @[Systolic_Array.scala 19:62]
    PE_Array_8_2.clock <= clock
    PE_Array_8_2.reset <= reset
    inst PE_Array_8_3 of basic_PE_131 @[Systolic_Array.scala 19:62]
    PE_Array_8_3.clock <= clock
    PE_Array_8_3.reset <= reset
    inst PE_Array_8_4 of basic_PE_132 @[Systolic_Array.scala 19:62]
    PE_Array_8_4.clock <= clock
    PE_Array_8_4.reset <= reset
    inst PE_Array_8_5 of basic_PE_133 @[Systolic_Array.scala 19:62]
    PE_Array_8_5.clock <= clock
    PE_Array_8_5.reset <= reset
    inst PE_Array_8_6 of basic_PE_134 @[Systolic_Array.scala 19:62]
    PE_Array_8_6.clock <= clock
    PE_Array_8_6.reset <= reset
    inst PE_Array_8_7 of basic_PE_135 @[Systolic_Array.scala 19:62]
    PE_Array_8_7.clock <= clock
    PE_Array_8_7.reset <= reset
    inst PE_Array_8_8 of basic_PE_136 @[Systolic_Array.scala 19:62]
    PE_Array_8_8.clock <= clock
    PE_Array_8_8.reset <= reset
    inst PE_Array_8_9 of basic_PE_137 @[Systolic_Array.scala 19:62]
    PE_Array_8_9.clock <= clock
    PE_Array_8_9.reset <= reset
    inst PE_Array_8_10 of basic_PE_138 @[Systolic_Array.scala 19:62]
    PE_Array_8_10.clock <= clock
    PE_Array_8_10.reset <= reset
    inst PE_Array_8_11 of basic_PE_139 @[Systolic_Array.scala 19:62]
    PE_Array_8_11.clock <= clock
    PE_Array_8_11.reset <= reset
    inst PE_Array_8_12 of basic_PE_140 @[Systolic_Array.scala 19:62]
    PE_Array_8_12.clock <= clock
    PE_Array_8_12.reset <= reset
    inst PE_Array_8_13 of basic_PE_141 @[Systolic_Array.scala 19:62]
    PE_Array_8_13.clock <= clock
    PE_Array_8_13.reset <= reset
    inst PE_Array_8_14 of basic_PE_142 @[Systolic_Array.scala 19:62]
    PE_Array_8_14.clock <= clock
    PE_Array_8_14.reset <= reset
    inst PE_Array_8_15 of basic_PE_143 @[Systolic_Array.scala 19:62]
    PE_Array_8_15.clock <= clock
    PE_Array_8_15.reset <= reset
    inst PE_Array_9_0 of basic_PE_144 @[Systolic_Array.scala 19:62]
    PE_Array_9_0.clock <= clock
    PE_Array_9_0.reset <= reset
    inst PE_Array_9_1 of basic_PE_145 @[Systolic_Array.scala 19:62]
    PE_Array_9_1.clock <= clock
    PE_Array_9_1.reset <= reset
    inst PE_Array_9_2 of basic_PE_146 @[Systolic_Array.scala 19:62]
    PE_Array_9_2.clock <= clock
    PE_Array_9_2.reset <= reset
    inst PE_Array_9_3 of basic_PE_147 @[Systolic_Array.scala 19:62]
    PE_Array_9_3.clock <= clock
    PE_Array_9_3.reset <= reset
    inst PE_Array_9_4 of basic_PE_148 @[Systolic_Array.scala 19:62]
    PE_Array_9_4.clock <= clock
    PE_Array_9_4.reset <= reset
    inst PE_Array_9_5 of basic_PE_149 @[Systolic_Array.scala 19:62]
    PE_Array_9_5.clock <= clock
    PE_Array_9_5.reset <= reset
    inst PE_Array_9_6 of basic_PE_150 @[Systolic_Array.scala 19:62]
    PE_Array_9_6.clock <= clock
    PE_Array_9_6.reset <= reset
    inst PE_Array_9_7 of basic_PE_151 @[Systolic_Array.scala 19:62]
    PE_Array_9_7.clock <= clock
    PE_Array_9_7.reset <= reset
    inst PE_Array_9_8 of basic_PE_152 @[Systolic_Array.scala 19:62]
    PE_Array_9_8.clock <= clock
    PE_Array_9_8.reset <= reset
    inst PE_Array_9_9 of basic_PE_153 @[Systolic_Array.scala 19:62]
    PE_Array_9_9.clock <= clock
    PE_Array_9_9.reset <= reset
    inst PE_Array_9_10 of basic_PE_154 @[Systolic_Array.scala 19:62]
    PE_Array_9_10.clock <= clock
    PE_Array_9_10.reset <= reset
    inst PE_Array_9_11 of basic_PE_155 @[Systolic_Array.scala 19:62]
    PE_Array_9_11.clock <= clock
    PE_Array_9_11.reset <= reset
    inst PE_Array_9_12 of basic_PE_156 @[Systolic_Array.scala 19:62]
    PE_Array_9_12.clock <= clock
    PE_Array_9_12.reset <= reset
    inst PE_Array_9_13 of basic_PE_157 @[Systolic_Array.scala 19:62]
    PE_Array_9_13.clock <= clock
    PE_Array_9_13.reset <= reset
    inst PE_Array_9_14 of basic_PE_158 @[Systolic_Array.scala 19:62]
    PE_Array_9_14.clock <= clock
    PE_Array_9_14.reset <= reset
    inst PE_Array_9_15 of basic_PE_159 @[Systolic_Array.scala 19:62]
    PE_Array_9_15.clock <= clock
    PE_Array_9_15.reset <= reset
    inst PE_Array_10_0 of basic_PE_160 @[Systolic_Array.scala 19:62]
    PE_Array_10_0.clock <= clock
    PE_Array_10_0.reset <= reset
    inst PE_Array_10_1 of basic_PE_161 @[Systolic_Array.scala 19:62]
    PE_Array_10_1.clock <= clock
    PE_Array_10_1.reset <= reset
    inst PE_Array_10_2 of basic_PE_162 @[Systolic_Array.scala 19:62]
    PE_Array_10_2.clock <= clock
    PE_Array_10_2.reset <= reset
    inst PE_Array_10_3 of basic_PE_163 @[Systolic_Array.scala 19:62]
    PE_Array_10_3.clock <= clock
    PE_Array_10_3.reset <= reset
    inst PE_Array_10_4 of basic_PE_164 @[Systolic_Array.scala 19:62]
    PE_Array_10_4.clock <= clock
    PE_Array_10_4.reset <= reset
    inst PE_Array_10_5 of basic_PE_165 @[Systolic_Array.scala 19:62]
    PE_Array_10_5.clock <= clock
    PE_Array_10_5.reset <= reset
    inst PE_Array_10_6 of basic_PE_166 @[Systolic_Array.scala 19:62]
    PE_Array_10_6.clock <= clock
    PE_Array_10_6.reset <= reset
    inst PE_Array_10_7 of basic_PE_167 @[Systolic_Array.scala 19:62]
    PE_Array_10_7.clock <= clock
    PE_Array_10_7.reset <= reset
    inst PE_Array_10_8 of basic_PE_168 @[Systolic_Array.scala 19:62]
    PE_Array_10_8.clock <= clock
    PE_Array_10_8.reset <= reset
    inst PE_Array_10_9 of basic_PE_169 @[Systolic_Array.scala 19:62]
    PE_Array_10_9.clock <= clock
    PE_Array_10_9.reset <= reset
    inst PE_Array_10_10 of basic_PE_170 @[Systolic_Array.scala 19:62]
    PE_Array_10_10.clock <= clock
    PE_Array_10_10.reset <= reset
    inst PE_Array_10_11 of basic_PE_171 @[Systolic_Array.scala 19:62]
    PE_Array_10_11.clock <= clock
    PE_Array_10_11.reset <= reset
    inst PE_Array_10_12 of basic_PE_172 @[Systolic_Array.scala 19:62]
    PE_Array_10_12.clock <= clock
    PE_Array_10_12.reset <= reset
    inst PE_Array_10_13 of basic_PE_173 @[Systolic_Array.scala 19:62]
    PE_Array_10_13.clock <= clock
    PE_Array_10_13.reset <= reset
    inst PE_Array_10_14 of basic_PE_174 @[Systolic_Array.scala 19:62]
    PE_Array_10_14.clock <= clock
    PE_Array_10_14.reset <= reset
    inst PE_Array_10_15 of basic_PE_175 @[Systolic_Array.scala 19:62]
    PE_Array_10_15.clock <= clock
    PE_Array_10_15.reset <= reset
    inst PE_Array_11_0 of basic_PE_176 @[Systolic_Array.scala 19:62]
    PE_Array_11_0.clock <= clock
    PE_Array_11_0.reset <= reset
    inst PE_Array_11_1 of basic_PE_177 @[Systolic_Array.scala 19:62]
    PE_Array_11_1.clock <= clock
    PE_Array_11_1.reset <= reset
    inst PE_Array_11_2 of basic_PE_178 @[Systolic_Array.scala 19:62]
    PE_Array_11_2.clock <= clock
    PE_Array_11_2.reset <= reset
    inst PE_Array_11_3 of basic_PE_179 @[Systolic_Array.scala 19:62]
    PE_Array_11_3.clock <= clock
    PE_Array_11_3.reset <= reset
    inst PE_Array_11_4 of basic_PE_180 @[Systolic_Array.scala 19:62]
    PE_Array_11_4.clock <= clock
    PE_Array_11_4.reset <= reset
    inst PE_Array_11_5 of basic_PE_181 @[Systolic_Array.scala 19:62]
    PE_Array_11_5.clock <= clock
    PE_Array_11_5.reset <= reset
    inst PE_Array_11_6 of basic_PE_182 @[Systolic_Array.scala 19:62]
    PE_Array_11_6.clock <= clock
    PE_Array_11_6.reset <= reset
    inst PE_Array_11_7 of basic_PE_183 @[Systolic_Array.scala 19:62]
    PE_Array_11_7.clock <= clock
    PE_Array_11_7.reset <= reset
    inst PE_Array_11_8 of basic_PE_184 @[Systolic_Array.scala 19:62]
    PE_Array_11_8.clock <= clock
    PE_Array_11_8.reset <= reset
    inst PE_Array_11_9 of basic_PE_185 @[Systolic_Array.scala 19:62]
    PE_Array_11_9.clock <= clock
    PE_Array_11_9.reset <= reset
    inst PE_Array_11_10 of basic_PE_186 @[Systolic_Array.scala 19:62]
    PE_Array_11_10.clock <= clock
    PE_Array_11_10.reset <= reset
    inst PE_Array_11_11 of basic_PE_187 @[Systolic_Array.scala 19:62]
    PE_Array_11_11.clock <= clock
    PE_Array_11_11.reset <= reset
    inst PE_Array_11_12 of basic_PE_188 @[Systolic_Array.scala 19:62]
    PE_Array_11_12.clock <= clock
    PE_Array_11_12.reset <= reset
    inst PE_Array_11_13 of basic_PE_189 @[Systolic_Array.scala 19:62]
    PE_Array_11_13.clock <= clock
    PE_Array_11_13.reset <= reset
    inst PE_Array_11_14 of basic_PE_190 @[Systolic_Array.scala 19:62]
    PE_Array_11_14.clock <= clock
    PE_Array_11_14.reset <= reset
    inst PE_Array_11_15 of basic_PE_191 @[Systolic_Array.scala 19:62]
    PE_Array_11_15.clock <= clock
    PE_Array_11_15.reset <= reset
    inst PE_Array_12_0 of basic_PE_192 @[Systolic_Array.scala 19:62]
    PE_Array_12_0.clock <= clock
    PE_Array_12_0.reset <= reset
    inst PE_Array_12_1 of basic_PE_193 @[Systolic_Array.scala 19:62]
    PE_Array_12_1.clock <= clock
    PE_Array_12_1.reset <= reset
    inst PE_Array_12_2 of basic_PE_194 @[Systolic_Array.scala 19:62]
    PE_Array_12_2.clock <= clock
    PE_Array_12_2.reset <= reset
    inst PE_Array_12_3 of basic_PE_195 @[Systolic_Array.scala 19:62]
    PE_Array_12_3.clock <= clock
    PE_Array_12_3.reset <= reset
    inst PE_Array_12_4 of basic_PE_196 @[Systolic_Array.scala 19:62]
    PE_Array_12_4.clock <= clock
    PE_Array_12_4.reset <= reset
    inst PE_Array_12_5 of basic_PE_197 @[Systolic_Array.scala 19:62]
    PE_Array_12_5.clock <= clock
    PE_Array_12_5.reset <= reset
    inst PE_Array_12_6 of basic_PE_198 @[Systolic_Array.scala 19:62]
    PE_Array_12_6.clock <= clock
    PE_Array_12_6.reset <= reset
    inst PE_Array_12_7 of basic_PE_199 @[Systolic_Array.scala 19:62]
    PE_Array_12_7.clock <= clock
    PE_Array_12_7.reset <= reset
    inst PE_Array_12_8 of basic_PE_200 @[Systolic_Array.scala 19:62]
    PE_Array_12_8.clock <= clock
    PE_Array_12_8.reset <= reset
    inst PE_Array_12_9 of basic_PE_201 @[Systolic_Array.scala 19:62]
    PE_Array_12_9.clock <= clock
    PE_Array_12_9.reset <= reset
    inst PE_Array_12_10 of basic_PE_202 @[Systolic_Array.scala 19:62]
    PE_Array_12_10.clock <= clock
    PE_Array_12_10.reset <= reset
    inst PE_Array_12_11 of basic_PE_203 @[Systolic_Array.scala 19:62]
    PE_Array_12_11.clock <= clock
    PE_Array_12_11.reset <= reset
    inst PE_Array_12_12 of basic_PE_204 @[Systolic_Array.scala 19:62]
    PE_Array_12_12.clock <= clock
    PE_Array_12_12.reset <= reset
    inst PE_Array_12_13 of basic_PE_205 @[Systolic_Array.scala 19:62]
    PE_Array_12_13.clock <= clock
    PE_Array_12_13.reset <= reset
    inst PE_Array_12_14 of basic_PE_206 @[Systolic_Array.scala 19:62]
    PE_Array_12_14.clock <= clock
    PE_Array_12_14.reset <= reset
    inst PE_Array_12_15 of basic_PE_207 @[Systolic_Array.scala 19:62]
    PE_Array_12_15.clock <= clock
    PE_Array_12_15.reset <= reset
    inst PE_Array_13_0 of basic_PE_208 @[Systolic_Array.scala 19:62]
    PE_Array_13_0.clock <= clock
    PE_Array_13_0.reset <= reset
    inst PE_Array_13_1 of basic_PE_209 @[Systolic_Array.scala 19:62]
    PE_Array_13_1.clock <= clock
    PE_Array_13_1.reset <= reset
    inst PE_Array_13_2 of basic_PE_210 @[Systolic_Array.scala 19:62]
    PE_Array_13_2.clock <= clock
    PE_Array_13_2.reset <= reset
    inst PE_Array_13_3 of basic_PE_211 @[Systolic_Array.scala 19:62]
    PE_Array_13_3.clock <= clock
    PE_Array_13_3.reset <= reset
    inst PE_Array_13_4 of basic_PE_212 @[Systolic_Array.scala 19:62]
    PE_Array_13_4.clock <= clock
    PE_Array_13_4.reset <= reset
    inst PE_Array_13_5 of basic_PE_213 @[Systolic_Array.scala 19:62]
    PE_Array_13_5.clock <= clock
    PE_Array_13_5.reset <= reset
    inst PE_Array_13_6 of basic_PE_214 @[Systolic_Array.scala 19:62]
    PE_Array_13_6.clock <= clock
    PE_Array_13_6.reset <= reset
    inst PE_Array_13_7 of basic_PE_215 @[Systolic_Array.scala 19:62]
    PE_Array_13_7.clock <= clock
    PE_Array_13_7.reset <= reset
    inst PE_Array_13_8 of basic_PE_216 @[Systolic_Array.scala 19:62]
    PE_Array_13_8.clock <= clock
    PE_Array_13_8.reset <= reset
    inst PE_Array_13_9 of basic_PE_217 @[Systolic_Array.scala 19:62]
    PE_Array_13_9.clock <= clock
    PE_Array_13_9.reset <= reset
    inst PE_Array_13_10 of basic_PE_218 @[Systolic_Array.scala 19:62]
    PE_Array_13_10.clock <= clock
    PE_Array_13_10.reset <= reset
    inst PE_Array_13_11 of basic_PE_219 @[Systolic_Array.scala 19:62]
    PE_Array_13_11.clock <= clock
    PE_Array_13_11.reset <= reset
    inst PE_Array_13_12 of basic_PE_220 @[Systolic_Array.scala 19:62]
    PE_Array_13_12.clock <= clock
    PE_Array_13_12.reset <= reset
    inst PE_Array_13_13 of basic_PE_221 @[Systolic_Array.scala 19:62]
    PE_Array_13_13.clock <= clock
    PE_Array_13_13.reset <= reset
    inst PE_Array_13_14 of basic_PE_222 @[Systolic_Array.scala 19:62]
    PE_Array_13_14.clock <= clock
    PE_Array_13_14.reset <= reset
    inst PE_Array_13_15 of basic_PE_223 @[Systolic_Array.scala 19:62]
    PE_Array_13_15.clock <= clock
    PE_Array_13_15.reset <= reset
    inst PE_Array_14_0 of basic_PE_224 @[Systolic_Array.scala 19:62]
    PE_Array_14_0.clock <= clock
    PE_Array_14_0.reset <= reset
    inst PE_Array_14_1 of basic_PE_225 @[Systolic_Array.scala 19:62]
    PE_Array_14_1.clock <= clock
    PE_Array_14_1.reset <= reset
    inst PE_Array_14_2 of basic_PE_226 @[Systolic_Array.scala 19:62]
    PE_Array_14_2.clock <= clock
    PE_Array_14_2.reset <= reset
    inst PE_Array_14_3 of basic_PE_227 @[Systolic_Array.scala 19:62]
    PE_Array_14_3.clock <= clock
    PE_Array_14_3.reset <= reset
    inst PE_Array_14_4 of basic_PE_228 @[Systolic_Array.scala 19:62]
    PE_Array_14_4.clock <= clock
    PE_Array_14_4.reset <= reset
    inst PE_Array_14_5 of basic_PE_229 @[Systolic_Array.scala 19:62]
    PE_Array_14_5.clock <= clock
    PE_Array_14_5.reset <= reset
    inst PE_Array_14_6 of basic_PE_230 @[Systolic_Array.scala 19:62]
    PE_Array_14_6.clock <= clock
    PE_Array_14_6.reset <= reset
    inst PE_Array_14_7 of basic_PE_231 @[Systolic_Array.scala 19:62]
    PE_Array_14_7.clock <= clock
    PE_Array_14_7.reset <= reset
    inst PE_Array_14_8 of basic_PE_232 @[Systolic_Array.scala 19:62]
    PE_Array_14_8.clock <= clock
    PE_Array_14_8.reset <= reset
    inst PE_Array_14_9 of basic_PE_233 @[Systolic_Array.scala 19:62]
    PE_Array_14_9.clock <= clock
    PE_Array_14_9.reset <= reset
    inst PE_Array_14_10 of basic_PE_234 @[Systolic_Array.scala 19:62]
    PE_Array_14_10.clock <= clock
    PE_Array_14_10.reset <= reset
    inst PE_Array_14_11 of basic_PE_235 @[Systolic_Array.scala 19:62]
    PE_Array_14_11.clock <= clock
    PE_Array_14_11.reset <= reset
    inst PE_Array_14_12 of basic_PE_236 @[Systolic_Array.scala 19:62]
    PE_Array_14_12.clock <= clock
    PE_Array_14_12.reset <= reset
    inst PE_Array_14_13 of basic_PE_237 @[Systolic_Array.scala 19:62]
    PE_Array_14_13.clock <= clock
    PE_Array_14_13.reset <= reset
    inst PE_Array_14_14 of basic_PE_238 @[Systolic_Array.scala 19:62]
    PE_Array_14_14.clock <= clock
    PE_Array_14_14.reset <= reset
    inst PE_Array_14_15 of basic_PE_239 @[Systolic_Array.scala 19:62]
    PE_Array_14_15.clock <= clock
    PE_Array_14_15.reset <= reset
    inst PE_Array_15_0 of basic_PE_240 @[Systolic_Array.scala 19:62]
    PE_Array_15_0.clock <= clock
    PE_Array_15_0.reset <= reset
    inst PE_Array_15_1 of basic_PE_241 @[Systolic_Array.scala 19:62]
    PE_Array_15_1.clock <= clock
    PE_Array_15_1.reset <= reset
    inst PE_Array_15_2 of basic_PE_242 @[Systolic_Array.scala 19:62]
    PE_Array_15_2.clock <= clock
    PE_Array_15_2.reset <= reset
    inst PE_Array_15_3 of basic_PE_243 @[Systolic_Array.scala 19:62]
    PE_Array_15_3.clock <= clock
    PE_Array_15_3.reset <= reset
    inst PE_Array_15_4 of basic_PE_244 @[Systolic_Array.scala 19:62]
    PE_Array_15_4.clock <= clock
    PE_Array_15_4.reset <= reset
    inst PE_Array_15_5 of basic_PE_245 @[Systolic_Array.scala 19:62]
    PE_Array_15_5.clock <= clock
    PE_Array_15_5.reset <= reset
    inst PE_Array_15_6 of basic_PE_246 @[Systolic_Array.scala 19:62]
    PE_Array_15_6.clock <= clock
    PE_Array_15_6.reset <= reset
    inst PE_Array_15_7 of basic_PE_247 @[Systolic_Array.scala 19:62]
    PE_Array_15_7.clock <= clock
    PE_Array_15_7.reset <= reset
    inst PE_Array_15_8 of basic_PE_248 @[Systolic_Array.scala 19:62]
    PE_Array_15_8.clock <= clock
    PE_Array_15_8.reset <= reset
    inst PE_Array_15_9 of basic_PE_249 @[Systolic_Array.scala 19:62]
    PE_Array_15_9.clock <= clock
    PE_Array_15_9.reset <= reset
    inst PE_Array_15_10 of basic_PE_250 @[Systolic_Array.scala 19:62]
    PE_Array_15_10.clock <= clock
    PE_Array_15_10.reset <= reset
    inst PE_Array_15_11 of basic_PE_251 @[Systolic_Array.scala 19:62]
    PE_Array_15_11.clock <= clock
    PE_Array_15_11.reset <= reset
    inst PE_Array_15_12 of basic_PE_252 @[Systolic_Array.scala 19:62]
    PE_Array_15_12.clock <= clock
    PE_Array_15_12.reset <= reset
    inst PE_Array_15_13 of basic_PE_253 @[Systolic_Array.scala 19:62]
    PE_Array_15_13.clock <= clock
    PE_Array_15_13.reset <= reset
    inst PE_Array_15_14 of basic_PE_254 @[Systolic_Array.scala 19:62]
    PE_Array_15_14.clock <= clock
    PE_Array_15_14.reset <= reset
    inst PE_Array_15_15 of basic_PE_255 @[Systolic_Array.scala 19:62]
    PE_Array_15_15.clock <= clock
    PE_Array_15_15.reset <= reset
    PE_Array_0_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_1_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_2_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_3_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_4_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_5_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_6_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_7_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_8_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_9_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_10_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_11_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_12_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_13_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_14_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_0.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_1.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_2.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_3.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_4.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_5.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_6.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_7.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_8.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_9.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_10.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_11.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_12.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_13.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_14.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_15_15.io.in_flow <= io.flow @[Systolic_Array.scala 22:54]
    PE_Array_0_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_0_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_1_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_2_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_3_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_4_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_5_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_6_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_7_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_8_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_9_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_10_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_11_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_12_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_13_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_14_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_0.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_1.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_2.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_3.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_4.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_5.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_6.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_7.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_8.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_9.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_10.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_11.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_12.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_13.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_14.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
    PE_Array_15_15.io.in_shift <= io.shift @[Systolic_Array.scala 23:55]
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
    PE_Array_1_8.io.in_weight <= PE_Array_0_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_8.io.in_psum <= PE_Array_0_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_9.io.in_weight <= PE_Array_0_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_9.io.in_psum <= PE_Array_0_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_10.io.in_weight <= PE_Array_0_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_10.io.in_psum <= PE_Array_0_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_11.io.in_weight <= PE_Array_0_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_11.io.in_psum <= PE_Array_0_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_12.io.in_weight <= PE_Array_0_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_12.io.in_psum <= PE_Array_0_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_13.io.in_weight <= PE_Array_0_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_13.io.in_psum <= PE_Array_0_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_14.io.in_weight <= PE_Array_0_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_14.io.in_psum <= PE_Array_0_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_1_15.io.in_weight <= PE_Array_0_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_1_15.io.in_psum <= PE_Array_0_15.io.out_psum @[DataPath.scala 16:21]
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
    PE_Array_2_8.io.in_weight <= PE_Array_1_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_8.io.in_psum <= PE_Array_1_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_9.io.in_weight <= PE_Array_1_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_9.io.in_psum <= PE_Array_1_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_10.io.in_weight <= PE_Array_1_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_10.io.in_psum <= PE_Array_1_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_11.io.in_weight <= PE_Array_1_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_11.io.in_psum <= PE_Array_1_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_12.io.in_weight <= PE_Array_1_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_12.io.in_psum <= PE_Array_1_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_13.io.in_weight <= PE_Array_1_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_13.io.in_psum <= PE_Array_1_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_14.io.in_weight <= PE_Array_1_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_14.io.in_psum <= PE_Array_1_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_2_15.io.in_weight <= PE_Array_1_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_2_15.io.in_psum <= PE_Array_1_15.io.out_psum @[DataPath.scala 16:21]
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
    PE_Array_3_8.io.in_weight <= PE_Array_2_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_8.io.in_psum <= PE_Array_2_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_9.io.in_weight <= PE_Array_2_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_9.io.in_psum <= PE_Array_2_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_10.io.in_weight <= PE_Array_2_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_10.io.in_psum <= PE_Array_2_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_11.io.in_weight <= PE_Array_2_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_11.io.in_psum <= PE_Array_2_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_12.io.in_weight <= PE_Array_2_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_12.io.in_psum <= PE_Array_2_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_13.io.in_weight <= PE_Array_2_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_13.io.in_psum <= PE_Array_2_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_14.io.in_weight <= PE_Array_2_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_14.io.in_psum <= PE_Array_2_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_3_15.io.in_weight <= PE_Array_2_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_3_15.io.in_psum <= PE_Array_2_15.io.out_psum @[DataPath.scala 16:21]
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
    PE_Array_4_8.io.in_weight <= PE_Array_3_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_8.io.in_psum <= PE_Array_3_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_9.io.in_weight <= PE_Array_3_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_9.io.in_psum <= PE_Array_3_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_10.io.in_weight <= PE_Array_3_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_10.io.in_psum <= PE_Array_3_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_11.io.in_weight <= PE_Array_3_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_11.io.in_psum <= PE_Array_3_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_12.io.in_weight <= PE_Array_3_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_12.io.in_psum <= PE_Array_3_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_13.io.in_weight <= PE_Array_3_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_13.io.in_psum <= PE_Array_3_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_14.io.in_weight <= PE_Array_3_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_14.io.in_psum <= PE_Array_3_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_4_15.io.in_weight <= PE_Array_3_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_4_15.io.in_psum <= PE_Array_3_15.io.out_psum @[DataPath.scala 16:21]
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
    PE_Array_5_8.io.in_weight <= PE_Array_4_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_8.io.in_psum <= PE_Array_4_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_9.io.in_weight <= PE_Array_4_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_9.io.in_psum <= PE_Array_4_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_10.io.in_weight <= PE_Array_4_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_10.io.in_psum <= PE_Array_4_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_11.io.in_weight <= PE_Array_4_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_11.io.in_psum <= PE_Array_4_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_12.io.in_weight <= PE_Array_4_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_12.io.in_psum <= PE_Array_4_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_13.io.in_weight <= PE_Array_4_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_13.io.in_psum <= PE_Array_4_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_14.io.in_weight <= PE_Array_4_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_14.io.in_psum <= PE_Array_4_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_5_15.io.in_weight <= PE_Array_4_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_5_15.io.in_psum <= PE_Array_4_15.io.out_psum @[DataPath.scala 16:21]
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
    PE_Array_6_8.io.in_weight <= PE_Array_5_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_8.io.in_psum <= PE_Array_5_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_9.io.in_weight <= PE_Array_5_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_9.io.in_psum <= PE_Array_5_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_10.io.in_weight <= PE_Array_5_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_10.io.in_psum <= PE_Array_5_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_11.io.in_weight <= PE_Array_5_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_11.io.in_psum <= PE_Array_5_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_12.io.in_weight <= PE_Array_5_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_12.io.in_psum <= PE_Array_5_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_13.io.in_weight <= PE_Array_5_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_13.io.in_psum <= PE_Array_5_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_14.io.in_weight <= PE_Array_5_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_14.io.in_psum <= PE_Array_5_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_6_15.io.in_weight <= PE_Array_5_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_6_15.io.in_psum <= PE_Array_5_15.io.out_psum @[DataPath.scala 16:21]
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
    PE_Array_7_8.io.in_weight <= PE_Array_6_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_8.io.in_psum <= PE_Array_6_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_9.io.in_weight <= PE_Array_6_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_9.io.in_psum <= PE_Array_6_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_10.io.in_weight <= PE_Array_6_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_10.io.in_psum <= PE_Array_6_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_11.io.in_weight <= PE_Array_6_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_11.io.in_psum <= PE_Array_6_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_12.io.in_weight <= PE_Array_6_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_12.io.in_psum <= PE_Array_6_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_13.io.in_weight <= PE_Array_6_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_13.io.in_psum <= PE_Array_6_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_14.io.in_weight <= PE_Array_6_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_14.io.in_psum <= PE_Array_6_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_7_15.io.in_weight <= PE_Array_6_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_7_15.io.in_psum <= PE_Array_6_15.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_0.io.in_weight <= PE_Array_7_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_0.io.in_psum <= PE_Array_7_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_1.io.in_weight <= PE_Array_7_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_1.io.in_psum <= PE_Array_7_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_2.io.in_weight <= PE_Array_7_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_2.io.in_psum <= PE_Array_7_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_3.io.in_weight <= PE_Array_7_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_3.io.in_psum <= PE_Array_7_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_4.io.in_weight <= PE_Array_7_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_4.io.in_psum <= PE_Array_7_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_5.io.in_weight <= PE_Array_7_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_5.io.in_psum <= PE_Array_7_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_6.io.in_weight <= PE_Array_7_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_6.io.in_psum <= PE_Array_7_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_7.io.in_weight <= PE_Array_7_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_7.io.in_psum <= PE_Array_7_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_8.io.in_weight <= PE_Array_7_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_8.io.in_psum <= PE_Array_7_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_9.io.in_weight <= PE_Array_7_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_9.io.in_psum <= PE_Array_7_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_10.io.in_weight <= PE_Array_7_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_10.io.in_psum <= PE_Array_7_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_11.io.in_weight <= PE_Array_7_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_11.io.in_psum <= PE_Array_7_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_12.io.in_weight <= PE_Array_7_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_12.io.in_psum <= PE_Array_7_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_13.io.in_weight <= PE_Array_7_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_13.io.in_psum <= PE_Array_7_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_14.io.in_weight <= PE_Array_7_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_14.io.in_psum <= PE_Array_7_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_8_15.io.in_weight <= PE_Array_7_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_8_15.io.in_psum <= PE_Array_7_15.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_0.io.in_weight <= PE_Array_8_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_0.io.in_psum <= PE_Array_8_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_1.io.in_weight <= PE_Array_8_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_1.io.in_psum <= PE_Array_8_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_2.io.in_weight <= PE_Array_8_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_2.io.in_psum <= PE_Array_8_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_3.io.in_weight <= PE_Array_8_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_3.io.in_psum <= PE_Array_8_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_4.io.in_weight <= PE_Array_8_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_4.io.in_psum <= PE_Array_8_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_5.io.in_weight <= PE_Array_8_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_5.io.in_psum <= PE_Array_8_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_6.io.in_weight <= PE_Array_8_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_6.io.in_psum <= PE_Array_8_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_7.io.in_weight <= PE_Array_8_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_7.io.in_psum <= PE_Array_8_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_8.io.in_weight <= PE_Array_8_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_8.io.in_psum <= PE_Array_8_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_9.io.in_weight <= PE_Array_8_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_9.io.in_psum <= PE_Array_8_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_10.io.in_weight <= PE_Array_8_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_10.io.in_psum <= PE_Array_8_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_11.io.in_weight <= PE_Array_8_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_11.io.in_psum <= PE_Array_8_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_12.io.in_weight <= PE_Array_8_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_12.io.in_psum <= PE_Array_8_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_13.io.in_weight <= PE_Array_8_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_13.io.in_psum <= PE_Array_8_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_14.io.in_weight <= PE_Array_8_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_14.io.in_psum <= PE_Array_8_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_9_15.io.in_weight <= PE_Array_8_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_9_15.io.in_psum <= PE_Array_8_15.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_0.io.in_weight <= PE_Array_9_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_0.io.in_psum <= PE_Array_9_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_1.io.in_weight <= PE_Array_9_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_1.io.in_psum <= PE_Array_9_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_2.io.in_weight <= PE_Array_9_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_2.io.in_psum <= PE_Array_9_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_3.io.in_weight <= PE_Array_9_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_3.io.in_psum <= PE_Array_9_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_4.io.in_weight <= PE_Array_9_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_4.io.in_psum <= PE_Array_9_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_5.io.in_weight <= PE_Array_9_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_5.io.in_psum <= PE_Array_9_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_6.io.in_weight <= PE_Array_9_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_6.io.in_psum <= PE_Array_9_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_7.io.in_weight <= PE_Array_9_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_7.io.in_psum <= PE_Array_9_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_8.io.in_weight <= PE_Array_9_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_8.io.in_psum <= PE_Array_9_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_9.io.in_weight <= PE_Array_9_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_9.io.in_psum <= PE_Array_9_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_10.io.in_weight <= PE_Array_9_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_10.io.in_psum <= PE_Array_9_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_11.io.in_weight <= PE_Array_9_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_11.io.in_psum <= PE_Array_9_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_12.io.in_weight <= PE_Array_9_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_12.io.in_psum <= PE_Array_9_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_13.io.in_weight <= PE_Array_9_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_13.io.in_psum <= PE_Array_9_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_14.io.in_weight <= PE_Array_9_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_14.io.in_psum <= PE_Array_9_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_10_15.io.in_weight <= PE_Array_9_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_10_15.io.in_psum <= PE_Array_9_15.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_0.io.in_weight <= PE_Array_10_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_0.io.in_psum <= PE_Array_10_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_1.io.in_weight <= PE_Array_10_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_1.io.in_psum <= PE_Array_10_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_2.io.in_weight <= PE_Array_10_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_2.io.in_psum <= PE_Array_10_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_3.io.in_weight <= PE_Array_10_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_3.io.in_psum <= PE_Array_10_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_4.io.in_weight <= PE_Array_10_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_4.io.in_psum <= PE_Array_10_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_5.io.in_weight <= PE_Array_10_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_5.io.in_psum <= PE_Array_10_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_6.io.in_weight <= PE_Array_10_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_6.io.in_psum <= PE_Array_10_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_7.io.in_weight <= PE_Array_10_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_7.io.in_psum <= PE_Array_10_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_8.io.in_weight <= PE_Array_10_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_8.io.in_psum <= PE_Array_10_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_9.io.in_weight <= PE_Array_10_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_9.io.in_psum <= PE_Array_10_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_10.io.in_weight <= PE_Array_10_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_10.io.in_psum <= PE_Array_10_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_11.io.in_weight <= PE_Array_10_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_11.io.in_psum <= PE_Array_10_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_12.io.in_weight <= PE_Array_10_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_12.io.in_psum <= PE_Array_10_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_13.io.in_weight <= PE_Array_10_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_13.io.in_psum <= PE_Array_10_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_14.io.in_weight <= PE_Array_10_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_14.io.in_psum <= PE_Array_10_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_11_15.io.in_weight <= PE_Array_10_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_11_15.io.in_psum <= PE_Array_10_15.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_0.io.in_weight <= PE_Array_11_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_0.io.in_psum <= PE_Array_11_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_1.io.in_weight <= PE_Array_11_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_1.io.in_psum <= PE_Array_11_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_2.io.in_weight <= PE_Array_11_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_2.io.in_psum <= PE_Array_11_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_3.io.in_weight <= PE_Array_11_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_3.io.in_psum <= PE_Array_11_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_4.io.in_weight <= PE_Array_11_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_4.io.in_psum <= PE_Array_11_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_5.io.in_weight <= PE_Array_11_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_5.io.in_psum <= PE_Array_11_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_6.io.in_weight <= PE_Array_11_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_6.io.in_psum <= PE_Array_11_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_7.io.in_weight <= PE_Array_11_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_7.io.in_psum <= PE_Array_11_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_8.io.in_weight <= PE_Array_11_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_8.io.in_psum <= PE_Array_11_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_9.io.in_weight <= PE_Array_11_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_9.io.in_psum <= PE_Array_11_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_10.io.in_weight <= PE_Array_11_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_10.io.in_psum <= PE_Array_11_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_11.io.in_weight <= PE_Array_11_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_11.io.in_psum <= PE_Array_11_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_12.io.in_weight <= PE_Array_11_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_12.io.in_psum <= PE_Array_11_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_13.io.in_weight <= PE_Array_11_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_13.io.in_psum <= PE_Array_11_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_14.io.in_weight <= PE_Array_11_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_14.io.in_psum <= PE_Array_11_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_12_15.io.in_weight <= PE_Array_11_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_12_15.io.in_psum <= PE_Array_11_15.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_0.io.in_weight <= PE_Array_12_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_0.io.in_psum <= PE_Array_12_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_1.io.in_weight <= PE_Array_12_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_1.io.in_psum <= PE_Array_12_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_2.io.in_weight <= PE_Array_12_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_2.io.in_psum <= PE_Array_12_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_3.io.in_weight <= PE_Array_12_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_3.io.in_psum <= PE_Array_12_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_4.io.in_weight <= PE_Array_12_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_4.io.in_psum <= PE_Array_12_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_5.io.in_weight <= PE_Array_12_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_5.io.in_psum <= PE_Array_12_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_6.io.in_weight <= PE_Array_12_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_6.io.in_psum <= PE_Array_12_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_7.io.in_weight <= PE_Array_12_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_7.io.in_psum <= PE_Array_12_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_8.io.in_weight <= PE_Array_12_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_8.io.in_psum <= PE_Array_12_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_9.io.in_weight <= PE_Array_12_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_9.io.in_psum <= PE_Array_12_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_10.io.in_weight <= PE_Array_12_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_10.io.in_psum <= PE_Array_12_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_11.io.in_weight <= PE_Array_12_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_11.io.in_psum <= PE_Array_12_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_12.io.in_weight <= PE_Array_12_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_12.io.in_psum <= PE_Array_12_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_13.io.in_weight <= PE_Array_12_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_13.io.in_psum <= PE_Array_12_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_14.io.in_weight <= PE_Array_12_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_14.io.in_psum <= PE_Array_12_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_13_15.io.in_weight <= PE_Array_12_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_13_15.io.in_psum <= PE_Array_12_15.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_0.io.in_weight <= PE_Array_13_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_0.io.in_psum <= PE_Array_13_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_1.io.in_weight <= PE_Array_13_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_1.io.in_psum <= PE_Array_13_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_2.io.in_weight <= PE_Array_13_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_2.io.in_psum <= PE_Array_13_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_3.io.in_weight <= PE_Array_13_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_3.io.in_psum <= PE_Array_13_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_4.io.in_weight <= PE_Array_13_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_4.io.in_psum <= PE_Array_13_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_5.io.in_weight <= PE_Array_13_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_5.io.in_psum <= PE_Array_13_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_6.io.in_weight <= PE_Array_13_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_6.io.in_psum <= PE_Array_13_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_7.io.in_weight <= PE_Array_13_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_7.io.in_psum <= PE_Array_13_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_8.io.in_weight <= PE_Array_13_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_8.io.in_psum <= PE_Array_13_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_9.io.in_weight <= PE_Array_13_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_9.io.in_psum <= PE_Array_13_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_10.io.in_weight <= PE_Array_13_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_10.io.in_psum <= PE_Array_13_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_11.io.in_weight <= PE_Array_13_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_11.io.in_psum <= PE_Array_13_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_12.io.in_weight <= PE_Array_13_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_12.io.in_psum <= PE_Array_13_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_13.io.in_weight <= PE_Array_13_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_13.io.in_psum <= PE_Array_13_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_14.io.in_weight <= PE_Array_13_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_14.io.in_psum <= PE_Array_13_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_14_15.io.in_weight <= PE_Array_13_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_14_15.io.in_psum <= PE_Array_13_15.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_0.io.in_weight <= PE_Array_14_0.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_0.io.in_psum <= PE_Array_14_0.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_1.io.in_weight <= PE_Array_14_1.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_1.io.in_psum <= PE_Array_14_1.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_2.io.in_weight <= PE_Array_14_2.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_2.io.in_psum <= PE_Array_14_2.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_3.io.in_weight <= PE_Array_14_3.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_3.io.in_psum <= PE_Array_14_3.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_4.io.in_weight <= PE_Array_14_4.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_4.io.in_psum <= PE_Array_14_4.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_5.io.in_weight <= PE_Array_14_5.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_5.io.in_psum <= PE_Array_14_5.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_6.io.in_weight <= PE_Array_14_6.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_6.io.in_psum <= PE_Array_14_6.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_7.io.in_weight <= PE_Array_14_7.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_7.io.in_psum <= PE_Array_14_7.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_8.io.in_weight <= PE_Array_14_8.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_8.io.in_psum <= PE_Array_14_8.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_9.io.in_weight <= PE_Array_14_9.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_9.io.in_psum <= PE_Array_14_9.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_10.io.in_weight <= PE_Array_14_10.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_10.io.in_psum <= PE_Array_14_10.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_11.io.in_weight <= PE_Array_14_11.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_11.io.in_psum <= PE_Array_14_11.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_12.io.in_weight <= PE_Array_14_12.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_12.io.in_psum <= PE_Array_14_12.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_13.io.in_weight <= PE_Array_14_13.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_13.io.in_psum <= PE_Array_14_13.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_14.io.in_weight <= PE_Array_14_14.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_14.io.in_psum <= PE_Array_14_14.io.out_psum @[DataPath.scala 16:21]
    PE_Array_15_15.io.in_weight <= PE_Array_14_15.io.out_weight @[DataPath.scala 15:23]
    PE_Array_15_15.io.in_psum <= PE_Array_14_15.io.out_psum @[DataPath.scala 16:21]
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
    PE_Array_0_8.io.in_weight <= io.weight[8] @[DataPath.scala 20:23]
    PE_Array_0_8.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_9.io.in_weight <= io.weight[9] @[DataPath.scala 20:23]
    PE_Array_0_9.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_10.io.in_weight <= io.weight[10] @[DataPath.scala 20:23]
    PE_Array_0_10.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_11.io.in_weight <= io.weight[11] @[DataPath.scala 20:23]
    PE_Array_0_11.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_12.io.in_weight <= io.weight[12] @[DataPath.scala 20:23]
    PE_Array_0_12.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_13.io.in_weight <= io.weight[13] @[DataPath.scala 20:23]
    PE_Array_0_13.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_14.io.in_weight <= io.weight[14] @[DataPath.scala 20:23]
    PE_Array_0_14.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    PE_Array_0_15.io.in_weight <= io.weight[15] @[DataPath.scala 20:23]
    PE_Array_0_15.io.in_psum <= UInt<1>("h0") @[DataPath.scala 21:21]
    io.psum[0] <= PE_Array_15_0.io.out_psum @[DataPath.scala 24:10]
    io.psum[1] <= PE_Array_15_1.io.out_psum @[DataPath.scala 24:10]
    io.psum[2] <= PE_Array_15_2.io.out_psum @[DataPath.scala 24:10]
    io.psum[3] <= PE_Array_15_3.io.out_psum @[DataPath.scala 24:10]
    io.psum[4] <= PE_Array_15_4.io.out_psum @[DataPath.scala 24:10]
    io.psum[5] <= PE_Array_15_5.io.out_psum @[DataPath.scala 24:10]
    io.psum[6] <= PE_Array_15_6.io.out_psum @[DataPath.scala 24:10]
    io.psum[7] <= PE_Array_15_7.io.out_psum @[DataPath.scala 24:10]
    io.psum[8] <= PE_Array_15_8.io.out_psum @[DataPath.scala 24:10]
    io.psum[9] <= PE_Array_15_9.io.out_psum @[DataPath.scala 24:10]
    io.psum[10] <= PE_Array_15_10.io.out_psum @[DataPath.scala 24:10]
    io.psum[11] <= PE_Array_15_11.io.out_psum @[DataPath.scala 24:10]
    io.psum[12] <= PE_Array_15_12.io.out_psum @[DataPath.scala 24:10]
    io.psum[13] <= PE_Array_15_13.io.out_psum @[DataPath.scala 24:10]
    io.psum[14] <= PE_Array_15_14.io.out_psum @[DataPath.scala 24:10]
    io.psum[15] <= PE_Array_15_15.io.out_psum @[DataPath.scala 24:10]
    PE_Array_0_1.io.in_activate <= PE_Array_0_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_2.io.in_activate <= PE_Array_0_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_3.io.in_activate <= PE_Array_0_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_4.io.in_activate <= PE_Array_0_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_5.io.in_activate <= PE_Array_0_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_6.io.in_activate <= PE_Array_0_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_7.io.in_activate <= PE_Array_0_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_8.io.in_activate <= PE_Array_0_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_9.io.in_activate <= PE_Array_0_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_10.io.in_activate <= PE_Array_0_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_11.io.in_activate <= PE_Array_0_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_12.io.in_activate <= PE_Array_0_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_13.io.in_activate <= PE_Array_0_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_14.io.in_activate <= PE_Array_0_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_15.io.in_activate <= PE_Array_0_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_1.io.in_activate <= PE_Array_1_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_2.io.in_activate <= PE_Array_1_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_3.io.in_activate <= PE_Array_1_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_4.io.in_activate <= PE_Array_1_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_5.io.in_activate <= PE_Array_1_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_6.io.in_activate <= PE_Array_1_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_7.io.in_activate <= PE_Array_1_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_8.io.in_activate <= PE_Array_1_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_9.io.in_activate <= PE_Array_1_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_10.io.in_activate <= PE_Array_1_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_11.io.in_activate <= PE_Array_1_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_12.io.in_activate <= PE_Array_1_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_13.io.in_activate <= PE_Array_1_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_14.io.in_activate <= PE_Array_1_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_1_15.io.in_activate <= PE_Array_1_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_1.io.in_activate <= PE_Array_2_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_2.io.in_activate <= PE_Array_2_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_3.io.in_activate <= PE_Array_2_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_4.io.in_activate <= PE_Array_2_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_5.io.in_activate <= PE_Array_2_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_6.io.in_activate <= PE_Array_2_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_7.io.in_activate <= PE_Array_2_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_8.io.in_activate <= PE_Array_2_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_9.io.in_activate <= PE_Array_2_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_10.io.in_activate <= PE_Array_2_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_11.io.in_activate <= PE_Array_2_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_12.io.in_activate <= PE_Array_2_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_13.io.in_activate <= PE_Array_2_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_14.io.in_activate <= PE_Array_2_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_2_15.io.in_activate <= PE_Array_2_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_1.io.in_activate <= PE_Array_3_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_2.io.in_activate <= PE_Array_3_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_3.io.in_activate <= PE_Array_3_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_4.io.in_activate <= PE_Array_3_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_5.io.in_activate <= PE_Array_3_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_6.io.in_activate <= PE_Array_3_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_7.io.in_activate <= PE_Array_3_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_8.io.in_activate <= PE_Array_3_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_9.io.in_activate <= PE_Array_3_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_10.io.in_activate <= PE_Array_3_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_11.io.in_activate <= PE_Array_3_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_12.io.in_activate <= PE_Array_3_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_13.io.in_activate <= PE_Array_3_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_14.io.in_activate <= PE_Array_3_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_3_15.io.in_activate <= PE_Array_3_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_1.io.in_activate <= PE_Array_4_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_2.io.in_activate <= PE_Array_4_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_3.io.in_activate <= PE_Array_4_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_4.io.in_activate <= PE_Array_4_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_5.io.in_activate <= PE_Array_4_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_6.io.in_activate <= PE_Array_4_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_7.io.in_activate <= PE_Array_4_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_8.io.in_activate <= PE_Array_4_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_9.io.in_activate <= PE_Array_4_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_10.io.in_activate <= PE_Array_4_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_11.io.in_activate <= PE_Array_4_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_12.io.in_activate <= PE_Array_4_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_13.io.in_activate <= PE_Array_4_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_14.io.in_activate <= PE_Array_4_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_4_15.io.in_activate <= PE_Array_4_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_1.io.in_activate <= PE_Array_5_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_2.io.in_activate <= PE_Array_5_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_3.io.in_activate <= PE_Array_5_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_4.io.in_activate <= PE_Array_5_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_5.io.in_activate <= PE_Array_5_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_6.io.in_activate <= PE_Array_5_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_7.io.in_activate <= PE_Array_5_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_8.io.in_activate <= PE_Array_5_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_9.io.in_activate <= PE_Array_5_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_10.io.in_activate <= PE_Array_5_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_11.io.in_activate <= PE_Array_5_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_12.io.in_activate <= PE_Array_5_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_13.io.in_activate <= PE_Array_5_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_14.io.in_activate <= PE_Array_5_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_5_15.io.in_activate <= PE_Array_5_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_1.io.in_activate <= PE_Array_6_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_2.io.in_activate <= PE_Array_6_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_3.io.in_activate <= PE_Array_6_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_4.io.in_activate <= PE_Array_6_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_5.io.in_activate <= PE_Array_6_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_6.io.in_activate <= PE_Array_6_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_7.io.in_activate <= PE_Array_6_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_8.io.in_activate <= PE_Array_6_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_9.io.in_activate <= PE_Array_6_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_10.io.in_activate <= PE_Array_6_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_11.io.in_activate <= PE_Array_6_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_12.io.in_activate <= PE_Array_6_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_13.io.in_activate <= PE_Array_6_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_14.io.in_activate <= PE_Array_6_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_6_15.io.in_activate <= PE_Array_6_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_1.io.in_activate <= PE_Array_7_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_2.io.in_activate <= PE_Array_7_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_3.io.in_activate <= PE_Array_7_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_4.io.in_activate <= PE_Array_7_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_5.io.in_activate <= PE_Array_7_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_6.io.in_activate <= PE_Array_7_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_7.io.in_activate <= PE_Array_7_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_8.io.in_activate <= PE_Array_7_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_9.io.in_activate <= PE_Array_7_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_10.io.in_activate <= PE_Array_7_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_11.io.in_activate <= PE_Array_7_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_12.io.in_activate <= PE_Array_7_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_13.io.in_activate <= PE_Array_7_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_14.io.in_activate <= PE_Array_7_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_7_15.io.in_activate <= PE_Array_7_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_1.io.in_activate <= PE_Array_8_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_2.io.in_activate <= PE_Array_8_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_3.io.in_activate <= PE_Array_8_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_4.io.in_activate <= PE_Array_8_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_5.io.in_activate <= PE_Array_8_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_6.io.in_activate <= PE_Array_8_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_7.io.in_activate <= PE_Array_8_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_8.io.in_activate <= PE_Array_8_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_9.io.in_activate <= PE_Array_8_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_10.io.in_activate <= PE_Array_8_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_11.io.in_activate <= PE_Array_8_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_12.io.in_activate <= PE_Array_8_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_13.io.in_activate <= PE_Array_8_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_14.io.in_activate <= PE_Array_8_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_8_15.io.in_activate <= PE_Array_8_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_1.io.in_activate <= PE_Array_9_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_2.io.in_activate <= PE_Array_9_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_3.io.in_activate <= PE_Array_9_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_4.io.in_activate <= PE_Array_9_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_5.io.in_activate <= PE_Array_9_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_6.io.in_activate <= PE_Array_9_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_7.io.in_activate <= PE_Array_9_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_8.io.in_activate <= PE_Array_9_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_9.io.in_activate <= PE_Array_9_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_10.io.in_activate <= PE_Array_9_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_11.io.in_activate <= PE_Array_9_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_12.io.in_activate <= PE_Array_9_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_13.io.in_activate <= PE_Array_9_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_14.io.in_activate <= PE_Array_9_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_9_15.io.in_activate <= PE_Array_9_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_1.io.in_activate <= PE_Array_10_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_2.io.in_activate <= PE_Array_10_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_3.io.in_activate <= PE_Array_10_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_4.io.in_activate <= PE_Array_10_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_5.io.in_activate <= PE_Array_10_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_6.io.in_activate <= PE_Array_10_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_7.io.in_activate <= PE_Array_10_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_8.io.in_activate <= PE_Array_10_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_9.io.in_activate <= PE_Array_10_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_10.io.in_activate <= PE_Array_10_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_11.io.in_activate <= PE_Array_10_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_12.io.in_activate <= PE_Array_10_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_13.io.in_activate <= PE_Array_10_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_14.io.in_activate <= PE_Array_10_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_10_15.io.in_activate <= PE_Array_10_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_1.io.in_activate <= PE_Array_11_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_2.io.in_activate <= PE_Array_11_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_3.io.in_activate <= PE_Array_11_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_4.io.in_activate <= PE_Array_11_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_5.io.in_activate <= PE_Array_11_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_6.io.in_activate <= PE_Array_11_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_7.io.in_activate <= PE_Array_11_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_8.io.in_activate <= PE_Array_11_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_9.io.in_activate <= PE_Array_11_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_10.io.in_activate <= PE_Array_11_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_11.io.in_activate <= PE_Array_11_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_12.io.in_activate <= PE_Array_11_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_13.io.in_activate <= PE_Array_11_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_14.io.in_activate <= PE_Array_11_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_11_15.io.in_activate <= PE_Array_11_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_1.io.in_activate <= PE_Array_12_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_2.io.in_activate <= PE_Array_12_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_3.io.in_activate <= PE_Array_12_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_4.io.in_activate <= PE_Array_12_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_5.io.in_activate <= PE_Array_12_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_6.io.in_activate <= PE_Array_12_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_7.io.in_activate <= PE_Array_12_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_8.io.in_activate <= PE_Array_12_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_9.io.in_activate <= PE_Array_12_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_10.io.in_activate <= PE_Array_12_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_11.io.in_activate <= PE_Array_12_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_12.io.in_activate <= PE_Array_12_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_13.io.in_activate <= PE_Array_12_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_14.io.in_activate <= PE_Array_12_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_12_15.io.in_activate <= PE_Array_12_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_1.io.in_activate <= PE_Array_13_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_2.io.in_activate <= PE_Array_13_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_3.io.in_activate <= PE_Array_13_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_4.io.in_activate <= PE_Array_13_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_5.io.in_activate <= PE_Array_13_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_6.io.in_activate <= PE_Array_13_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_7.io.in_activate <= PE_Array_13_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_8.io.in_activate <= PE_Array_13_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_9.io.in_activate <= PE_Array_13_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_10.io.in_activate <= PE_Array_13_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_11.io.in_activate <= PE_Array_13_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_12.io.in_activate <= PE_Array_13_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_13.io.in_activate <= PE_Array_13_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_14.io.in_activate <= PE_Array_13_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_13_15.io.in_activate <= PE_Array_13_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_1.io.in_activate <= PE_Array_14_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_2.io.in_activate <= PE_Array_14_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_3.io.in_activate <= PE_Array_14_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_4.io.in_activate <= PE_Array_14_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_5.io.in_activate <= PE_Array_14_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_6.io.in_activate <= PE_Array_14_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_7.io.in_activate <= PE_Array_14_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_8.io.in_activate <= PE_Array_14_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_9.io.in_activate <= PE_Array_14_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_10.io.in_activate <= PE_Array_14_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_11.io.in_activate <= PE_Array_14_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_12.io.in_activate <= PE_Array_14_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_13.io.in_activate <= PE_Array_14_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_14.io.in_activate <= PE_Array_14_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_14_15.io.in_activate <= PE_Array_14_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_1.io.in_activate <= PE_Array_15_0.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_2.io.in_activate <= PE_Array_15_1.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_3.io.in_activate <= PE_Array_15_2.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_4.io.in_activate <= PE_Array_15_3.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_5.io.in_activate <= PE_Array_15_4.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_6.io.in_activate <= PE_Array_15_5.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_7.io.in_activate <= PE_Array_15_6.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_8.io.in_activate <= PE_Array_15_7.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_9.io.in_activate <= PE_Array_15_8.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_10.io.in_activate <= PE_Array_15_9.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_11.io.in_activate <= PE_Array_15_10.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_12.io.in_activate <= PE_Array_15_11.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_13.io.in_activate <= PE_Array_15_12.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_14.io.in_activate <= PE_Array_15_13.io.out_activate @[DataPath.scala 7:26]
    PE_Array_15_15.io.in_activate <= PE_Array_15_14.io.out_activate @[DataPath.scala 7:26]
    PE_Array_0_0.io.in_activate <= io.activate[0] @[DataPath.scala 11:26]
    PE_Array_1_0.io.in_activate <= io.activate[1] @[DataPath.scala 11:26]
    PE_Array_2_0.io.in_activate <= io.activate[2] @[DataPath.scala 11:26]
    PE_Array_3_0.io.in_activate <= io.activate[3] @[DataPath.scala 11:26]
    PE_Array_4_0.io.in_activate <= io.activate[4] @[DataPath.scala 11:26]
    PE_Array_5_0.io.in_activate <= io.activate[5] @[DataPath.scala 11:26]
    PE_Array_6_0.io.in_activate <= io.activate[6] @[DataPath.scala 11:26]
    PE_Array_7_0.io.in_activate <= io.activate[7] @[DataPath.scala 11:26]
    PE_Array_8_0.io.in_activate <= io.activate[8] @[DataPath.scala 11:26]
    PE_Array_9_0.io.in_activate <= io.activate[9] @[DataPath.scala 11:26]
    PE_Array_10_0.io.in_activate <= io.activate[10] @[DataPath.scala 11:26]
    PE_Array_11_0.io.in_activate <= io.activate[11] @[DataPath.scala 11:26]
    PE_Array_12_0.io.in_activate <= io.activate[12] @[DataPath.scala 11:26]
    PE_Array_13_0.io.in_activate <= io.activate[13] @[DataPath.scala 11:26]
    PE_Array_14_0.io.in_activate <= io.activate[14] @[DataPath.scala 11:26]
    PE_Array_15_0.io.in_activate <= io.activate[15] @[DataPath.scala 11:26]
    reg flow_counter : UInt<6>, clock with :
      reset => (reset, UInt<6>("h0")) @[Systolic_Array.scala 52:29]
    reg valid_reg : UInt<16>, clock with :
      reset => (reset, UInt<16>("h0")) @[Systolic_Array.scala 53:26]
    node _T = lt(flow_counter, UInt<6>("h2e")) @[Systolic_Array.scala 56:33]
    node _T_1 = and(io.flow, _T) @[Systolic_Array.scala 56:16]
    when _T_1 : @[Systolic_Array.scala 56:58]
      node _flow_counter_T = add(flow_counter, UInt<1>("h1")) @[Systolic_Array.scala 57:34]
      node _flow_counter_T_1 = tail(_flow_counter_T, 1) @[Systolic_Array.scala 57:34]
      flow_counter <= _flow_counter_T_1 @[Systolic_Array.scala 57:18]
    else :
      node _T_2 = eq(flow_counter, UInt<6>("h2e")) @[Systolic_Array.scala 58:27]
      when _T_2 : @[Systolic_Array.scala 58:53]
        flow_counter <= UInt<1>("h0") @[Systolic_Array.scala 59:18]
      else :
        flow_counter <= flow_counter @[Systolic_Array.scala 61:18]
    node _T_3 = leq(UInt<4>("hf"), flow_counter) @[Systolic_Array.scala 65:37]
    node _T_4 = and(io.flow, _T_3) @[Systolic_Array.scala 65:17]
    node _T_5 = lt(flow_counter, UInt<5>("h1f")) @[Systolic_Array.scala 65:71]
    node _T_6 = and(_T_4, _T_5) @[Systolic_Array.scala 65:54]
    when _T_6 : @[Systolic_Array.scala 65:96]
      node _valid_reg_T = bits(valid_reg, 14, 0) @[Systolic_Array.scala 66:31]
      node _valid_reg_T_1 = cat(_valid_reg_T, UInt<1>("h1")) @[Cat.scala 33:92]
      valid_reg <= _valid_reg_T_1 @[Systolic_Array.scala 66:15]
    else :
      node _T_7 = geq(flow_counter, UInt<5>("h1f")) @[Systolic_Array.scala 67:39]
      node _T_8 = and(io.flow, _T_7) @[Systolic_Array.scala 67:22]
      when _T_8 : @[Systolic_Array.scala 67:65]
        node _valid_reg_T_2 = bits(valid_reg, 14, 0) @[Systolic_Array.scala 68:31]
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
    node _T_17 = bits(valid_reg, 8, 8) @[Systolic_Array.scala 73:33]
    node _T_18 = bits(valid_reg, 9, 9) @[Systolic_Array.scala 73:33]
    node _T_19 = bits(valid_reg, 10, 10) @[Systolic_Array.scala 73:33]
    node _T_20 = bits(valid_reg, 11, 11) @[Systolic_Array.scala 73:33]
    node _T_21 = bits(valid_reg, 12, 12) @[Systolic_Array.scala 73:33]
    node _T_22 = bits(valid_reg, 13, 13) @[Systolic_Array.scala 73:33]
    node _T_23 = bits(valid_reg, 14, 14) @[Systolic_Array.scala 73:33]
    node _T_24 = bits(valid_reg, 15, 15) @[Systolic_Array.scala 73:33]
    wire _WIRE : UInt<1>[16] @[Systolic_Array.scala 73:22]
    _WIRE[0] <= _T_9 @[Systolic_Array.scala 73:22]
    _WIRE[1] <= _T_10 @[Systolic_Array.scala 73:22]
    _WIRE[2] <= _T_11 @[Systolic_Array.scala 73:22]
    _WIRE[3] <= _T_12 @[Systolic_Array.scala 73:22]
    _WIRE[4] <= _T_13 @[Systolic_Array.scala 73:22]
    _WIRE[5] <= _T_14 @[Systolic_Array.scala 73:22]
    _WIRE[6] <= _T_15 @[Systolic_Array.scala 73:22]
    _WIRE[7] <= _T_16 @[Systolic_Array.scala 73:22]
    _WIRE[8] <= _T_17 @[Systolic_Array.scala 73:22]
    _WIRE[9] <= _T_18 @[Systolic_Array.scala 73:22]
    _WIRE[10] <= _T_19 @[Systolic_Array.scala 73:22]
    _WIRE[11] <= _T_20 @[Systolic_Array.scala 73:22]
    _WIRE[12] <= _T_21 @[Systolic_Array.scala 73:22]
    _WIRE[13] <= _T_22 @[Systolic_Array.scala 73:22]
    _WIRE[14] <= _T_23 @[Systolic_Array.scala 73:22]
    _WIRE[15] <= _T_24 @[Systolic_Array.scala 73:22]
    io.valid <= _WIRE @[Systolic_Array.scala 73:12]

