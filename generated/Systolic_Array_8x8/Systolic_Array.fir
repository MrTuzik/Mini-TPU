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

  module Systolic_Array :
    input clock : Clock
    input reset : UInt<1>
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

