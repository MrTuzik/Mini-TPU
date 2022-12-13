module Activation_Buffer(
  input        clock,
  input        reset,
  input        io_wen,
  input        io_ren,
  input  [7:0] io_in_data_x_0,
  input  [7:0] io_in_data_x_1,
  input  [7:0] io_in_data_x_2,
  input  [7:0] io_in_data_x_3,
  input  [7:0] io_in_data_x_4,
  input  [7:0] io_in_data_x_5,
  input  [7:0] io_in_data_x_6,
  input  [7:0] io_in_data_x_7,
  input  [7:0] io_in_data_x_8,
  input  [7:0] io_in_data_x_9,
  input  [7:0] io_in_data_x_10,
  input  [7:0] io_in_data_x_11,
  input  [7:0] io_in_data_x_12,
  input  [7:0] io_in_data_x_13,
  input  [7:0] io_in_data_x_14,
  input  [7:0] io_in_data_x_15,
  output [7:0] io_out_activate_0,
  output [7:0] io_out_activate_1,
  output [7:0] io_out_activate_2,
  output [7:0] io_out_activate_3,
  output       io_out_flow,
  output       io_isfull,
  output       io_isempty,
  output       io_isdone
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
  reg [31:0] _RAND_85;
  reg [31:0] _RAND_86;
  reg [31:0] _RAND_87;
  reg [31:0] _RAND_88;
  reg [31:0] _RAND_89;
  reg [31:0] _RAND_90;
  reg [31:0] _RAND_91;
  reg [31:0] _RAND_92;
  reg [31:0] _RAND_93;
  reg [31:0] _RAND_94;
  reg [31:0] _RAND_95;
  reg [31:0] _RAND_96;
  reg [31:0] _RAND_97;
  reg [31:0] _RAND_98;
  reg [31:0] _RAND_99;
  reg [31:0] _RAND_100;
  reg [31:0] _RAND_101;
  reg [31:0] _RAND_102;
  reg [31:0] _RAND_103;
  reg [31:0] _RAND_104;
  reg [31:0] _RAND_105;
  reg [31:0] _RAND_106;
  reg [31:0] _RAND_107;
  reg [31:0] _RAND_108;
  reg [31:0] _RAND_109;
  reg [31:0] _RAND_110;
  reg [31:0] _RAND_111;
  reg [31:0] _RAND_112;
  reg [31:0] _RAND_113;
  reg [31:0] _RAND_114;
  reg [31:0] _RAND_115;
  reg [31:0] _RAND_116;
  reg [31:0] _RAND_117;
  reg [31:0] _RAND_118;
  reg [31:0] _RAND_119;
  reg [31:0] _RAND_120;
  reg [31:0] _RAND_121;
  reg [31:0] _RAND_122;
  reg [31:0] _RAND_123;
  reg [31:0] _RAND_124;
  reg [31:0] _RAND_125;
  reg [31:0] _RAND_126;
  reg [31:0] _RAND_127;
  reg [31:0] _RAND_128;
  reg [31:0] _RAND_129;
  reg [31:0] _RAND_130;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] buffer_0_0; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_1; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_2; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_3; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_4; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_5; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_6; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_7; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_8; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_9; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_10; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_11; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_12; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_13; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_14; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_0_15; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_0; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_1; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_2; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_3; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_4; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_5; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_6; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_7; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_8; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_9; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_10; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_11; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_12; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_13; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_14; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_1_15; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_0; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_1; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_2; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_3; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_4; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_5; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_6; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_7; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_8; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_9; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_10; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_11; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_12; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_13; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_14; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_2_15; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_0; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_1; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_2; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_3; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_4; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_5; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_6; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_7; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_8; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_9; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_10; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_11; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_12; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_13; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_14; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_3_15; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_0; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_1; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_2; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_3; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_4; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_5; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_6; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_7; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_8; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_9; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_10; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_11; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_12; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_13; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_14; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_4_15; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_0; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_1; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_2; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_3; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_4; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_5; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_6; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_7; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_8; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_9; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_10; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_11; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_12; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_13; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_14; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_5_15; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_0; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_1; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_2; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_3; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_4; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_5; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_6; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_7; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_8; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_9; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_10; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_11; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_12; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_13; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_14; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_6_15; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_0; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_1; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_2; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_3; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_4; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_5; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_6; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_7; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_8; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_9; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_10; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_11; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_12; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_13; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_14; // @[Activation_Buffer.scala 24:23]
  reg [7:0] buffer_7_15; // @[Activation_Buffer.scala 24:23]
  reg [3:0] read_ptr; // @[Activation_Buffer.scala 27:25]
  reg [3:0] write_ptr; // @[Activation_Buffer.scala 28:26]
  wire  _full_T_2 = read_ptr[2:0] == write_ptr[2:0]; // @[Activation_Buffer.scala 33:44]
  wire  full = read_ptr[2:0] == write_ptr[2:0] & read_ptr[3] != write_ptr[3]; // @[Activation_Buffer.scala 33:82]
  wire  empty = _full_T_2 & read_ptr[3] == write_ptr[3]; // @[Activation_Buffer.scala 34:83]
  wire  _T_1 = io_wen & ~full; // @[Activation_Buffer.scala 39:15]
  wire [3:0] _write_ptr_T_1 = write_ptr + 4'h1; // @[Activation_Buffer.scala 40:28]
  reg [3:0] flow_ptr; // @[Activation_Buffer.scala 55:25]
  wire [3:0] _flow_ptr_T_1 = flow_ptr + 4'h1; // @[Activation_Buffer.scala 58:26]
  wire  _T_22 = flow_ptr == 4'ha; // @[Activation_Buffer.scala 59:23]
  wire  _T_23 = flow_ptr != 4'h0; // @[Activation_Buffer.scala 61:23]
  wire [4:0] _io_out_activate_0_T_1 = {{1'd0}, flow_ptr}; // @[Activation_Buffer.scala 76:88]
  wire [3:0] _io_out_activate_0_T_4 = _io_out_activate_0_T_1[3:0] - 4'h1; // @[Activation_Buffer.scala 76:99]
  wire [7:0] _GEN_262 = 3'h0 == read_ptr[2:0] & 4'h1 == _io_out_activate_0_T_4 ? buffer_0_1 : buffer_0_0; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_263 = 3'h0 == read_ptr[2:0] & 4'h2 == _io_out_activate_0_T_4 ? buffer_0_2 : _GEN_262; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_264 = 3'h0 == read_ptr[2:0] & 4'h3 == _io_out_activate_0_T_4 ? buffer_0_3 : _GEN_263; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_265 = 3'h0 == read_ptr[2:0] & 4'h4 == _io_out_activate_0_T_4 ? buffer_0_4 : _GEN_264; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_266 = 3'h0 == read_ptr[2:0] & 4'h5 == _io_out_activate_0_T_4 ? buffer_0_5 : _GEN_265; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_267 = 3'h0 == read_ptr[2:0] & 4'h6 == _io_out_activate_0_T_4 ? buffer_0_6 : _GEN_266; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_268 = 3'h0 == read_ptr[2:0] & 4'h7 == _io_out_activate_0_T_4 ? buffer_0_7 : _GEN_267; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_269 = 3'h0 == read_ptr[2:0] & 4'h8 == _io_out_activate_0_T_4 ? buffer_0_8 : _GEN_268; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_270 = 3'h0 == read_ptr[2:0] & 4'h9 == _io_out_activate_0_T_4 ? buffer_0_9 : _GEN_269; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_271 = 3'h0 == read_ptr[2:0] & 4'ha == _io_out_activate_0_T_4 ? buffer_0_10 : _GEN_270; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_272 = 3'h0 == read_ptr[2:0] & 4'hb == _io_out_activate_0_T_4 ? buffer_0_11 : _GEN_271; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_273 = 3'h0 == read_ptr[2:0] & 4'hc == _io_out_activate_0_T_4 ? buffer_0_12 : _GEN_272; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_274 = 3'h0 == read_ptr[2:0] & 4'hd == _io_out_activate_0_T_4 ? buffer_0_13 : _GEN_273; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_275 = 3'h0 == read_ptr[2:0] & 4'he == _io_out_activate_0_T_4 ? buffer_0_14 : _GEN_274; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_276 = 3'h0 == read_ptr[2:0] & 4'hf == _io_out_activate_0_T_4 ? buffer_0_15 : _GEN_275; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_277 = 3'h1 == read_ptr[2:0] & 4'h0 == _io_out_activate_0_T_4 ? buffer_1_0 : _GEN_276; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_278 = 3'h1 == read_ptr[2:0] & 4'h1 == _io_out_activate_0_T_4 ? buffer_1_1 : _GEN_277; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_279 = 3'h1 == read_ptr[2:0] & 4'h2 == _io_out_activate_0_T_4 ? buffer_1_2 : _GEN_278; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_280 = 3'h1 == read_ptr[2:0] & 4'h3 == _io_out_activate_0_T_4 ? buffer_1_3 : _GEN_279; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_281 = 3'h1 == read_ptr[2:0] & 4'h4 == _io_out_activate_0_T_4 ? buffer_1_4 : _GEN_280; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_282 = 3'h1 == read_ptr[2:0] & 4'h5 == _io_out_activate_0_T_4 ? buffer_1_5 : _GEN_281; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_283 = 3'h1 == read_ptr[2:0] & 4'h6 == _io_out_activate_0_T_4 ? buffer_1_6 : _GEN_282; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_284 = 3'h1 == read_ptr[2:0] & 4'h7 == _io_out_activate_0_T_4 ? buffer_1_7 : _GEN_283; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_285 = 3'h1 == read_ptr[2:0] & 4'h8 == _io_out_activate_0_T_4 ? buffer_1_8 : _GEN_284; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_286 = 3'h1 == read_ptr[2:0] & 4'h9 == _io_out_activate_0_T_4 ? buffer_1_9 : _GEN_285; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_287 = 3'h1 == read_ptr[2:0] & 4'ha == _io_out_activate_0_T_4 ? buffer_1_10 : _GEN_286; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_288 = 3'h1 == read_ptr[2:0] & 4'hb == _io_out_activate_0_T_4 ? buffer_1_11 : _GEN_287; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_289 = 3'h1 == read_ptr[2:0] & 4'hc == _io_out_activate_0_T_4 ? buffer_1_12 : _GEN_288; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_290 = 3'h1 == read_ptr[2:0] & 4'hd == _io_out_activate_0_T_4 ? buffer_1_13 : _GEN_289; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_291 = 3'h1 == read_ptr[2:0] & 4'he == _io_out_activate_0_T_4 ? buffer_1_14 : _GEN_290; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_292 = 3'h1 == read_ptr[2:0] & 4'hf == _io_out_activate_0_T_4 ? buffer_1_15 : _GEN_291; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_293 = 3'h2 == read_ptr[2:0] & 4'h0 == _io_out_activate_0_T_4 ? buffer_2_0 : _GEN_292; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_294 = 3'h2 == read_ptr[2:0] & 4'h1 == _io_out_activate_0_T_4 ? buffer_2_1 : _GEN_293; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_295 = 3'h2 == read_ptr[2:0] & 4'h2 == _io_out_activate_0_T_4 ? buffer_2_2 : _GEN_294; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_296 = 3'h2 == read_ptr[2:0] & 4'h3 == _io_out_activate_0_T_4 ? buffer_2_3 : _GEN_295; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_297 = 3'h2 == read_ptr[2:0] & 4'h4 == _io_out_activate_0_T_4 ? buffer_2_4 : _GEN_296; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_298 = 3'h2 == read_ptr[2:0] & 4'h5 == _io_out_activate_0_T_4 ? buffer_2_5 : _GEN_297; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_299 = 3'h2 == read_ptr[2:0] & 4'h6 == _io_out_activate_0_T_4 ? buffer_2_6 : _GEN_298; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_300 = 3'h2 == read_ptr[2:0] & 4'h7 == _io_out_activate_0_T_4 ? buffer_2_7 : _GEN_299; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_301 = 3'h2 == read_ptr[2:0] & 4'h8 == _io_out_activate_0_T_4 ? buffer_2_8 : _GEN_300; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_302 = 3'h2 == read_ptr[2:0] & 4'h9 == _io_out_activate_0_T_4 ? buffer_2_9 : _GEN_301; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_303 = 3'h2 == read_ptr[2:0] & 4'ha == _io_out_activate_0_T_4 ? buffer_2_10 : _GEN_302; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_304 = 3'h2 == read_ptr[2:0] & 4'hb == _io_out_activate_0_T_4 ? buffer_2_11 : _GEN_303; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_305 = 3'h2 == read_ptr[2:0] & 4'hc == _io_out_activate_0_T_4 ? buffer_2_12 : _GEN_304; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_306 = 3'h2 == read_ptr[2:0] & 4'hd == _io_out_activate_0_T_4 ? buffer_2_13 : _GEN_305; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_307 = 3'h2 == read_ptr[2:0] & 4'he == _io_out_activate_0_T_4 ? buffer_2_14 : _GEN_306; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_308 = 3'h2 == read_ptr[2:0] & 4'hf == _io_out_activate_0_T_4 ? buffer_2_15 : _GEN_307; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_309 = 3'h3 == read_ptr[2:0] & 4'h0 == _io_out_activate_0_T_4 ? buffer_3_0 : _GEN_308; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_310 = 3'h3 == read_ptr[2:0] & 4'h1 == _io_out_activate_0_T_4 ? buffer_3_1 : _GEN_309; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_311 = 3'h3 == read_ptr[2:0] & 4'h2 == _io_out_activate_0_T_4 ? buffer_3_2 : _GEN_310; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_312 = 3'h3 == read_ptr[2:0] & 4'h3 == _io_out_activate_0_T_4 ? buffer_3_3 : _GEN_311; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_313 = 3'h3 == read_ptr[2:0] & 4'h4 == _io_out_activate_0_T_4 ? buffer_3_4 : _GEN_312; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_314 = 3'h3 == read_ptr[2:0] & 4'h5 == _io_out_activate_0_T_4 ? buffer_3_5 : _GEN_313; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_315 = 3'h3 == read_ptr[2:0] & 4'h6 == _io_out_activate_0_T_4 ? buffer_3_6 : _GEN_314; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_316 = 3'h3 == read_ptr[2:0] & 4'h7 == _io_out_activate_0_T_4 ? buffer_3_7 : _GEN_315; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_317 = 3'h3 == read_ptr[2:0] & 4'h8 == _io_out_activate_0_T_4 ? buffer_3_8 : _GEN_316; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_318 = 3'h3 == read_ptr[2:0] & 4'h9 == _io_out_activate_0_T_4 ? buffer_3_9 : _GEN_317; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_319 = 3'h3 == read_ptr[2:0] & 4'ha == _io_out_activate_0_T_4 ? buffer_3_10 : _GEN_318; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_320 = 3'h3 == read_ptr[2:0] & 4'hb == _io_out_activate_0_T_4 ? buffer_3_11 : _GEN_319; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_321 = 3'h3 == read_ptr[2:0] & 4'hc == _io_out_activate_0_T_4 ? buffer_3_12 : _GEN_320; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_322 = 3'h3 == read_ptr[2:0] & 4'hd == _io_out_activate_0_T_4 ? buffer_3_13 : _GEN_321; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_323 = 3'h3 == read_ptr[2:0] & 4'he == _io_out_activate_0_T_4 ? buffer_3_14 : _GEN_322; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_324 = 3'h3 == read_ptr[2:0] & 4'hf == _io_out_activate_0_T_4 ? buffer_3_15 : _GEN_323; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_325 = 3'h4 == read_ptr[2:0] & 4'h0 == _io_out_activate_0_T_4 ? buffer_4_0 : _GEN_324; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_326 = 3'h4 == read_ptr[2:0] & 4'h1 == _io_out_activate_0_T_4 ? buffer_4_1 : _GEN_325; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_327 = 3'h4 == read_ptr[2:0] & 4'h2 == _io_out_activate_0_T_4 ? buffer_4_2 : _GEN_326; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_328 = 3'h4 == read_ptr[2:0] & 4'h3 == _io_out_activate_0_T_4 ? buffer_4_3 : _GEN_327; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_329 = 3'h4 == read_ptr[2:0] & 4'h4 == _io_out_activate_0_T_4 ? buffer_4_4 : _GEN_328; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_330 = 3'h4 == read_ptr[2:0] & 4'h5 == _io_out_activate_0_T_4 ? buffer_4_5 : _GEN_329; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_331 = 3'h4 == read_ptr[2:0] & 4'h6 == _io_out_activate_0_T_4 ? buffer_4_6 : _GEN_330; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_332 = 3'h4 == read_ptr[2:0] & 4'h7 == _io_out_activate_0_T_4 ? buffer_4_7 : _GEN_331; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_333 = 3'h4 == read_ptr[2:0] & 4'h8 == _io_out_activate_0_T_4 ? buffer_4_8 : _GEN_332; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_334 = 3'h4 == read_ptr[2:0] & 4'h9 == _io_out_activate_0_T_4 ? buffer_4_9 : _GEN_333; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_335 = 3'h4 == read_ptr[2:0] & 4'ha == _io_out_activate_0_T_4 ? buffer_4_10 : _GEN_334; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_336 = 3'h4 == read_ptr[2:0] & 4'hb == _io_out_activate_0_T_4 ? buffer_4_11 : _GEN_335; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_337 = 3'h4 == read_ptr[2:0] & 4'hc == _io_out_activate_0_T_4 ? buffer_4_12 : _GEN_336; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_338 = 3'h4 == read_ptr[2:0] & 4'hd == _io_out_activate_0_T_4 ? buffer_4_13 : _GEN_337; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_339 = 3'h4 == read_ptr[2:0] & 4'he == _io_out_activate_0_T_4 ? buffer_4_14 : _GEN_338; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_340 = 3'h4 == read_ptr[2:0] & 4'hf == _io_out_activate_0_T_4 ? buffer_4_15 : _GEN_339; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_341 = 3'h5 == read_ptr[2:0] & 4'h0 == _io_out_activate_0_T_4 ? buffer_5_0 : _GEN_340; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_342 = 3'h5 == read_ptr[2:0] & 4'h1 == _io_out_activate_0_T_4 ? buffer_5_1 : _GEN_341; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_343 = 3'h5 == read_ptr[2:0] & 4'h2 == _io_out_activate_0_T_4 ? buffer_5_2 : _GEN_342; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_344 = 3'h5 == read_ptr[2:0] & 4'h3 == _io_out_activate_0_T_4 ? buffer_5_3 : _GEN_343; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_345 = 3'h5 == read_ptr[2:0] & 4'h4 == _io_out_activate_0_T_4 ? buffer_5_4 : _GEN_344; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_346 = 3'h5 == read_ptr[2:0] & 4'h5 == _io_out_activate_0_T_4 ? buffer_5_5 : _GEN_345; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_347 = 3'h5 == read_ptr[2:0] & 4'h6 == _io_out_activate_0_T_4 ? buffer_5_6 : _GEN_346; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_348 = 3'h5 == read_ptr[2:0] & 4'h7 == _io_out_activate_0_T_4 ? buffer_5_7 : _GEN_347; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_349 = 3'h5 == read_ptr[2:0] & 4'h8 == _io_out_activate_0_T_4 ? buffer_5_8 : _GEN_348; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_350 = 3'h5 == read_ptr[2:0] & 4'h9 == _io_out_activate_0_T_4 ? buffer_5_9 : _GEN_349; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_351 = 3'h5 == read_ptr[2:0] & 4'ha == _io_out_activate_0_T_4 ? buffer_5_10 : _GEN_350; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_352 = 3'h5 == read_ptr[2:0] & 4'hb == _io_out_activate_0_T_4 ? buffer_5_11 : _GEN_351; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_353 = 3'h5 == read_ptr[2:0] & 4'hc == _io_out_activate_0_T_4 ? buffer_5_12 : _GEN_352; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_354 = 3'h5 == read_ptr[2:0] & 4'hd == _io_out_activate_0_T_4 ? buffer_5_13 : _GEN_353; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_355 = 3'h5 == read_ptr[2:0] & 4'he == _io_out_activate_0_T_4 ? buffer_5_14 : _GEN_354; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_356 = 3'h5 == read_ptr[2:0] & 4'hf == _io_out_activate_0_T_4 ? buffer_5_15 : _GEN_355; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_357 = 3'h6 == read_ptr[2:0] & 4'h0 == _io_out_activate_0_T_4 ? buffer_6_0 : _GEN_356; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_358 = 3'h6 == read_ptr[2:0] & 4'h1 == _io_out_activate_0_T_4 ? buffer_6_1 : _GEN_357; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_359 = 3'h6 == read_ptr[2:0] & 4'h2 == _io_out_activate_0_T_4 ? buffer_6_2 : _GEN_358; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_360 = 3'h6 == read_ptr[2:0] & 4'h3 == _io_out_activate_0_T_4 ? buffer_6_3 : _GEN_359; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_361 = 3'h6 == read_ptr[2:0] & 4'h4 == _io_out_activate_0_T_4 ? buffer_6_4 : _GEN_360; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_362 = 3'h6 == read_ptr[2:0] & 4'h5 == _io_out_activate_0_T_4 ? buffer_6_5 : _GEN_361; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_363 = 3'h6 == read_ptr[2:0] & 4'h6 == _io_out_activate_0_T_4 ? buffer_6_6 : _GEN_362; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_364 = 3'h6 == read_ptr[2:0] & 4'h7 == _io_out_activate_0_T_4 ? buffer_6_7 : _GEN_363; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_365 = 3'h6 == read_ptr[2:0] & 4'h8 == _io_out_activate_0_T_4 ? buffer_6_8 : _GEN_364; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_366 = 3'h6 == read_ptr[2:0] & 4'h9 == _io_out_activate_0_T_4 ? buffer_6_9 : _GEN_365; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_367 = 3'h6 == read_ptr[2:0] & 4'ha == _io_out_activate_0_T_4 ? buffer_6_10 : _GEN_366; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_368 = 3'h6 == read_ptr[2:0] & 4'hb == _io_out_activate_0_T_4 ? buffer_6_11 : _GEN_367; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_369 = 3'h6 == read_ptr[2:0] & 4'hc == _io_out_activate_0_T_4 ? buffer_6_12 : _GEN_368; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_370 = 3'h6 == read_ptr[2:0] & 4'hd == _io_out_activate_0_T_4 ? buffer_6_13 : _GEN_369; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_371 = 3'h6 == read_ptr[2:0] & 4'he == _io_out_activate_0_T_4 ? buffer_6_14 : _GEN_370; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_372 = 3'h6 == read_ptr[2:0] & 4'hf == _io_out_activate_0_T_4 ? buffer_6_15 : _GEN_371; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_373 = 3'h7 == read_ptr[2:0] & 4'h0 == _io_out_activate_0_T_4 ? buffer_7_0 : _GEN_372; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_374 = 3'h7 == read_ptr[2:0] & 4'h1 == _io_out_activate_0_T_4 ? buffer_7_1 : _GEN_373; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_375 = 3'h7 == read_ptr[2:0] & 4'h2 == _io_out_activate_0_T_4 ? buffer_7_2 : _GEN_374; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_376 = 3'h7 == read_ptr[2:0] & 4'h3 == _io_out_activate_0_T_4 ? buffer_7_3 : _GEN_375; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_377 = 3'h7 == read_ptr[2:0] & 4'h4 == _io_out_activate_0_T_4 ? buffer_7_4 : _GEN_376; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_378 = 3'h7 == read_ptr[2:0] & 4'h5 == _io_out_activate_0_T_4 ? buffer_7_5 : _GEN_377; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_379 = 3'h7 == read_ptr[2:0] & 4'h6 == _io_out_activate_0_T_4 ? buffer_7_6 : _GEN_378; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_380 = 3'h7 == read_ptr[2:0] & 4'h7 == _io_out_activate_0_T_4 ? buffer_7_7 : _GEN_379; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_381 = 3'h7 == read_ptr[2:0] & 4'h8 == _io_out_activate_0_T_4 ? buffer_7_8 : _GEN_380; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_382 = 3'h7 == read_ptr[2:0] & 4'h9 == _io_out_activate_0_T_4 ? buffer_7_9 : _GEN_381; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_383 = 3'h7 == read_ptr[2:0] & 4'ha == _io_out_activate_0_T_4 ? buffer_7_10 : _GEN_382; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_384 = 3'h7 == read_ptr[2:0] & 4'hb == _io_out_activate_0_T_4 ? buffer_7_11 : _GEN_383; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_385 = 3'h7 == read_ptr[2:0] & 4'hc == _io_out_activate_0_T_4 ? buffer_7_12 : _GEN_384; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_386 = 3'h7 == read_ptr[2:0] & 4'hd == _io_out_activate_0_T_4 ? buffer_7_13 : _GEN_385; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_387 = 3'h7 == read_ptr[2:0] & 4'he == _io_out_activate_0_T_4 ? buffer_7_14 : _GEN_386; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_388 = 3'h7 == read_ptr[2:0] & 4'hf == _io_out_activate_0_T_4 ? buffer_7_15 : _GEN_387; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_389 = 4'h0 < flow_ptr & flow_ptr <= 4'h4 ? _GEN_388 : 8'h0; // @[Activation_Buffer.scala 75:65 76:28 78:28]
  wire [3:0] _io_out_activate_1_T_2 = 4'h4 + flow_ptr; // @[Activation_Buffer.scala 76:88]
  wire [3:0] _io_out_activate_1_T_4 = _io_out_activate_1_T_2 - 4'h2; // @[Activation_Buffer.scala 76:99]
  wire [7:0] _GEN_391 = 3'h0 == read_ptr[2:0] & 4'h1 == _io_out_activate_1_T_4 ? buffer_0_1 : buffer_0_0; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_392 = 3'h0 == read_ptr[2:0] & 4'h2 == _io_out_activate_1_T_4 ? buffer_0_2 : _GEN_391; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_393 = 3'h0 == read_ptr[2:0] & 4'h3 == _io_out_activate_1_T_4 ? buffer_0_3 : _GEN_392; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_394 = 3'h0 == read_ptr[2:0] & 4'h4 == _io_out_activate_1_T_4 ? buffer_0_4 : _GEN_393; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_395 = 3'h0 == read_ptr[2:0] & 4'h5 == _io_out_activate_1_T_4 ? buffer_0_5 : _GEN_394; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_396 = 3'h0 == read_ptr[2:0] & 4'h6 == _io_out_activate_1_T_4 ? buffer_0_6 : _GEN_395; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_397 = 3'h0 == read_ptr[2:0] & 4'h7 == _io_out_activate_1_T_4 ? buffer_0_7 : _GEN_396; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_398 = 3'h0 == read_ptr[2:0] & 4'h8 == _io_out_activate_1_T_4 ? buffer_0_8 : _GEN_397; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_399 = 3'h0 == read_ptr[2:0] & 4'h9 == _io_out_activate_1_T_4 ? buffer_0_9 : _GEN_398; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_400 = 3'h0 == read_ptr[2:0] & 4'ha == _io_out_activate_1_T_4 ? buffer_0_10 : _GEN_399; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_401 = 3'h0 == read_ptr[2:0] & 4'hb == _io_out_activate_1_T_4 ? buffer_0_11 : _GEN_400; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_402 = 3'h0 == read_ptr[2:0] & 4'hc == _io_out_activate_1_T_4 ? buffer_0_12 : _GEN_401; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_403 = 3'h0 == read_ptr[2:0] & 4'hd == _io_out_activate_1_T_4 ? buffer_0_13 : _GEN_402; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_404 = 3'h0 == read_ptr[2:0] & 4'he == _io_out_activate_1_T_4 ? buffer_0_14 : _GEN_403; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_405 = 3'h0 == read_ptr[2:0] & 4'hf == _io_out_activate_1_T_4 ? buffer_0_15 : _GEN_404; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_406 = 3'h1 == read_ptr[2:0] & 4'h0 == _io_out_activate_1_T_4 ? buffer_1_0 : _GEN_405; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_407 = 3'h1 == read_ptr[2:0] & 4'h1 == _io_out_activate_1_T_4 ? buffer_1_1 : _GEN_406; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_408 = 3'h1 == read_ptr[2:0] & 4'h2 == _io_out_activate_1_T_4 ? buffer_1_2 : _GEN_407; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_409 = 3'h1 == read_ptr[2:0] & 4'h3 == _io_out_activate_1_T_4 ? buffer_1_3 : _GEN_408; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_410 = 3'h1 == read_ptr[2:0] & 4'h4 == _io_out_activate_1_T_4 ? buffer_1_4 : _GEN_409; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_411 = 3'h1 == read_ptr[2:0] & 4'h5 == _io_out_activate_1_T_4 ? buffer_1_5 : _GEN_410; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_412 = 3'h1 == read_ptr[2:0] & 4'h6 == _io_out_activate_1_T_4 ? buffer_1_6 : _GEN_411; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_413 = 3'h1 == read_ptr[2:0] & 4'h7 == _io_out_activate_1_T_4 ? buffer_1_7 : _GEN_412; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_414 = 3'h1 == read_ptr[2:0] & 4'h8 == _io_out_activate_1_T_4 ? buffer_1_8 : _GEN_413; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_415 = 3'h1 == read_ptr[2:0] & 4'h9 == _io_out_activate_1_T_4 ? buffer_1_9 : _GEN_414; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_416 = 3'h1 == read_ptr[2:0] & 4'ha == _io_out_activate_1_T_4 ? buffer_1_10 : _GEN_415; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_417 = 3'h1 == read_ptr[2:0] & 4'hb == _io_out_activate_1_T_4 ? buffer_1_11 : _GEN_416; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_418 = 3'h1 == read_ptr[2:0] & 4'hc == _io_out_activate_1_T_4 ? buffer_1_12 : _GEN_417; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_419 = 3'h1 == read_ptr[2:0] & 4'hd == _io_out_activate_1_T_4 ? buffer_1_13 : _GEN_418; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_420 = 3'h1 == read_ptr[2:0] & 4'he == _io_out_activate_1_T_4 ? buffer_1_14 : _GEN_419; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_421 = 3'h1 == read_ptr[2:0] & 4'hf == _io_out_activate_1_T_4 ? buffer_1_15 : _GEN_420; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_422 = 3'h2 == read_ptr[2:0] & 4'h0 == _io_out_activate_1_T_4 ? buffer_2_0 : _GEN_421; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_423 = 3'h2 == read_ptr[2:0] & 4'h1 == _io_out_activate_1_T_4 ? buffer_2_1 : _GEN_422; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_424 = 3'h2 == read_ptr[2:0] & 4'h2 == _io_out_activate_1_T_4 ? buffer_2_2 : _GEN_423; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_425 = 3'h2 == read_ptr[2:0] & 4'h3 == _io_out_activate_1_T_4 ? buffer_2_3 : _GEN_424; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_426 = 3'h2 == read_ptr[2:0] & 4'h4 == _io_out_activate_1_T_4 ? buffer_2_4 : _GEN_425; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_427 = 3'h2 == read_ptr[2:0] & 4'h5 == _io_out_activate_1_T_4 ? buffer_2_5 : _GEN_426; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_428 = 3'h2 == read_ptr[2:0] & 4'h6 == _io_out_activate_1_T_4 ? buffer_2_6 : _GEN_427; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_429 = 3'h2 == read_ptr[2:0] & 4'h7 == _io_out_activate_1_T_4 ? buffer_2_7 : _GEN_428; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_430 = 3'h2 == read_ptr[2:0] & 4'h8 == _io_out_activate_1_T_4 ? buffer_2_8 : _GEN_429; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_431 = 3'h2 == read_ptr[2:0] & 4'h9 == _io_out_activate_1_T_4 ? buffer_2_9 : _GEN_430; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_432 = 3'h2 == read_ptr[2:0] & 4'ha == _io_out_activate_1_T_4 ? buffer_2_10 : _GEN_431; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_433 = 3'h2 == read_ptr[2:0] & 4'hb == _io_out_activate_1_T_4 ? buffer_2_11 : _GEN_432; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_434 = 3'h2 == read_ptr[2:0] & 4'hc == _io_out_activate_1_T_4 ? buffer_2_12 : _GEN_433; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_435 = 3'h2 == read_ptr[2:0] & 4'hd == _io_out_activate_1_T_4 ? buffer_2_13 : _GEN_434; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_436 = 3'h2 == read_ptr[2:0] & 4'he == _io_out_activate_1_T_4 ? buffer_2_14 : _GEN_435; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_437 = 3'h2 == read_ptr[2:0] & 4'hf == _io_out_activate_1_T_4 ? buffer_2_15 : _GEN_436; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_438 = 3'h3 == read_ptr[2:0] & 4'h0 == _io_out_activate_1_T_4 ? buffer_3_0 : _GEN_437; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_439 = 3'h3 == read_ptr[2:0] & 4'h1 == _io_out_activate_1_T_4 ? buffer_3_1 : _GEN_438; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_440 = 3'h3 == read_ptr[2:0] & 4'h2 == _io_out_activate_1_T_4 ? buffer_3_2 : _GEN_439; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_441 = 3'h3 == read_ptr[2:0] & 4'h3 == _io_out_activate_1_T_4 ? buffer_3_3 : _GEN_440; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_442 = 3'h3 == read_ptr[2:0] & 4'h4 == _io_out_activate_1_T_4 ? buffer_3_4 : _GEN_441; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_443 = 3'h3 == read_ptr[2:0] & 4'h5 == _io_out_activate_1_T_4 ? buffer_3_5 : _GEN_442; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_444 = 3'h3 == read_ptr[2:0] & 4'h6 == _io_out_activate_1_T_4 ? buffer_3_6 : _GEN_443; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_445 = 3'h3 == read_ptr[2:0] & 4'h7 == _io_out_activate_1_T_4 ? buffer_3_7 : _GEN_444; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_446 = 3'h3 == read_ptr[2:0] & 4'h8 == _io_out_activate_1_T_4 ? buffer_3_8 : _GEN_445; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_447 = 3'h3 == read_ptr[2:0] & 4'h9 == _io_out_activate_1_T_4 ? buffer_3_9 : _GEN_446; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_448 = 3'h3 == read_ptr[2:0] & 4'ha == _io_out_activate_1_T_4 ? buffer_3_10 : _GEN_447; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_449 = 3'h3 == read_ptr[2:0] & 4'hb == _io_out_activate_1_T_4 ? buffer_3_11 : _GEN_448; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_450 = 3'h3 == read_ptr[2:0] & 4'hc == _io_out_activate_1_T_4 ? buffer_3_12 : _GEN_449; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_451 = 3'h3 == read_ptr[2:0] & 4'hd == _io_out_activate_1_T_4 ? buffer_3_13 : _GEN_450; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_452 = 3'h3 == read_ptr[2:0] & 4'he == _io_out_activate_1_T_4 ? buffer_3_14 : _GEN_451; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_453 = 3'h3 == read_ptr[2:0] & 4'hf == _io_out_activate_1_T_4 ? buffer_3_15 : _GEN_452; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_454 = 3'h4 == read_ptr[2:0] & 4'h0 == _io_out_activate_1_T_4 ? buffer_4_0 : _GEN_453; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_455 = 3'h4 == read_ptr[2:0] & 4'h1 == _io_out_activate_1_T_4 ? buffer_4_1 : _GEN_454; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_456 = 3'h4 == read_ptr[2:0] & 4'h2 == _io_out_activate_1_T_4 ? buffer_4_2 : _GEN_455; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_457 = 3'h4 == read_ptr[2:0] & 4'h3 == _io_out_activate_1_T_4 ? buffer_4_3 : _GEN_456; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_458 = 3'h4 == read_ptr[2:0] & 4'h4 == _io_out_activate_1_T_4 ? buffer_4_4 : _GEN_457; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_459 = 3'h4 == read_ptr[2:0] & 4'h5 == _io_out_activate_1_T_4 ? buffer_4_5 : _GEN_458; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_460 = 3'h4 == read_ptr[2:0] & 4'h6 == _io_out_activate_1_T_4 ? buffer_4_6 : _GEN_459; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_461 = 3'h4 == read_ptr[2:0] & 4'h7 == _io_out_activate_1_T_4 ? buffer_4_7 : _GEN_460; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_462 = 3'h4 == read_ptr[2:0] & 4'h8 == _io_out_activate_1_T_4 ? buffer_4_8 : _GEN_461; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_463 = 3'h4 == read_ptr[2:0] & 4'h9 == _io_out_activate_1_T_4 ? buffer_4_9 : _GEN_462; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_464 = 3'h4 == read_ptr[2:0] & 4'ha == _io_out_activate_1_T_4 ? buffer_4_10 : _GEN_463; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_465 = 3'h4 == read_ptr[2:0] & 4'hb == _io_out_activate_1_T_4 ? buffer_4_11 : _GEN_464; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_466 = 3'h4 == read_ptr[2:0] & 4'hc == _io_out_activate_1_T_4 ? buffer_4_12 : _GEN_465; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_467 = 3'h4 == read_ptr[2:0] & 4'hd == _io_out_activate_1_T_4 ? buffer_4_13 : _GEN_466; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_468 = 3'h4 == read_ptr[2:0] & 4'he == _io_out_activate_1_T_4 ? buffer_4_14 : _GEN_467; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_469 = 3'h4 == read_ptr[2:0] & 4'hf == _io_out_activate_1_T_4 ? buffer_4_15 : _GEN_468; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_470 = 3'h5 == read_ptr[2:0] & 4'h0 == _io_out_activate_1_T_4 ? buffer_5_0 : _GEN_469; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_471 = 3'h5 == read_ptr[2:0] & 4'h1 == _io_out_activate_1_T_4 ? buffer_5_1 : _GEN_470; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_472 = 3'h5 == read_ptr[2:0] & 4'h2 == _io_out_activate_1_T_4 ? buffer_5_2 : _GEN_471; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_473 = 3'h5 == read_ptr[2:0] & 4'h3 == _io_out_activate_1_T_4 ? buffer_5_3 : _GEN_472; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_474 = 3'h5 == read_ptr[2:0] & 4'h4 == _io_out_activate_1_T_4 ? buffer_5_4 : _GEN_473; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_475 = 3'h5 == read_ptr[2:0] & 4'h5 == _io_out_activate_1_T_4 ? buffer_5_5 : _GEN_474; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_476 = 3'h5 == read_ptr[2:0] & 4'h6 == _io_out_activate_1_T_4 ? buffer_5_6 : _GEN_475; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_477 = 3'h5 == read_ptr[2:0] & 4'h7 == _io_out_activate_1_T_4 ? buffer_5_7 : _GEN_476; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_478 = 3'h5 == read_ptr[2:0] & 4'h8 == _io_out_activate_1_T_4 ? buffer_5_8 : _GEN_477; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_479 = 3'h5 == read_ptr[2:0] & 4'h9 == _io_out_activate_1_T_4 ? buffer_5_9 : _GEN_478; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_480 = 3'h5 == read_ptr[2:0] & 4'ha == _io_out_activate_1_T_4 ? buffer_5_10 : _GEN_479; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_481 = 3'h5 == read_ptr[2:0] & 4'hb == _io_out_activate_1_T_4 ? buffer_5_11 : _GEN_480; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_482 = 3'h5 == read_ptr[2:0] & 4'hc == _io_out_activate_1_T_4 ? buffer_5_12 : _GEN_481; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_483 = 3'h5 == read_ptr[2:0] & 4'hd == _io_out_activate_1_T_4 ? buffer_5_13 : _GEN_482; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_484 = 3'h5 == read_ptr[2:0] & 4'he == _io_out_activate_1_T_4 ? buffer_5_14 : _GEN_483; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_485 = 3'h5 == read_ptr[2:0] & 4'hf == _io_out_activate_1_T_4 ? buffer_5_15 : _GEN_484; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_486 = 3'h6 == read_ptr[2:0] & 4'h0 == _io_out_activate_1_T_4 ? buffer_6_0 : _GEN_485; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_487 = 3'h6 == read_ptr[2:0] & 4'h1 == _io_out_activate_1_T_4 ? buffer_6_1 : _GEN_486; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_488 = 3'h6 == read_ptr[2:0] & 4'h2 == _io_out_activate_1_T_4 ? buffer_6_2 : _GEN_487; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_489 = 3'h6 == read_ptr[2:0] & 4'h3 == _io_out_activate_1_T_4 ? buffer_6_3 : _GEN_488; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_490 = 3'h6 == read_ptr[2:0] & 4'h4 == _io_out_activate_1_T_4 ? buffer_6_4 : _GEN_489; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_491 = 3'h6 == read_ptr[2:0] & 4'h5 == _io_out_activate_1_T_4 ? buffer_6_5 : _GEN_490; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_492 = 3'h6 == read_ptr[2:0] & 4'h6 == _io_out_activate_1_T_4 ? buffer_6_6 : _GEN_491; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_493 = 3'h6 == read_ptr[2:0] & 4'h7 == _io_out_activate_1_T_4 ? buffer_6_7 : _GEN_492; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_494 = 3'h6 == read_ptr[2:0] & 4'h8 == _io_out_activate_1_T_4 ? buffer_6_8 : _GEN_493; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_495 = 3'h6 == read_ptr[2:0] & 4'h9 == _io_out_activate_1_T_4 ? buffer_6_9 : _GEN_494; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_496 = 3'h6 == read_ptr[2:0] & 4'ha == _io_out_activate_1_T_4 ? buffer_6_10 : _GEN_495; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_497 = 3'h6 == read_ptr[2:0] & 4'hb == _io_out_activate_1_T_4 ? buffer_6_11 : _GEN_496; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_498 = 3'h6 == read_ptr[2:0] & 4'hc == _io_out_activate_1_T_4 ? buffer_6_12 : _GEN_497; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_499 = 3'h6 == read_ptr[2:0] & 4'hd == _io_out_activate_1_T_4 ? buffer_6_13 : _GEN_498; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_500 = 3'h6 == read_ptr[2:0] & 4'he == _io_out_activate_1_T_4 ? buffer_6_14 : _GEN_499; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_501 = 3'h6 == read_ptr[2:0] & 4'hf == _io_out_activate_1_T_4 ? buffer_6_15 : _GEN_500; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_502 = 3'h7 == read_ptr[2:0] & 4'h0 == _io_out_activate_1_T_4 ? buffer_7_0 : _GEN_501; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_503 = 3'h7 == read_ptr[2:0] & 4'h1 == _io_out_activate_1_T_4 ? buffer_7_1 : _GEN_502; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_504 = 3'h7 == read_ptr[2:0] & 4'h2 == _io_out_activate_1_T_4 ? buffer_7_2 : _GEN_503; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_505 = 3'h7 == read_ptr[2:0] & 4'h3 == _io_out_activate_1_T_4 ? buffer_7_3 : _GEN_504; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_506 = 3'h7 == read_ptr[2:0] & 4'h4 == _io_out_activate_1_T_4 ? buffer_7_4 : _GEN_505; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_507 = 3'h7 == read_ptr[2:0] & 4'h5 == _io_out_activate_1_T_4 ? buffer_7_5 : _GEN_506; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_508 = 3'h7 == read_ptr[2:0] & 4'h6 == _io_out_activate_1_T_4 ? buffer_7_6 : _GEN_507; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_509 = 3'h7 == read_ptr[2:0] & 4'h7 == _io_out_activate_1_T_4 ? buffer_7_7 : _GEN_508; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_510 = 3'h7 == read_ptr[2:0] & 4'h8 == _io_out_activate_1_T_4 ? buffer_7_8 : _GEN_509; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_511 = 3'h7 == read_ptr[2:0] & 4'h9 == _io_out_activate_1_T_4 ? buffer_7_9 : _GEN_510; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_512 = 3'h7 == read_ptr[2:0] & 4'ha == _io_out_activate_1_T_4 ? buffer_7_10 : _GEN_511; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_513 = 3'h7 == read_ptr[2:0] & 4'hb == _io_out_activate_1_T_4 ? buffer_7_11 : _GEN_512; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_514 = 3'h7 == read_ptr[2:0] & 4'hc == _io_out_activate_1_T_4 ? buffer_7_12 : _GEN_513; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_515 = 3'h7 == read_ptr[2:0] & 4'hd == _io_out_activate_1_T_4 ? buffer_7_13 : _GEN_514; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_516 = 3'h7 == read_ptr[2:0] & 4'he == _io_out_activate_1_T_4 ? buffer_7_14 : _GEN_515; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_517 = 3'h7 == read_ptr[2:0] & 4'hf == _io_out_activate_1_T_4 ? buffer_7_15 : _GEN_516; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_518 = 4'h1 < flow_ptr & flow_ptr <= 4'h5 ? _GEN_517 : 8'h0; // @[Activation_Buffer.scala 75:65 76:28 78:28]
  wire [3:0] _io_out_activate_2_T_2 = 4'h8 + flow_ptr; // @[Activation_Buffer.scala 76:88]
  wire [3:0] _io_out_activate_2_T_4 = _io_out_activate_2_T_2 - 4'h3; // @[Activation_Buffer.scala 76:99]
  wire [7:0] _GEN_520 = 3'h0 == read_ptr[2:0] & 4'h1 == _io_out_activate_2_T_4 ? buffer_0_1 : buffer_0_0; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_521 = 3'h0 == read_ptr[2:0] & 4'h2 == _io_out_activate_2_T_4 ? buffer_0_2 : _GEN_520; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_522 = 3'h0 == read_ptr[2:0] & 4'h3 == _io_out_activate_2_T_4 ? buffer_0_3 : _GEN_521; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_523 = 3'h0 == read_ptr[2:0] & 4'h4 == _io_out_activate_2_T_4 ? buffer_0_4 : _GEN_522; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_524 = 3'h0 == read_ptr[2:0] & 4'h5 == _io_out_activate_2_T_4 ? buffer_0_5 : _GEN_523; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_525 = 3'h0 == read_ptr[2:0] & 4'h6 == _io_out_activate_2_T_4 ? buffer_0_6 : _GEN_524; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_526 = 3'h0 == read_ptr[2:0] & 4'h7 == _io_out_activate_2_T_4 ? buffer_0_7 : _GEN_525; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_527 = 3'h0 == read_ptr[2:0] & 4'h8 == _io_out_activate_2_T_4 ? buffer_0_8 : _GEN_526; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_528 = 3'h0 == read_ptr[2:0] & 4'h9 == _io_out_activate_2_T_4 ? buffer_0_9 : _GEN_527; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_529 = 3'h0 == read_ptr[2:0] & 4'ha == _io_out_activate_2_T_4 ? buffer_0_10 : _GEN_528; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_530 = 3'h0 == read_ptr[2:0] & 4'hb == _io_out_activate_2_T_4 ? buffer_0_11 : _GEN_529; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_531 = 3'h0 == read_ptr[2:0] & 4'hc == _io_out_activate_2_T_4 ? buffer_0_12 : _GEN_530; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_532 = 3'h0 == read_ptr[2:0] & 4'hd == _io_out_activate_2_T_4 ? buffer_0_13 : _GEN_531; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_533 = 3'h0 == read_ptr[2:0] & 4'he == _io_out_activate_2_T_4 ? buffer_0_14 : _GEN_532; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_534 = 3'h0 == read_ptr[2:0] & 4'hf == _io_out_activate_2_T_4 ? buffer_0_15 : _GEN_533; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_535 = 3'h1 == read_ptr[2:0] & 4'h0 == _io_out_activate_2_T_4 ? buffer_1_0 : _GEN_534; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_536 = 3'h1 == read_ptr[2:0] & 4'h1 == _io_out_activate_2_T_4 ? buffer_1_1 : _GEN_535; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_537 = 3'h1 == read_ptr[2:0] & 4'h2 == _io_out_activate_2_T_4 ? buffer_1_2 : _GEN_536; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_538 = 3'h1 == read_ptr[2:0] & 4'h3 == _io_out_activate_2_T_4 ? buffer_1_3 : _GEN_537; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_539 = 3'h1 == read_ptr[2:0] & 4'h4 == _io_out_activate_2_T_4 ? buffer_1_4 : _GEN_538; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_540 = 3'h1 == read_ptr[2:0] & 4'h5 == _io_out_activate_2_T_4 ? buffer_1_5 : _GEN_539; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_541 = 3'h1 == read_ptr[2:0] & 4'h6 == _io_out_activate_2_T_4 ? buffer_1_6 : _GEN_540; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_542 = 3'h1 == read_ptr[2:0] & 4'h7 == _io_out_activate_2_T_4 ? buffer_1_7 : _GEN_541; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_543 = 3'h1 == read_ptr[2:0] & 4'h8 == _io_out_activate_2_T_4 ? buffer_1_8 : _GEN_542; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_544 = 3'h1 == read_ptr[2:0] & 4'h9 == _io_out_activate_2_T_4 ? buffer_1_9 : _GEN_543; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_545 = 3'h1 == read_ptr[2:0] & 4'ha == _io_out_activate_2_T_4 ? buffer_1_10 : _GEN_544; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_546 = 3'h1 == read_ptr[2:0] & 4'hb == _io_out_activate_2_T_4 ? buffer_1_11 : _GEN_545; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_547 = 3'h1 == read_ptr[2:0] & 4'hc == _io_out_activate_2_T_4 ? buffer_1_12 : _GEN_546; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_548 = 3'h1 == read_ptr[2:0] & 4'hd == _io_out_activate_2_T_4 ? buffer_1_13 : _GEN_547; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_549 = 3'h1 == read_ptr[2:0] & 4'he == _io_out_activate_2_T_4 ? buffer_1_14 : _GEN_548; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_550 = 3'h1 == read_ptr[2:0] & 4'hf == _io_out_activate_2_T_4 ? buffer_1_15 : _GEN_549; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_551 = 3'h2 == read_ptr[2:0] & 4'h0 == _io_out_activate_2_T_4 ? buffer_2_0 : _GEN_550; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_552 = 3'h2 == read_ptr[2:0] & 4'h1 == _io_out_activate_2_T_4 ? buffer_2_1 : _GEN_551; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_553 = 3'h2 == read_ptr[2:0] & 4'h2 == _io_out_activate_2_T_4 ? buffer_2_2 : _GEN_552; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_554 = 3'h2 == read_ptr[2:0] & 4'h3 == _io_out_activate_2_T_4 ? buffer_2_3 : _GEN_553; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_555 = 3'h2 == read_ptr[2:0] & 4'h4 == _io_out_activate_2_T_4 ? buffer_2_4 : _GEN_554; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_556 = 3'h2 == read_ptr[2:0] & 4'h5 == _io_out_activate_2_T_4 ? buffer_2_5 : _GEN_555; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_557 = 3'h2 == read_ptr[2:0] & 4'h6 == _io_out_activate_2_T_4 ? buffer_2_6 : _GEN_556; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_558 = 3'h2 == read_ptr[2:0] & 4'h7 == _io_out_activate_2_T_4 ? buffer_2_7 : _GEN_557; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_559 = 3'h2 == read_ptr[2:0] & 4'h8 == _io_out_activate_2_T_4 ? buffer_2_8 : _GEN_558; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_560 = 3'h2 == read_ptr[2:0] & 4'h9 == _io_out_activate_2_T_4 ? buffer_2_9 : _GEN_559; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_561 = 3'h2 == read_ptr[2:0] & 4'ha == _io_out_activate_2_T_4 ? buffer_2_10 : _GEN_560; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_562 = 3'h2 == read_ptr[2:0] & 4'hb == _io_out_activate_2_T_4 ? buffer_2_11 : _GEN_561; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_563 = 3'h2 == read_ptr[2:0] & 4'hc == _io_out_activate_2_T_4 ? buffer_2_12 : _GEN_562; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_564 = 3'h2 == read_ptr[2:0] & 4'hd == _io_out_activate_2_T_4 ? buffer_2_13 : _GEN_563; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_565 = 3'h2 == read_ptr[2:0] & 4'he == _io_out_activate_2_T_4 ? buffer_2_14 : _GEN_564; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_566 = 3'h2 == read_ptr[2:0] & 4'hf == _io_out_activate_2_T_4 ? buffer_2_15 : _GEN_565; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_567 = 3'h3 == read_ptr[2:0] & 4'h0 == _io_out_activate_2_T_4 ? buffer_3_0 : _GEN_566; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_568 = 3'h3 == read_ptr[2:0] & 4'h1 == _io_out_activate_2_T_4 ? buffer_3_1 : _GEN_567; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_569 = 3'h3 == read_ptr[2:0] & 4'h2 == _io_out_activate_2_T_4 ? buffer_3_2 : _GEN_568; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_570 = 3'h3 == read_ptr[2:0] & 4'h3 == _io_out_activate_2_T_4 ? buffer_3_3 : _GEN_569; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_571 = 3'h3 == read_ptr[2:0] & 4'h4 == _io_out_activate_2_T_4 ? buffer_3_4 : _GEN_570; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_572 = 3'h3 == read_ptr[2:0] & 4'h5 == _io_out_activate_2_T_4 ? buffer_3_5 : _GEN_571; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_573 = 3'h3 == read_ptr[2:0] & 4'h6 == _io_out_activate_2_T_4 ? buffer_3_6 : _GEN_572; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_574 = 3'h3 == read_ptr[2:0] & 4'h7 == _io_out_activate_2_T_4 ? buffer_3_7 : _GEN_573; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_575 = 3'h3 == read_ptr[2:0] & 4'h8 == _io_out_activate_2_T_4 ? buffer_3_8 : _GEN_574; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_576 = 3'h3 == read_ptr[2:0] & 4'h9 == _io_out_activate_2_T_4 ? buffer_3_9 : _GEN_575; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_577 = 3'h3 == read_ptr[2:0] & 4'ha == _io_out_activate_2_T_4 ? buffer_3_10 : _GEN_576; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_578 = 3'h3 == read_ptr[2:0] & 4'hb == _io_out_activate_2_T_4 ? buffer_3_11 : _GEN_577; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_579 = 3'h3 == read_ptr[2:0] & 4'hc == _io_out_activate_2_T_4 ? buffer_3_12 : _GEN_578; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_580 = 3'h3 == read_ptr[2:0] & 4'hd == _io_out_activate_2_T_4 ? buffer_3_13 : _GEN_579; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_581 = 3'h3 == read_ptr[2:0] & 4'he == _io_out_activate_2_T_4 ? buffer_3_14 : _GEN_580; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_582 = 3'h3 == read_ptr[2:0] & 4'hf == _io_out_activate_2_T_4 ? buffer_3_15 : _GEN_581; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_583 = 3'h4 == read_ptr[2:0] & 4'h0 == _io_out_activate_2_T_4 ? buffer_4_0 : _GEN_582; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_584 = 3'h4 == read_ptr[2:0] & 4'h1 == _io_out_activate_2_T_4 ? buffer_4_1 : _GEN_583; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_585 = 3'h4 == read_ptr[2:0] & 4'h2 == _io_out_activate_2_T_4 ? buffer_4_2 : _GEN_584; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_586 = 3'h4 == read_ptr[2:0] & 4'h3 == _io_out_activate_2_T_4 ? buffer_4_3 : _GEN_585; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_587 = 3'h4 == read_ptr[2:0] & 4'h4 == _io_out_activate_2_T_4 ? buffer_4_4 : _GEN_586; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_588 = 3'h4 == read_ptr[2:0] & 4'h5 == _io_out_activate_2_T_4 ? buffer_4_5 : _GEN_587; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_589 = 3'h4 == read_ptr[2:0] & 4'h6 == _io_out_activate_2_T_4 ? buffer_4_6 : _GEN_588; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_590 = 3'h4 == read_ptr[2:0] & 4'h7 == _io_out_activate_2_T_4 ? buffer_4_7 : _GEN_589; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_591 = 3'h4 == read_ptr[2:0] & 4'h8 == _io_out_activate_2_T_4 ? buffer_4_8 : _GEN_590; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_592 = 3'h4 == read_ptr[2:0] & 4'h9 == _io_out_activate_2_T_4 ? buffer_4_9 : _GEN_591; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_593 = 3'h4 == read_ptr[2:0] & 4'ha == _io_out_activate_2_T_4 ? buffer_4_10 : _GEN_592; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_594 = 3'h4 == read_ptr[2:0] & 4'hb == _io_out_activate_2_T_4 ? buffer_4_11 : _GEN_593; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_595 = 3'h4 == read_ptr[2:0] & 4'hc == _io_out_activate_2_T_4 ? buffer_4_12 : _GEN_594; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_596 = 3'h4 == read_ptr[2:0] & 4'hd == _io_out_activate_2_T_4 ? buffer_4_13 : _GEN_595; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_597 = 3'h4 == read_ptr[2:0] & 4'he == _io_out_activate_2_T_4 ? buffer_4_14 : _GEN_596; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_598 = 3'h4 == read_ptr[2:0] & 4'hf == _io_out_activate_2_T_4 ? buffer_4_15 : _GEN_597; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_599 = 3'h5 == read_ptr[2:0] & 4'h0 == _io_out_activate_2_T_4 ? buffer_5_0 : _GEN_598; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_600 = 3'h5 == read_ptr[2:0] & 4'h1 == _io_out_activate_2_T_4 ? buffer_5_1 : _GEN_599; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_601 = 3'h5 == read_ptr[2:0] & 4'h2 == _io_out_activate_2_T_4 ? buffer_5_2 : _GEN_600; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_602 = 3'h5 == read_ptr[2:0] & 4'h3 == _io_out_activate_2_T_4 ? buffer_5_3 : _GEN_601; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_603 = 3'h5 == read_ptr[2:0] & 4'h4 == _io_out_activate_2_T_4 ? buffer_5_4 : _GEN_602; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_604 = 3'h5 == read_ptr[2:0] & 4'h5 == _io_out_activate_2_T_4 ? buffer_5_5 : _GEN_603; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_605 = 3'h5 == read_ptr[2:0] & 4'h6 == _io_out_activate_2_T_4 ? buffer_5_6 : _GEN_604; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_606 = 3'h5 == read_ptr[2:0] & 4'h7 == _io_out_activate_2_T_4 ? buffer_5_7 : _GEN_605; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_607 = 3'h5 == read_ptr[2:0] & 4'h8 == _io_out_activate_2_T_4 ? buffer_5_8 : _GEN_606; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_608 = 3'h5 == read_ptr[2:0] & 4'h9 == _io_out_activate_2_T_4 ? buffer_5_9 : _GEN_607; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_609 = 3'h5 == read_ptr[2:0] & 4'ha == _io_out_activate_2_T_4 ? buffer_5_10 : _GEN_608; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_610 = 3'h5 == read_ptr[2:0] & 4'hb == _io_out_activate_2_T_4 ? buffer_5_11 : _GEN_609; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_611 = 3'h5 == read_ptr[2:0] & 4'hc == _io_out_activate_2_T_4 ? buffer_5_12 : _GEN_610; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_612 = 3'h5 == read_ptr[2:0] & 4'hd == _io_out_activate_2_T_4 ? buffer_5_13 : _GEN_611; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_613 = 3'h5 == read_ptr[2:0] & 4'he == _io_out_activate_2_T_4 ? buffer_5_14 : _GEN_612; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_614 = 3'h5 == read_ptr[2:0] & 4'hf == _io_out_activate_2_T_4 ? buffer_5_15 : _GEN_613; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_615 = 3'h6 == read_ptr[2:0] & 4'h0 == _io_out_activate_2_T_4 ? buffer_6_0 : _GEN_614; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_616 = 3'h6 == read_ptr[2:0] & 4'h1 == _io_out_activate_2_T_4 ? buffer_6_1 : _GEN_615; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_617 = 3'h6 == read_ptr[2:0] & 4'h2 == _io_out_activate_2_T_4 ? buffer_6_2 : _GEN_616; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_618 = 3'h6 == read_ptr[2:0] & 4'h3 == _io_out_activate_2_T_4 ? buffer_6_3 : _GEN_617; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_619 = 3'h6 == read_ptr[2:0] & 4'h4 == _io_out_activate_2_T_4 ? buffer_6_4 : _GEN_618; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_620 = 3'h6 == read_ptr[2:0] & 4'h5 == _io_out_activate_2_T_4 ? buffer_6_5 : _GEN_619; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_621 = 3'h6 == read_ptr[2:0] & 4'h6 == _io_out_activate_2_T_4 ? buffer_6_6 : _GEN_620; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_622 = 3'h6 == read_ptr[2:0] & 4'h7 == _io_out_activate_2_T_4 ? buffer_6_7 : _GEN_621; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_623 = 3'h6 == read_ptr[2:0] & 4'h8 == _io_out_activate_2_T_4 ? buffer_6_8 : _GEN_622; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_624 = 3'h6 == read_ptr[2:0] & 4'h9 == _io_out_activate_2_T_4 ? buffer_6_9 : _GEN_623; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_625 = 3'h6 == read_ptr[2:0] & 4'ha == _io_out_activate_2_T_4 ? buffer_6_10 : _GEN_624; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_626 = 3'h6 == read_ptr[2:0] & 4'hb == _io_out_activate_2_T_4 ? buffer_6_11 : _GEN_625; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_627 = 3'h6 == read_ptr[2:0] & 4'hc == _io_out_activate_2_T_4 ? buffer_6_12 : _GEN_626; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_628 = 3'h6 == read_ptr[2:0] & 4'hd == _io_out_activate_2_T_4 ? buffer_6_13 : _GEN_627; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_629 = 3'h6 == read_ptr[2:0] & 4'he == _io_out_activate_2_T_4 ? buffer_6_14 : _GEN_628; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_630 = 3'h6 == read_ptr[2:0] & 4'hf == _io_out_activate_2_T_4 ? buffer_6_15 : _GEN_629; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_631 = 3'h7 == read_ptr[2:0] & 4'h0 == _io_out_activate_2_T_4 ? buffer_7_0 : _GEN_630; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_632 = 3'h7 == read_ptr[2:0] & 4'h1 == _io_out_activate_2_T_4 ? buffer_7_1 : _GEN_631; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_633 = 3'h7 == read_ptr[2:0] & 4'h2 == _io_out_activate_2_T_4 ? buffer_7_2 : _GEN_632; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_634 = 3'h7 == read_ptr[2:0] & 4'h3 == _io_out_activate_2_T_4 ? buffer_7_3 : _GEN_633; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_635 = 3'h7 == read_ptr[2:0] & 4'h4 == _io_out_activate_2_T_4 ? buffer_7_4 : _GEN_634; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_636 = 3'h7 == read_ptr[2:0] & 4'h5 == _io_out_activate_2_T_4 ? buffer_7_5 : _GEN_635; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_637 = 3'h7 == read_ptr[2:0] & 4'h6 == _io_out_activate_2_T_4 ? buffer_7_6 : _GEN_636; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_638 = 3'h7 == read_ptr[2:0] & 4'h7 == _io_out_activate_2_T_4 ? buffer_7_7 : _GEN_637; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_639 = 3'h7 == read_ptr[2:0] & 4'h8 == _io_out_activate_2_T_4 ? buffer_7_8 : _GEN_638; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_640 = 3'h7 == read_ptr[2:0] & 4'h9 == _io_out_activate_2_T_4 ? buffer_7_9 : _GEN_639; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_641 = 3'h7 == read_ptr[2:0] & 4'ha == _io_out_activate_2_T_4 ? buffer_7_10 : _GEN_640; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_642 = 3'h7 == read_ptr[2:0] & 4'hb == _io_out_activate_2_T_4 ? buffer_7_11 : _GEN_641; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_643 = 3'h7 == read_ptr[2:0] & 4'hc == _io_out_activate_2_T_4 ? buffer_7_12 : _GEN_642; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_644 = 3'h7 == read_ptr[2:0] & 4'hd == _io_out_activate_2_T_4 ? buffer_7_13 : _GEN_643; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_645 = 3'h7 == read_ptr[2:0] & 4'he == _io_out_activate_2_T_4 ? buffer_7_14 : _GEN_644; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_646 = 3'h7 == read_ptr[2:0] & 4'hf == _io_out_activate_2_T_4 ? buffer_7_15 : _GEN_645; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_647 = 4'h2 < flow_ptr & flow_ptr <= 4'h6 ? _GEN_646 : 8'h0; // @[Activation_Buffer.scala 75:65 76:28 78:28]
  wire [3:0] _io_out_activate_3_T_2 = 4'hc + flow_ptr; // @[Activation_Buffer.scala 76:88]
  wire [3:0] _io_out_activate_3_T_4 = _io_out_activate_3_T_2 - 4'h4; // @[Activation_Buffer.scala 76:99]
  wire [7:0] _GEN_649 = 3'h0 == read_ptr[2:0] & 4'h1 == _io_out_activate_3_T_4 ? buffer_0_1 : buffer_0_0; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_650 = 3'h0 == read_ptr[2:0] & 4'h2 == _io_out_activate_3_T_4 ? buffer_0_2 : _GEN_649; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_651 = 3'h0 == read_ptr[2:0] & 4'h3 == _io_out_activate_3_T_4 ? buffer_0_3 : _GEN_650; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_652 = 3'h0 == read_ptr[2:0] & 4'h4 == _io_out_activate_3_T_4 ? buffer_0_4 : _GEN_651; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_653 = 3'h0 == read_ptr[2:0] & 4'h5 == _io_out_activate_3_T_4 ? buffer_0_5 : _GEN_652; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_654 = 3'h0 == read_ptr[2:0] & 4'h6 == _io_out_activate_3_T_4 ? buffer_0_6 : _GEN_653; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_655 = 3'h0 == read_ptr[2:0] & 4'h7 == _io_out_activate_3_T_4 ? buffer_0_7 : _GEN_654; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_656 = 3'h0 == read_ptr[2:0] & 4'h8 == _io_out_activate_3_T_4 ? buffer_0_8 : _GEN_655; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_657 = 3'h0 == read_ptr[2:0] & 4'h9 == _io_out_activate_3_T_4 ? buffer_0_9 : _GEN_656; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_658 = 3'h0 == read_ptr[2:0] & 4'ha == _io_out_activate_3_T_4 ? buffer_0_10 : _GEN_657; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_659 = 3'h0 == read_ptr[2:0] & 4'hb == _io_out_activate_3_T_4 ? buffer_0_11 : _GEN_658; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_660 = 3'h0 == read_ptr[2:0] & 4'hc == _io_out_activate_3_T_4 ? buffer_0_12 : _GEN_659; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_661 = 3'h0 == read_ptr[2:0] & 4'hd == _io_out_activate_3_T_4 ? buffer_0_13 : _GEN_660; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_662 = 3'h0 == read_ptr[2:0] & 4'he == _io_out_activate_3_T_4 ? buffer_0_14 : _GEN_661; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_663 = 3'h0 == read_ptr[2:0] & 4'hf == _io_out_activate_3_T_4 ? buffer_0_15 : _GEN_662; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_664 = 3'h1 == read_ptr[2:0] & 4'h0 == _io_out_activate_3_T_4 ? buffer_1_0 : _GEN_663; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_665 = 3'h1 == read_ptr[2:0] & 4'h1 == _io_out_activate_3_T_4 ? buffer_1_1 : _GEN_664; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_666 = 3'h1 == read_ptr[2:0] & 4'h2 == _io_out_activate_3_T_4 ? buffer_1_2 : _GEN_665; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_667 = 3'h1 == read_ptr[2:0] & 4'h3 == _io_out_activate_3_T_4 ? buffer_1_3 : _GEN_666; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_668 = 3'h1 == read_ptr[2:0] & 4'h4 == _io_out_activate_3_T_4 ? buffer_1_4 : _GEN_667; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_669 = 3'h1 == read_ptr[2:0] & 4'h5 == _io_out_activate_3_T_4 ? buffer_1_5 : _GEN_668; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_670 = 3'h1 == read_ptr[2:0] & 4'h6 == _io_out_activate_3_T_4 ? buffer_1_6 : _GEN_669; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_671 = 3'h1 == read_ptr[2:0] & 4'h7 == _io_out_activate_3_T_4 ? buffer_1_7 : _GEN_670; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_672 = 3'h1 == read_ptr[2:0] & 4'h8 == _io_out_activate_3_T_4 ? buffer_1_8 : _GEN_671; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_673 = 3'h1 == read_ptr[2:0] & 4'h9 == _io_out_activate_3_T_4 ? buffer_1_9 : _GEN_672; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_674 = 3'h1 == read_ptr[2:0] & 4'ha == _io_out_activate_3_T_4 ? buffer_1_10 : _GEN_673; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_675 = 3'h1 == read_ptr[2:0] & 4'hb == _io_out_activate_3_T_4 ? buffer_1_11 : _GEN_674; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_676 = 3'h1 == read_ptr[2:0] & 4'hc == _io_out_activate_3_T_4 ? buffer_1_12 : _GEN_675; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_677 = 3'h1 == read_ptr[2:0] & 4'hd == _io_out_activate_3_T_4 ? buffer_1_13 : _GEN_676; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_678 = 3'h1 == read_ptr[2:0] & 4'he == _io_out_activate_3_T_4 ? buffer_1_14 : _GEN_677; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_679 = 3'h1 == read_ptr[2:0] & 4'hf == _io_out_activate_3_T_4 ? buffer_1_15 : _GEN_678; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_680 = 3'h2 == read_ptr[2:0] & 4'h0 == _io_out_activate_3_T_4 ? buffer_2_0 : _GEN_679; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_681 = 3'h2 == read_ptr[2:0] & 4'h1 == _io_out_activate_3_T_4 ? buffer_2_1 : _GEN_680; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_682 = 3'h2 == read_ptr[2:0] & 4'h2 == _io_out_activate_3_T_4 ? buffer_2_2 : _GEN_681; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_683 = 3'h2 == read_ptr[2:0] & 4'h3 == _io_out_activate_3_T_4 ? buffer_2_3 : _GEN_682; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_684 = 3'h2 == read_ptr[2:0] & 4'h4 == _io_out_activate_3_T_4 ? buffer_2_4 : _GEN_683; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_685 = 3'h2 == read_ptr[2:0] & 4'h5 == _io_out_activate_3_T_4 ? buffer_2_5 : _GEN_684; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_686 = 3'h2 == read_ptr[2:0] & 4'h6 == _io_out_activate_3_T_4 ? buffer_2_6 : _GEN_685; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_687 = 3'h2 == read_ptr[2:0] & 4'h7 == _io_out_activate_3_T_4 ? buffer_2_7 : _GEN_686; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_688 = 3'h2 == read_ptr[2:0] & 4'h8 == _io_out_activate_3_T_4 ? buffer_2_8 : _GEN_687; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_689 = 3'h2 == read_ptr[2:0] & 4'h9 == _io_out_activate_3_T_4 ? buffer_2_9 : _GEN_688; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_690 = 3'h2 == read_ptr[2:0] & 4'ha == _io_out_activate_3_T_4 ? buffer_2_10 : _GEN_689; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_691 = 3'h2 == read_ptr[2:0] & 4'hb == _io_out_activate_3_T_4 ? buffer_2_11 : _GEN_690; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_692 = 3'h2 == read_ptr[2:0] & 4'hc == _io_out_activate_3_T_4 ? buffer_2_12 : _GEN_691; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_693 = 3'h2 == read_ptr[2:0] & 4'hd == _io_out_activate_3_T_4 ? buffer_2_13 : _GEN_692; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_694 = 3'h2 == read_ptr[2:0] & 4'he == _io_out_activate_3_T_4 ? buffer_2_14 : _GEN_693; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_695 = 3'h2 == read_ptr[2:0] & 4'hf == _io_out_activate_3_T_4 ? buffer_2_15 : _GEN_694; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_696 = 3'h3 == read_ptr[2:0] & 4'h0 == _io_out_activate_3_T_4 ? buffer_3_0 : _GEN_695; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_697 = 3'h3 == read_ptr[2:0] & 4'h1 == _io_out_activate_3_T_4 ? buffer_3_1 : _GEN_696; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_698 = 3'h3 == read_ptr[2:0] & 4'h2 == _io_out_activate_3_T_4 ? buffer_3_2 : _GEN_697; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_699 = 3'h3 == read_ptr[2:0] & 4'h3 == _io_out_activate_3_T_4 ? buffer_3_3 : _GEN_698; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_700 = 3'h3 == read_ptr[2:0] & 4'h4 == _io_out_activate_3_T_4 ? buffer_3_4 : _GEN_699; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_701 = 3'h3 == read_ptr[2:0] & 4'h5 == _io_out_activate_3_T_4 ? buffer_3_5 : _GEN_700; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_702 = 3'h3 == read_ptr[2:0] & 4'h6 == _io_out_activate_3_T_4 ? buffer_3_6 : _GEN_701; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_703 = 3'h3 == read_ptr[2:0] & 4'h7 == _io_out_activate_3_T_4 ? buffer_3_7 : _GEN_702; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_704 = 3'h3 == read_ptr[2:0] & 4'h8 == _io_out_activate_3_T_4 ? buffer_3_8 : _GEN_703; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_705 = 3'h3 == read_ptr[2:0] & 4'h9 == _io_out_activate_3_T_4 ? buffer_3_9 : _GEN_704; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_706 = 3'h3 == read_ptr[2:0] & 4'ha == _io_out_activate_3_T_4 ? buffer_3_10 : _GEN_705; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_707 = 3'h3 == read_ptr[2:0] & 4'hb == _io_out_activate_3_T_4 ? buffer_3_11 : _GEN_706; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_708 = 3'h3 == read_ptr[2:0] & 4'hc == _io_out_activate_3_T_4 ? buffer_3_12 : _GEN_707; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_709 = 3'h3 == read_ptr[2:0] & 4'hd == _io_out_activate_3_T_4 ? buffer_3_13 : _GEN_708; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_710 = 3'h3 == read_ptr[2:0] & 4'he == _io_out_activate_3_T_4 ? buffer_3_14 : _GEN_709; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_711 = 3'h3 == read_ptr[2:0] & 4'hf == _io_out_activate_3_T_4 ? buffer_3_15 : _GEN_710; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_712 = 3'h4 == read_ptr[2:0] & 4'h0 == _io_out_activate_3_T_4 ? buffer_4_0 : _GEN_711; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_713 = 3'h4 == read_ptr[2:0] & 4'h1 == _io_out_activate_3_T_4 ? buffer_4_1 : _GEN_712; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_714 = 3'h4 == read_ptr[2:0] & 4'h2 == _io_out_activate_3_T_4 ? buffer_4_2 : _GEN_713; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_715 = 3'h4 == read_ptr[2:0] & 4'h3 == _io_out_activate_3_T_4 ? buffer_4_3 : _GEN_714; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_716 = 3'h4 == read_ptr[2:0] & 4'h4 == _io_out_activate_3_T_4 ? buffer_4_4 : _GEN_715; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_717 = 3'h4 == read_ptr[2:0] & 4'h5 == _io_out_activate_3_T_4 ? buffer_4_5 : _GEN_716; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_718 = 3'h4 == read_ptr[2:0] & 4'h6 == _io_out_activate_3_T_4 ? buffer_4_6 : _GEN_717; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_719 = 3'h4 == read_ptr[2:0] & 4'h7 == _io_out_activate_3_T_4 ? buffer_4_7 : _GEN_718; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_720 = 3'h4 == read_ptr[2:0] & 4'h8 == _io_out_activate_3_T_4 ? buffer_4_8 : _GEN_719; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_721 = 3'h4 == read_ptr[2:0] & 4'h9 == _io_out_activate_3_T_4 ? buffer_4_9 : _GEN_720; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_722 = 3'h4 == read_ptr[2:0] & 4'ha == _io_out_activate_3_T_4 ? buffer_4_10 : _GEN_721; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_723 = 3'h4 == read_ptr[2:0] & 4'hb == _io_out_activate_3_T_4 ? buffer_4_11 : _GEN_722; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_724 = 3'h4 == read_ptr[2:0] & 4'hc == _io_out_activate_3_T_4 ? buffer_4_12 : _GEN_723; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_725 = 3'h4 == read_ptr[2:0] & 4'hd == _io_out_activate_3_T_4 ? buffer_4_13 : _GEN_724; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_726 = 3'h4 == read_ptr[2:0] & 4'he == _io_out_activate_3_T_4 ? buffer_4_14 : _GEN_725; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_727 = 3'h4 == read_ptr[2:0] & 4'hf == _io_out_activate_3_T_4 ? buffer_4_15 : _GEN_726; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_728 = 3'h5 == read_ptr[2:0] & 4'h0 == _io_out_activate_3_T_4 ? buffer_5_0 : _GEN_727; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_729 = 3'h5 == read_ptr[2:0] & 4'h1 == _io_out_activate_3_T_4 ? buffer_5_1 : _GEN_728; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_730 = 3'h5 == read_ptr[2:0] & 4'h2 == _io_out_activate_3_T_4 ? buffer_5_2 : _GEN_729; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_731 = 3'h5 == read_ptr[2:0] & 4'h3 == _io_out_activate_3_T_4 ? buffer_5_3 : _GEN_730; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_732 = 3'h5 == read_ptr[2:0] & 4'h4 == _io_out_activate_3_T_4 ? buffer_5_4 : _GEN_731; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_733 = 3'h5 == read_ptr[2:0] & 4'h5 == _io_out_activate_3_T_4 ? buffer_5_5 : _GEN_732; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_734 = 3'h5 == read_ptr[2:0] & 4'h6 == _io_out_activate_3_T_4 ? buffer_5_6 : _GEN_733; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_735 = 3'h5 == read_ptr[2:0] & 4'h7 == _io_out_activate_3_T_4 ? buffer_5_7 : _GEN_734; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_736 = 3'h5 == read_ptr[2:0] & 4'h8 == _io_out_activate_3_T_4 ? buffer_5_8 : _GEN_735; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_737 = 3'h5 == read_ptr[2:0] & 4'h9 == _io_out_activate_3_T_4 ? buffer_5_9 : _GEN_736; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_738 = 3'h5 == read_ptr[2:0] & 4'ha == _io_out_activate_3_T_4 ? buffer_5_10 : _GEN_737; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_739 = 3'h5 == read_ptr[2:0] & 4'hb == _io_out_activate_3_T_4 ? buffer_5_11 : _GEN_738; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_740 = 3'h5 == read_ptr[2:0] & 4'hc == _io_out_activate_3_T_4 ? buffer_5_12 : _GEN_739; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_741 = 3'h5 == read_ptr[2:0] & 4'hd == _io_out_activate_3_T_4 ? buffer_5_13 : _GEN_740; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_742 = 3'h5 == read_ptr[2:0] & 4'he == _io_out_activate_3_T_4 ? buffer_5_14 : _GEN_741; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_743 = 3'h5 == read_ptr[2:0] & 4'hf == _io_out_activate_3_T_4 ? buffer_5_15 : _GEN_742; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_744 = 3'h6 == read_ptr[2:0] & 4'h0 == _io_out_activate_3_T_4 ? buffer_6_0 : _GEN_743; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_745 = 3'h6 == read_ptr[2:0] & 4'h1 == _io_out_activate_3_T_4 ? buffer_6_1 : _GEN_744; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_746 = 3'h6 == read_ptr[2:0] & 4'h2 == _io_out_activate_3_T_4 ? buffer_6_2 : _GEN_745; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_747 = 3'h6 == read_ptr[2:0] & 4'h3 == _io_out_activate_3_T_4 ? buffer_6_3 : _GEN_746; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_748 = 3'h6 == read_ptr[2:0] & 4'h4 == _io_out_activate_3_T_4 ? buffer_6_4 : _GEN_747; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_749 = 3'h6 == read_ptr[2:0] & 4'h5 == _io_out_activate_3_T_4 ? buffer_6_5 : _GEN_748; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_750 = 3'h6 == read_ptr[2:0] & 4'h6 == _io_out_activate_3_T_4 ? buffer_6_6 : _GEN_749; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_751 = 3'h6 == read_ptr[2:0] & 4'h7 == _io_out_activate_3_T_4 ? buffer_6_7 : _GEN_750; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_752 = 3'h6 == read_ptr[2:0] & 4'h8 == _io_out_activate_3_T_4 ? buffer_6_8 : _GEN_751; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_753 = 3'h6 == read_ptr[2:0] & 4'h9 == _io_out_activate_3_T_4 ? buffer_6_9 : _GEN_752; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_754 = 3'h6 == read_ptr[2:0] & 4'ha == _io_out_activate_3_T_4 ? buffer_6_10 : _GEN_753; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_755 = 3'h6 == read_ptr[2:0] & 4'hb == _io_out_activate_3_T_4 ? buffer_6_11 : _GEN_754; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_756 = 3'h6 == read_ptr[2:0] & 4'hc == _io_out_activate_3_T_4 ? buffer_6_12 : _GEN_755; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_757 = 3'h6 == read_ptr[2:0] & 4'hd == _io_out_activate_3_T_4 ? buffer_6_13 : _GEN_756; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_758 = 3'h6 == read_ptr[2:0] & 4'he == _io_out_activate_3_T_4 ? buffer_6_14 : _GEN_757; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_759 = 3'h6 == read_ptr[2:0] & 4'hf == _io_out_activate_3_T_4 ? buffer_6_15 : _GEN_758; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_760 = 3'h7 == read_ptr[2:0] & 4'h0 == _io_out_activate_3_T_4 ? buffer_7_0 : _GEN_759; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_761 = 3'h7 == read_ptr[2:0] & 4'h1 == _io_out_activate_3_T_4 ? buffer_7_1 : _GEN_760; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_762 = 3'h7 == read_ptr[2:0] & 4'h2 == _io_out_activate_3_T_4 ? buffer_7_2 : _GEN_761; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_763 = 3'h7 == read_ptr[2:0] & 4'h3 == _io_out_activate_3_T_4 ? buffer_7_3 : _GEN_762; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_764 = 3'h7 == read_ptr[2:0] & 4'h4 == _io_out_activate_3_T_4 ? buffer_7_4 : _GEN_763; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_765 = 3'h7 == read_ptr[2:0] & 4'h5 == _io_out_activate_3_T_4 ? buffer_7_5 : _GEN_764; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_766 = 3'h7 == read_ptr[2:0] & 4'h6 == _io_out_activate_3_T_4 ? buffer_7_6 : _GEN_765; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_767 = 3'h7 == read_ptr[2:0] & 4'h7 == _io_out_activate_3_T_4 ? buffer_7_7 : _GEN_766; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_768 = 3'h7 == read_ptr[2:0] & 4'h8 == _io_out_activate_3_T_4 ? buffer_7_8 : _GEN_767; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_769 = 3'h7 == read_ptr[2:0] & 4'h9 == _io_out_activate_3_T_4 ? buffer_7_9 : _GEN_768; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_770 = 3'h7 == read_ptr[2:0] & 4'ha == _io_out_activate_3_T_4 ? buffer_7_10 : _GEN_769; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_771 = 3'h7 == read_ptr[2:0] & 4'hb == _io_out_activate_3_T_4 ? buffer_7_11 : _GEN_770; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_772 = 3'h7 == read_ptr[2:0] & 4'hc == _io_out_activate_3_T_4 ? buffer_7_12 : _GEN_771; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_773 = 3'h7 == read_ptr[2:0] & 4'hd == _io_out_activate_3_T_4 ? buffer_7_13 : _GEN_772; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_774 = 3'h7 == read_ptr[2:0] & 4'he == _io_out_activate_3_T_4 ? buffer_7_14 : _GEN_773; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_775 = 3'h7 == read_ptr[2:0] & 4'hf == _io_out_activate_3_T_4 ? buffer_7_15 : _GEN_774; // @[Activation_Buffer.scala 76:{28,28}]
  wire [7:0] _GEN_776 = 4'h3 < flow_ptr & flow_ptr <= 4'h7 ? _GEN_775 : 8'h0; // @[Activation_Buffer.scala 75:65 76:28 78:28]
  wire [3:0] _read_ptr_T_1 = read_ptr + 4'h1; // @[Activation_Buffer.scala 88:26]
  assign io_out_activate_0 = _T_23 ? _GEN_389 : 8'h0; // @[Activation_Buffer.scala 73:26 83:26]
  assign io_out_activate_1 = _T_23 ? _GEN_518 : 8'h0; // @[Activation_Buffer.scala 73:26 83:26]
  assign io_out_activate_2 = _T_23 ? _GEN_647 : 8'h0; // @[Activation_Buffer.scala 73:26 83:26]
  assign io_out_activate_3 = _T_23 ? _GEN_776 : 8'h0; // @[Activation_Buffer.scala 73:26 83:26]
  assign io_out_flow = flow_ptr != 4'h0; // @[Activation_Buffer.scala 67:17]
  assign io_isfull = read_ptr[2:0] == write_ptr[2:0] & read_ptr[3] != write_ptr[3]; // @[Activation_Buffer.scala 33:82]
  assign io_isempty = _full_T_2 & read_ptr[3] == write_ptr[3]; // @[Activation_Buffer.scala 34:83]
  assign io_isdone = flow_ptr == 4'ha; // @[Activation_Buffer.scala 93:17]
  always @(posedge clock) begin
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_0 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_0 <= io_in_data_x_0; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_1 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_1 <= io_in_data_x_4; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_2 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_2 <= io_in_data_x_8; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_3 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_3 <= io_in_data_x_12; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_4 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_4 <= io_in_data_x_1; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_5 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_5 <= io_in_data_x_5; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_6 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_6 <= io_in_data_x_9; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_7 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_7 <= io_in_data_x_13; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_8 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_8 <= io_in_data_x_2; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_9 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_9 <= io_in_data_x_6; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_10 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_10 <= io_in_data_x_10; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_11 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_11 <= io_in_data_x_14; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_12 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_12 <= io_in_data_x_3; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_13 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_13 <= io_in_data_x_7; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_14 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_14 <= io_in_data_x_11; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_0_15 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h0 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_0_15 <= io_in_data_x_15; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_0 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_0 <= io_in_data_x_0; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_1 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_1 <= io_in_data_x_4; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_2 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_2 <= io_in_data_x_8; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_3 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_3 <= io_in_data_x_12; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_4 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_4 <= io_in_data_x_1; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_5 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_5 <= io_in_data_x_5; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_6 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_6 <= io_in_data_x_9; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_7 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_7 <= io_in_data_x_13; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_8 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_8 <= io_in_data_x_2; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_9 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_9 <= io_in_data_x_6; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_10 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_10 <= io_in_data_x_10; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_11 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_11 <= io_in_data_x_14; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_12 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_12 <= io_in_data_x_3; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_13 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_13 <= io_in_data_x_7; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_14 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_14 <= io_in_data_x_11; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_1_15 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h1 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_1_15 <= io_in_data_x_15; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_0 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_0 <= io_in_data_x_0; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_1 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_1 <= io_in_data_x_4; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_2 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_2 <= io_in_data_x_8; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_3 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_3 <= io_in_data_x_12; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_4 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_4 <= io_in_data_x_1; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_5 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_5 <= io_in_data_x_5; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_6 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_6 <= io_in_data_x_9; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_7 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_7 <= io_in_data_x_13; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_8 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_8 <= io_in_data_x_2; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_9 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_9 <= io_in_data_x_6; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_10 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_10 <= io_in_data_x_10; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_11 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_11 <= io_in_data_x_14; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_12 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_12 <= io_in_data_x_3; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_13 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_13 <= io_in_data_x_7; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_14 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_14 <= io_in_data_x_11; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_2_15 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h2 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_2_15 <= io_in_data_x_15; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_0 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_0 <= io_in_data_x_0; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_1 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_1 <= io_in_data_x_4; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_2 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_2 <= io_in_data_x_8; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_3 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_3 <= io_in_data_x_12; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_4 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_4 <= io_in_data_x_1; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_5 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_5 <= io_in_data_x_5; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_6 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_6 <= io_in_data_x_9; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_7 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_7 <= io_in_data_x_13; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_8 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_8 <= io_in_data_x_2; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_9 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_9 <= io_in_data_x_6; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_10 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_10 <= io_in_data_x_10; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_11 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_11 <= io_in_data_x_14; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_12 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_12 <= io_in_data_x_3; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_13 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_13 <= io_in_data_x_7; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_14 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_14 <= io_in_data_x_11; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_3_15 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h3 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_3_15 <= io_in_data_x_15; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_0 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_0 <= io_in_data_x_0; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_1 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_1 <= io_in_data_x_4; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_2 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_2 <= io_in_data_x_8; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_3 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_3 <= io_in_data_x_12; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_4 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_4 <= io_in_data_x_1; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_5 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_5 <= io_in_data_x_5; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_6 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_6 <= io_in_data_x_9; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_7 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_7 <= io_in_data_x_13; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_8 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_8 <= io_in_data_x_2; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_9 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_9 <= io_in_data_x_6; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_10 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_10 <= io_in_data_x_10; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_11 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_11 <= io_in_data_x_14; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_12 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_12 <= io_in_data_x_3; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_13 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_13 <= io_in_data_x_7; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_14 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_14 <= io_in_data_x_11; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_4_15 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h4 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_4_15 <= io_in_data_x_15; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_0 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_0 <= io_in_data_x_0; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_1 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_1 <= io_in_data_x_4; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_2 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_2 <= io_in_data_x_8; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_3 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_3 <= io_in_data_x_12; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_4 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_4 <= io_in_data_x_1; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_5 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_5 <= io_in_data_x_5; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_6 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_6 <= io_in_data_x_9; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_7 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_7 <= io_in_data_x_13; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_8 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_8 <= io_in_data_x_2; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_9 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_9 <= io_in_data_x_6; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_10 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_10 <= io_in_data_x_10; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_11 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_11 <= io_in_data_x_14; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_12 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_12 <= io_in_data_x_3; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_13 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_13 <= io_in_data_x_7; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_14 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_14 <= io_in_data_x_11; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_5_15 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h5 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_5_15 <= io_in_data_x_15; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_0 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_0 <= io_in_data_x_0; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_1 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_1 <= io_in_data_x_4; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_2 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_2 <= io_in_data_x_8; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_3 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_3 <= io_in_data_x_12; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_4 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_4 <= io_in_data_x_1; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_5 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_5 <= io_in_data_x_5; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_6 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_6 <= io_in_data_x_9; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_7 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_7 <= io_in_data_x_13; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_8 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_8 <= io_in_data_x_2; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_9 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_9 <= io_in_data_x_6; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_10 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_10 <= io_in_data_x_10; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_11 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_11 <= io_in_data_x_14; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_12 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_12 <= io_in_data_x_3; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_13 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_13 <= io_in_data_x_7; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_14 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_14 <= io_in_data_x_11; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_6_15 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h6 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_6_15 <= io_in_data_x_15; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_0 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_0 <= io_in_data_x_0; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_1 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_1 <= io_in_data_x_4; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_2 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_2 <= io_in_data_x_8; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_3 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_3 <= io_in_data_x_12; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_4 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_4 <= io_in_data_x_1; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_5 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_5 <= io_in_data_x_5; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_6 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_6 <= io_in_data_x_9; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_7 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_7 <= io_in_data_x_13; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_8 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_8 <= io_in_data_x_2; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_9 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_9 <= io_in_data_x_6; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_10 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_10 <= io_in_data_x_10; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_11 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_11 <= io_in_data_x_14; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_12 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_12 <= io_in_data_x_3; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_13 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_13 <= io_in_data_x_7; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_14 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_14 <= io_in_data_x_11; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 24:23]
      buffer_7_15 <= 8'h0; // @[Activation_Buffer.scala 24:23]
    end else if (_T_1) begin // @[Activation_Buffer.scala 46:27]
      if (3'h7 == write_ptr[2:0]) begin // @[Activation_Buffer.scala 49:68]
        buffer_7_15 <= io_in_data_x_15; // @[Activation_Buffer.scala 49:68]
      end
    end
    if (reset) begin // @[Activation_Buffer.scala 27:25]
      read_ptr <= 4'h0; // @[Activation_Buffer.scala 27:25]
    end else if (_T_22) begin // @[Activation_Buffer.scala 87:43]
      read_ptr <= _read_ptr_T_1; // @[Activation_Buffer.scala 88:14]
    end
    if (reset) begin // @[Activation_Buffer.scala 28:26]
      write_ptr <= 4'h0; // @[Activation_Buffer.scala 28:26]
    end else if (io_wen & ~full) begin // @[Activation_Buffer.scala 39:27]
      write_ptr <= _write_ptr_T_1; // @[Activation_Buffer.scala 40:15]
    end
    if (reset) begin // @[Activation_Buffer.scala 55:25]
      flow_ptr <= 4'h0; // @[Activation_Buffer.scala 55:25]
    end else if (io_ren & ~empty) begin // @[Activation_Buffer.scala 57:28]
      flow_ptr <= _flow_ptr_T_1; // @[Activation_Buffer.scala 58:14]
    end else if (flow_ptr == 4'ha) begin // @[Activation_Buffer.scala 59:49]
      flow_ptr <= 4'h0; // @[Activation_Buffer.scala 60:14]
    end else if (flow_ptr != 4'h0) begin // @[Activation_Buffer.scala 61:32]
      flow_ptr <= _flow_ptr_T_1; // @[Activation_Buffer.scala 62:14]
    end else begin
      flow_ptr <= 4'h0; // @[Activation_Buffer.scala 64:14]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  buffer_0_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  buffer_0_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  buffer_0_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  buffer_0_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  buffer_0_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  buffer_0_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  buffer_0_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  buffer_0_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  buffer_0_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  buffer_0_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  buffer_0_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  buffer_0_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  buffer_0_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  buffer_0_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  buffer_0_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  buffer_0_15 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  buffer_1_0 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  buffer_1_1 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  buffer_1_2 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  buffer_1_3 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  buffer_1_4 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  buffer_1_5 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  buffer_1_6 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  buffer_1_7 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  buffer_1_8 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  buffer_1_9 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  buffer_1_10 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  buffer_1_11 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  buffer_1_12 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  buffer_1_13 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  buffer_1_14 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  buffer_1_15 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  buffer_2_0 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  buffer_2_1 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  buffer_2_2 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  buffer_2_3 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  buffer_2_4 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  buffer_2_5 = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  buffer_2_6 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  buffer_2_7 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  buffer_2_8 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  buffer_2_9 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  buffer_2_10 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  buffer_2_11 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  buffer_2_12 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  buffer_2_13 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  buffer_2_14 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  buffer_2_15 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  buffer_3_0 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  buffer_3_1 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  buffer_3_2 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  buffer_3_3 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  buffer_3_4 = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  buffer_3_5 = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  buffer_3_6 = _RAND_54[7:0];
  _RAND_55 = {1{`RANDOM}};
  buffer_3_7 = _RAND_55[7:0];
  _RAND_56 = {1{`RANDOM}};
  buffer_3_8 = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  buffer_3_9 = _RAND_57[7:0];
  _RAND_58 = {1{`RANDOM}};
  buffer_3_10 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  buffer_3_11 = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  buffer_3_12 = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  buffer_3_13 = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  buffer_3_14 = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  buffer_3_15 = _RAND_63[7:0];
  _RAND_64 = {1{`RANDOM}};
  buffer_4_0 = _RAND_64[7:0];
  _RAND_65 = {1{`RANDOM}};
  buffer_4_1 = _RAND_65[7:0];
  _RAND_66 = {1{`RANDOM}};
  buffer_4_2 = _RAND_66[7:0];
  _RAND_67 = {1{`RANDOM}};
  buffer_4_3 = _RAND_67[7:0];
  _RAND_68 = {1{`RANDOM}};
  buffer_4_4 = _RAND_68[7:0];
  _RAND_69 = {1{`RANDOM}};
  buffer_4_5 = _RAND_69[7:0];
  _RAND_70 = {1{`RANDOM}};
  buffer_4_6 = _RAND_70[7:0];
  _RAND_71 = {1{`RANDOM}};
  buffer_4_7 = _RAND_71[7:0];
  _RAND_72 = {1{`RANDOM}};
  buffer_4_8 = _RAND_72[7:0];
  _RAND_73 = {1{`RANDOM}};
  buffer_4_9 = _RAND_73[7:0];
  _RAND_74 = {1{`RANDOM}};
  buffer_4_10 = _RAND_74[7:0];
  _RAND_75 = {1{`RANDOM}};
  buffer_4_11 = _RAND_75[7:0];
  _RAND_76 = {1{`RANDOM}};
  buffer_4_12 = _RAND_76[7:0];
  _RAND_77 = {1{`RANDOM}};
  buffer_4_13 = _RAND_77[7:0];
  _RAND_78 = {1{`RANDOM}};
  buffer_4_14 = _RAND_78[7:0];
  _RAND_79 = {1{`RANDOM}};
  buffer_4_15 = _RAND_79[7:0];
  _RAND_80 = {1{`RANDOM}};
  buffer_5_0 = _RAND_80[7:0];
  _RAND_81 = {1{`RANDOM}};
  buffer_5_1 = _RAND_81[7:0];
  _RAND_82 = {1{`RANDOM}};
  buffer_5_2 = _RAND_82[7:0];
  _RAND_83 = {1{`RANDOM}};
  buffer_5_3 = _RAND_83[7:0];
  _RAND_84 = {1{`RANDOM}};
  buffer_5_4 = _RAND_84[7:0];
  _RAND_85 = {1{`RANDOM}};
  buffer_5_5 = _RAND_85[7:0];
  _RAND_86 = {1{`RANDOM}};
  buffer_5_6 = _RAND_86[7:0];
  _RAND_87 = {1{`RANDOM}};
  buffer_5_7 = _RAND_87[7:0];
  _RAND_88 = {1{`RANDOM}};
  buffer_5_8 = _RAND_88[7:0];
  _RAND_89 = {1{`RANDOM}};
  buffer_5_9 = _RAND_89[7:0];
  _RAND_90 = {1{`RANDOM}};
  buffer_5_10 = _RAND_90[7:0];
  _RAND_91 = {1{`RANDOM}};
  buffer_5_11 = _RAND_91[7:0];
  _RAND_92 = {1{`RANDOM}};
  buffer_5_12 = _RAND_92[7:0];
  _RAND_93 = {1{`RANDOM}};
  buffer_5_13 = _RAND_93[7:0];
  _RAND_94 = {1{`RANDOM}};
  buffer_5_14 = _RAND_94[7:0];
  _RAND_95 = {1{`RANDOM}};
  buffer_5_15 = _RAND_95[7:0];
  _RAND_96 = {1{`RANDOM}};
  buffer_6_0 = _RAND_96[7:0];
  _RAND_97 = {1{`RANDOM}};
  buffer_6_1 = _RAND_97[7:0];
  _RAND_98 = {1{`RANDOM}};
  buffer_6_2 = _RAND_98[7:0];
  _RAND_99 = {1{`RANDOM}};
  buffer_6_3 = _RAND_99[7:0];
  _RAND_100 = {1{`RANDOM}};
  buffer_6_4 = _RAND_100[7:0];
  _RAND_101 = {1{`RANDOM}};
  buffer_6_5 = _RAND_101[7:0];
  _RAND_102 = {1{`RANDOM}};
  buffer_6_6 = _RAND_102[7:0];
  _RAND_103 = {1{`RANDOM}};
  buffer_6_7 = _RAND_103[7:0];
  _RAND_104 = {1{`RANDOM}};
  buffer_6_8 = _RAND_104[7:0];
  _RAND_105 = {1{`RANDOM}};
  buffer_6_9 = _RAND_105[7:0];
  _RAND_106 = {1{`RANDOM}};
  buffer_6_10 = _RAND_106[7:0];
  _RAND_107 = {1{`RANDOM}};
  buffer_6_11 = _RAND_107[7:0];
  _RAND_108 = {1{`RANDOM}};
  buffer_6_12 = _RAND_108[7:0];
  _RAND_109 = {1{`RANDOM}};
  buffer_6_13 = _RAND_109[7:0];
  _RAND_110 = {1{`RANDOM}};
  buffer_6_14 = _RAND_110[7:0];
  _RAND_111 = {1{`RANDOM}};
  buffer_6_15 = _RAND_111[7:0];
  _RAND_112 = {1{`RANDOM}};
  buffer_7_0 = _RAND_112[7:0];
  _RAND_113 = {1{`RANDOM}};
  buffer_7_1 = _RAND_113[7:0];
  _RAND_114 = {1{`RANDOM}};
  buffer_7_2 = _RAND_114[7:0];
  _RAND_115 = {1{`RANDOM}};
  buffer_7_3 = _RAND_115[7:0];
  _RAND_116 = {1{`RANDOM}};
  buffer_7_4 = _RAND_116[7:0];
  _RAND_117 = {1{`RANDOM}};
  buffer_7_5 = _RAND_117[7:0];
  _RAND_118 = {1{`RANDOM}};
  buffer_7_6 = _RAND_118[7:0];
  _RAND_119 = {1{`RANDOM}};
  buffer_7_7 = _RAND_119[7:0];
  _RAND_120 = {1{`RANDOM}};
  buffer_7_8 = _RAND_120[7:0];
  _RAND_121 = {1{`RANDOM}};
  buffer_7_9 = _RAND_121[7:0];
  _RAND_122 = {1{`RANDOM}};
  buffer_7_10 = _RAND_122[7:0];
  _RAND_123 = {1{`RANDOM}};
  buffer_7_11 = _RAND_123[7:0];
  _RAND_124 = {1{`RANDOM}};
  buffer_7_12 = _RAND_124[7:0];
  _RAND_125 = {1{`RANDOM}};
  buffer_7_13 = _RAND_125[7:0];
  _RAND_126 = {1{`RANDOM}};
  buffer_7_14 = _RAND_126[7:0];
  _RAND_127 = {1{`RANDOM}};
  buffer_7_15 = _RAND_127[7:0];
  _RAND_128 = {1{`RANDOM}};
  read_ptr = _RAND_128[3:0];
  _RAND_129 = {1{`RANDOM}};
  write_ptr = _RAND_129[3:0];
  _RAND_130 = {1{`RANDOM}};
  flow_ptr = _RAND_130[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Weight_Buffer(
  input        clock,
  input        reset,
  input        io_wen,
  input        io_ren,
  input  [7:0] io_in_weight_x_0,
  input  [7:0] io_in_weight_x_1,
  input  [7:0] io_in_weight_x_2,
  input  [7:0] io_in_weight_x_3,
  input  [7:0] io_in_weight_x_4,
  input  [7:0] io_in_weight_x_5,
  input  [7:0] io_in_weight_x_6,
  input  [7:0] io_in_weight_x_7,
  input  [7:0] io_in_weight_x_8,
  input  [7:0] io_in_weight_x_9,
  input  [7:0] io_in_weight_x_10,
  input  [7:0] io_in_weight_x_11,
  input  [7:0] io_in_weight_x_12,
  input  [7:0] io_in_weight_x_13,
  input  [7:0] io_in_weight_x_14,
  input  [7:0] io_in_weight_x_15,
  output [7:0] io_out_weight_0,
  output [7:0] io_out_weight_1,
  output [7:0] io_out_weight_2,
  output [7:0] io_out_weight_3,
  output       io_out_shift,
  output       io_isfull,
  output       io_isempty,
  output       io_isdone
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] buffer_0_0; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_1; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_2; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_3; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_4; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_5; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_6; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_7; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_8; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_9; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_10; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_11; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_12; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_13; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_14; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_0_15; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_0; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_1; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_2; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_3; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_4; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_5; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_6; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_7; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_8; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_9; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_10; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_11; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_12; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_13; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_14; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_1_15; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_0; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_1; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_2; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_3; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_4; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_5; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_6; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_7; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_8; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_9; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_10; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_11; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_12; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_13; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_14; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_2_15; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_0; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_1; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_2; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_3; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_4; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_5; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_6; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_7; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_8; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_9; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_10; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_11; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_12; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_13; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_14; // @[Weight_Buffer.scala 25:23]
  reg [7:0] buffer_3_15; // @[Weight_Buffer.scala 25:23]
  reg [2:0] read_ptr; // @[Weight_Buffer.scala 28:25]
  reg [2:0] write_ptr; // @[Weight_Buffer.scala 29:26]
  wire  _full_T_2 = read_ptr[1:0] == write_ptr[1:0]; // @[Weight_Buffer.scala 34:42]
  wire  full = read_ptr[1:0] == write_ptr[1:0] & read_ptr[2] != write_ptr[2]; // @[Weight_Buffer.scala 34:78]
  wire  empty = _full_T_2 & read_ptr[2] == write_ptr[2]; // @[Weight_Buffer.scala 35:79]
  wire  _T_1 = io_wen & ~full; // @[Weight_Buffer.scala 40:15]
  wire [2:0] _write_ptr_T_1 = write_ptr + 3'h1; // @[Weight_Buffer.scala 41:28]
  reg [2:0] shift_ptr; // @[Weight_Buffer.scala 51:26]
  wire [2:0] _shift_ptr_T_1 = shift_ptr - 3'h1; // @[Weight_Buffer.scala 54:28]
  wire [5:0] _io_out_weight_0_T_1 = shift_ptr * 3'h4; // @[Weight_Buffer.scala 64:75]
  wire [6:0] _io_out_weight_0_T_2 = {{1'd0}, _io_out_weight_0_T_1}; // @[Weight_Buffer.scala 64:88]
  wire [7:0] _GEN_132 = 2'h0 == read_ptr[1:0] & 4'h1 == _io_out_weight_0_T_2[3:0] ? buffer_0_1 : buffer_0_0; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_133 = 2'h0 == read_ptr[1:0] & 4'h2 == _io_out_weight_0_T_2[3:0] ? buffer_0_2 : _GEN_132; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_134 = 2'h0 == read_ptr[1:0] & 4'h3 == _io_out_weight_0_T_2[3:0] ? buffer_0_3 : _GEN_133; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_135 = 2'h0 == read_ptr[1:0] & 4'h4 == _io_out_weight_0_T_2[3:0] ? buffer_0_4 : _GEN_134; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_136 = 2'h0 == read_ptr[1:0] & 4'h5 == _io_out_weight_0_T_2[3:0] ? buffer_0_5 : _GEN_135; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_137 = 2'h0 == read_ptr[1:0] & 4'h6 == _io_out_weight_0_T_2[3:0] ? buffer_0_6 : _GEN_136; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_138 = 2'h0 == read_ptr[1:0] & 4'h7 == _io_out_weight_0_T_2[3:0] ? buffer_0_7 : _GEN_137; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_139 = 2'h0 == read_ptr[1:0] & 4'h8 == _io_out_weight_0_T_2[3:0] ? buffer_0_8 : _GEN_138; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_140 = 2'h0 == read_ptr[1:0] & 4'h9 == _io_out_weight_0_T_2[3:0] ? buffer_0_9 : _GEN_139; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_141 = 2'h0 == read_ptr[1:0] & 4'ha == _io_out_weight_0_T_2[3:0] ? buffer_0_10 : _GEN_140; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_142 = 2'h0 == read_ptr[1:0] & 4'hb == _io_out_weight_0_T_2[3:0] ? buffer_0_11 : _GEN_141; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_143 = 2'h0 == read_ptr[1:0] & 4'hc == _io_out_weight_0_T_2[3:0] ? buffer_0_12 : _GEN_142; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_144 = 2'h0 == read_ptr[1:0] & 4'hd == _io_out_weight_0_T_2[3:0] ? buffer_0_13 : _GEN_143; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_145 = 2'h0 == read_ptr[1:0] & 4'he == _io_out_weight_0_T_2[3:0] ? buffer_0_14 : _GEN_144; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_146 = 2'h0 == read_ptr[1:0] & 4'hf == _io_out_weight_0_T_2[3:0] ? buffer_0_15 : _GEN_145; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_147 = 2'h1 == read_ptr[1:0] & 4'h0 == _io_out_weight_0_T_2[3:0] ? buffer_1_0 : _GEN_146; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_148 = 2'h1 == read_ptr[1:0] & 4'h1 == _io_out_weight_0_T_2[3:0] ? buffer_1_1 : _GEN_147; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_149 = 2'h1 == read_ptr[1:0] & 4'h2 == _io_out_weight_0_T_2[3:0] ? buffer_1_2 : _GEN_148; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_150 = 2'h1 == read_ptr[1:0] & 4'h3 == _io_out_weight_0_T_2[3:0] ? buffer_1_3 : _GEN_149; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_151 = 2'h1 == read_ptr[1:0] & 4'h4 == _io_out_weight_0_T_2[3:0] ? buffer_1_4 : _GEN_150; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_152 = 2'h1 == read_ptr[1:0] & 4'h5 == _io_out_weight_0_T_2[3:0] ? buffer_1_5 : _GEN_151; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_153 = 2'h1 == read_ptr[1:0] & 4'h6 == _io_out_weight_0_T_2[3:0] ? buffer_1_6 : _GEN_152; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_154 = 2'h1 == read_ptr[1:0] & 4'h7 == _io_out_weight_0_T_2[3:0] ? buffer_1_7 : _GEN_153; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_155 = 2'h1 == read_ptr[1:0] & 4'h8 == _io_out_weight_0_T_2[3:0] ? buffer_1_8 : _GEN_154; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_156 = 2'h1 == read_ptr[1:0] & 4'h9 == _io_out_weight_0_T_2[3:0] ? buffer_1_9 : _GEN_155; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_157 = 2'h1 == read_ptr[1:0] & 4'ha == _io_out_weight_0_T_2[3:0] ? buffer_1_10 : _GEN_156; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_158 = 2'h1 == read_ptr[1:0] & 4'hb == _io_out_weight_0_T_2[3:0] ? buffer_1_11 : _GEN_157; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_159 = 2'h1 == read_ptr[1:0] & 4'hc == _io_out_weight_0_T_2[3:0] ? buffer_1_12 : _GEN_158; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_160 = 2'h1 == read_ptr[1:0] & 4'hd == _io_out_weight_0_T_2[3:0] ? buffer_1_13 : _GEN_159; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_161 = 2'h1 == read_ptr[1:0] & 4'he == _io_out_weight_0_T_2[3:0] ? buffer_1_14 : _GEN_160; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_162 = 2'h1 == read_ptr[1:0] & 4'hf == _io_out_weight_0_T_2[3:0] ? buffer_1_15 : _GEN_161; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_163 = 2'h2 == read_ptr[1:0] & 4'h0 == _io_out_weight_0_T_2[3:0] ? buffer_2_0 : _GEN_162; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_164 = 2'h2 == read_ptr[1:0] & 4'h1 == _io_out_weight_0_T_2[3:0] ? buffer_2_1 : _GEN_163; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_165 = 2'h2 == read_ptr[1:0] & 4'h2 == _io_out_weight_0_T_2[3:0] ? buffer_2_2 : _GEN_164; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_166 = 2'h2 == read_ptr[1:0] & 4'h3 == _io_out_weight_0_T_2[3:0] ? buffer_2_3 : _GEN_165; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_167 = 2'h2 == read_ptr[1:0] & 4'h4 == _io_out_weight_0_T_2[3:0] ? buffer_2_4 : _GEN_166; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_168 = 2'h2 == read_ptr[1:0] & 4'h5 == _io_out_weight_0_T_2[3:0] ? buffer_2_5 : _GEN_167; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_169 = 2'h2 == read_ptr[1:0] & 4'h6 == _io_out_weight_0_T_2[3:0] ? buffer_2_6 : _GEN_168; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_170 = 2'h2 == read_ptr[1:0] & 4'h7 == _io_out_weight_0_T_2[3:0] ? buffer_2_7 : _GEN_169; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_171 = 2'h2 == read_ptr[1:0] & 4'h8 == _io_out_weight_0_T_2[3:0] ? buffer_2_8 : _GEN_170; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_172 = 2'h2 == read_ptr[1:0] & 4'h9 == _io_out_weight_0_T_2[3:0] ? buffer_2_9 : _GEN_171; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_173 = 2'h2 == read_ptr[1:0] & 4'ha == _io_out_weight_0_T_2[3:0] ? buffer_2_10 : _GEN_172; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_174 = 2'h2 == read_ptr[1:0] & 4'hb == _io_out_weight_0_T_2[3:0] ? buffer_2_11 : _GEN_173; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_175 = 2'h2 == read_ptr[1:0] & 4'hc == _io_out_weight_0_T_2[3:0] ? buffer_2_12 : _GEN_174; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_176 = 2'h2 == read_ptr[1:0] & 4'hd == _io_out_weight_0_T_2[3:0] ? buffer_2_13 : _GEN_175; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_177 = 2'h2 == read_ptr[1:0] & 4'he == _io_out_weight_0_T_2[3:0] ? buffer_2_14 : _GEN_176; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_178 = 2'h2 == read_ptr[1:0] & 4'hf == _io_out_weight_0_T_2[3:0] ? buffer_2_15 : _GEN_177; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_179 = 2'h3 == read_ptr[1:0] & 4'h0 == _io_out_weight_0_T_2[3:0] ? buffer_3_0 : _GEN_178; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_180 = 2'h3 == read_ptr[1:0] & 4'h1 == _io_out_weight_0_T_2[3:0] ? buffer_3_1 : _GEN_179; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_181 = 2'h3 == read_ptr[1:0] & 4'h2 == _io_out_weight_0_T_2[3:0] ? buffer_3_2 : _GEN_180; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_182 = 2'h3 == read_ptr[1:0] & 4'h3 == _io_out_weight_0_T_2[3:0] ? buffer_3_3 : _GEN_181; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_183 = 2'h3 == read_ptr[1:0] & 4'h4 == _io_out_weight_0_T_2[3:0] ? buffer_3_4 : _GEN_182; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_184 = 2'h3 == read_ptr[1:0] & 4'h5 == _io_out_weight_0_T_2[3:0] ? buffer_3_5 : _GEN_183; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_185 = 2'h3 == read_ptr[1:0] & 4'h6 == _io_out_weight_0_T_2[3:0] ? buffer_3_6 : _GEN_184; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_186 = 2'h3 == read_ptr[1:0] & 4'h7 == _io_out_weight_0_T_2[3:0] ? buffer_3_7 : _GEN_185; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_187 = 2'h3 == read_ptr[1:0] & 4'h8 == _io_out_weight_0_T_2[3:0] ? buffer_3_8 : _GEN_186; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_188 = 2'h3 == read_ptr[1:0] & 4'h9 == _io_out_weight_0_T_2[3:0] ? buffer_3_9 : _GEN_187; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_189 = 2'h3 == read_ptr[1:0] & 4'ha == _io_out_weight_0_T_2[3:0] ? buffer_3_10 : _GEN_188; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_190 = 2'h3 == read_ptr[1:0] & 4'hb == _io_out_weight_0_T_2[3:0] ? buffer_3_11 : _GEN_189; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_191 = 2'h3 == read_ptr[1:0] & 4'hc == _io_out_weight_0_T_2[3:0] ? buffer_3_12 : _GEN_190; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_192 = 2'h3 == read_ptr[1:0] & 4'hd == _io_out_weight_0_T_2[3:0] ? buffer_3_13 : _GEN_191; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_193 = 2'h3 == read_ptr[1:0] & 4'he == _io_out_weight_0_T_2[3:0] ? buffer_3_14 : _GEN_192; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_194 = 2'h3 == read_ptr[1:0] & 4'hf == _io_out_weight_0_T_2[3:0] ? buffer_3_15 : _GEN_193; // @[Weight_Buffer.scala 64:{24,24}]
  wire [5:0] _io_out_weight_1_T_3 = _io_out_weight_0_T_1 + 6'h1; // @[Weight_Buffer.scala 64:88]
  wire [7:0] _GEN_196 = 2'h0 == read_ptr[1:0] & 4'h1 == _io_out_weight_1_T_3[3:0] ? buffer_0_1 : buffer_0_0; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_197 = 2'h0 == read_ptr[1:0] & 4'h2 == _io_out_weight_1_T_3[3:0] ? buffer_0_2 : _GEN_196; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_198 = 2'h0 == read_ptr[1:0] & 4'h3 == _io_out_weight_1_T_3[3:0] ? buffer_0_3 : _GEN_197; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_199 = 2'h0 == read_ptr[1:0] & 4'h4 == _io_out_weight_1_T_3[3:0] ? buffer_0_4 : _GEN_198; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_200 = 2'h0 == read_ptr[1:0] & 4'h5 == _io_out_weight_1_T_3[3:0] ? buffer_0_5 : _GEN_199; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_201 = 2'h0 == read_ptr[1:0] & 4'h6 == _io_out_weight_1_T_3[3:0] ? buffer_0_6 : _GEN_200; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_202 = 2'h0 == read_ptr[1:0] & 4'h7 == _io_out_weight_1_T_3[3:0] ? buffer_0_7 : _GEN_201; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_203 = 2'h0 == read_ptr[1:0] & 4'h8 == _io_out_weight_1_T_3[3:0] ? buffer_0_8 : _GEN_202; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_204 = 2'h0 == read_ptr[1:0] & 4'h9 == _io_out_weight_1_T_3[3:0] ? buffer_0_9 : _GEN_203; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_205 = 2'h0 == read_ptr[1:0] & 4'ha == _io_out_weight_1_T_3[3:0] ? buffer_0_10 : _GEN_204; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_206 = 2'h0 == read_ptr[1:0] & 4'hb == _io_out_weight_1_T_3[3:0] ? buffer_0_11 : _GEN_205; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_207 = 2'h0 == read_ptr[1:0] & 4'hc == _io_out_weight_1_T_3[3:0] ? buffer_0_12 : _GEN_206; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_208 = 2'h0 == read_ptr[1:0] & 4'hd == _io_out_weight_1_T_3[3:0] ? buffer_0_13 : _GEN_207; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_209 = 2'h0 == read_ptr[1:0] & 4'he == _io_out_weight_1_T_3[3:0] ? buffer_0_14 : _GEN_208; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_210 = 2'h0 == read_ptr[1:0] & 4'hf == _io_out_weight_1_T_3[3:0] ? buffer_0_15 : _GEN_209; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_211 = 2'h1 == read_ptr[1:0] & 4'h0 == _io_out_weight_1_T_3[3:0] ? buffer_1_0 : _GEN_210; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_212 = 2'h1 == read_ptr[1:0] & 4'h1 == _io_out_weight_1_T_3[3:0] ? buffer_1_1 : _GEN_211; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_213 = 2'h1 == read_ptr[1:0] & 4'h2 == _io_out_weight_1_T_3[3:0] ? buffer_1_2 : _GEN_212; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_214 = 2'h1 == read_ptr[1:0] & 4'h3 == _io_out_weight_1_T_3[3:0] ? buffer_1_3 : _GEN_213; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_215 = 2'h1 == read_ptr[1:0] & 4'h4 == _io_out_weight_1_T_3[3:0] ? buffer_1_4 : _GEN_214; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_216 = 2'h1 == read_ptr[1:0] & 4'h5 == _io_out_weight_1_T_3[3:0] ? buffer_1_5 : _GEN_215; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_217 = 2'h1 == read_ptr[1:0] & 4'h6 == _io_out_weight_1_T_3[3:0] ? buffer_1_6 : _GEN_216; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_218 = 2'h1 == read_ptr[1:0] & 4'h7 == _io_out_weight_1_T_3[3:0] ? buffer_1_7 : _GEN_217; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_219 = 2'h1 == read_ptr[1:0] & 4'h8 == _io_out_weight_1_T_3[3:0] ? buffer_1_8 : _GEN_218; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_220 = 2'h1 == read_ptr[1:0] & 4'h9 == _io_out_weight_1_T_3[3:0] ? buffer_1_9 : _GEN_219; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_221 = 2'h1 == read_ptr[1:0] & 4'ha == _io_out_weight_1_T_3[3:0] ? buffer_1_10 : _GEN_220; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_222 = 2'h1 == read_ptr[1:0] & 4'hb == _io_out_weight_1_T_3[3:0] ? buffer_1_11 : _GEN_221; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_223 = 2'h1 == read_ptr[1:0] & 4'hc == _io_out_weight_1_T_3[3:0] ? buffer_1_12 : _GEN_222; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_224 = 2'h1 == read_ptr[1:0] & 4'hd == _io_out_weight_1_T_3[3:0] ? buffer_1_13 : _GEN_223; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_225 = 2'h1 == read_ptr[1:0] & 4'he == _io_out_weight_1_T_3[3:0] ? buffer_1_14 : _GEN_224; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_226 = 2'h1 == read_ptr[1:0] & 4'hf == _io_out_weight_1_T_3[3:0] ? buffer_1_15 : _GEN_225; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_227 = 2'h2 == read_ptr[1:0] & 4'h0 == _io_out_weight_1_T_3[3:0] ? buffer_2_0 : _GEN_226; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_228 = 2'h2 == read_ptr[1:0] & 4'h1 == _io_out_weight_1_T_3[3:0] ? buffer_2_1 : _GEN_227; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_229 = 2'h2 == read_ptr[1:0] & 4'h2 == _io_out_weight_1_T_3[3:0] ? buffer_2_2 : _GEN_228; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_230 = 2'h2 == read_ptr[1:0] & 4'h3 == _io_out_weight_1_T_3[3:0] ? buffer_2_3 : _GEN_229; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_231 = 2'h2 == read_ptr[1:0] & 4'h4 == _io_out_weight_1_T_3[3:0] ? buffer_2_4 : _GEN_230; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_232 = 2'h2 == read_ptr[1:0] & 4'h5 == _io_out_weight_1_T_3[3:0] ? buffer_2_5 : _GEN_231; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_233 = 2'h2 == read_ptr[1:0] & 4'h6 == _io_out_weight_1_T_3[3:0] ? buffer_2_6 : _GEN_232; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_234 = 2'h2 == read_ptr[1:0] & 4'h7 == _io_out_weight_1_T_3[3:0] ? buffer_2_7 : _GEN_233; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_235 = 2'h2 == read_ptr[1:0] & 4'h8 == _io_out_weight_1_T_3[3:0] ? buffer_2_8 : _GEN_234; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_236 = 2'h2 == read_ptr[1:0] & 4'h9 == _io_out_weight_1_T_3[3:0] ? buffer_2_9 : _GEN_235; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_237 = 2'h2 == read_ptr[1:0] & 4'ha == _io_out_weight_1_T_3[3:0] ? buffer_2_10 : _GEN_236; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_238 = 2'h2 == read_ptr[1:0] & 4'hb == _io_out_weight_1_T_3[3:0] ? buffer_2_11 : _GEN_237; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_239 = 2'h2 == read_ptr[1:0] & 4'hc == _io_out_weight_1_T_3[3:0] ? buffer_2_12 : _GEN_238; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_240 = 2'h2 == read_ptr[1:0] & 4'hd == _io_out_weight_1_T_3[3:0] ? buffer_2_13 : _GEN_239; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_241 = 2'h2 == read_ptr[1:0] & 4'he == _io_out_weight_1_T_3[3:0] ? buffer_2_14 : _GEN_240; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_242 = 2'h2 == read_ptr[1:0] & 4'hf == _io_out_weight_1_T_3[3:0] ? buffer_2_15 : _GEN_241; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_243 = 2'h3 == read_ptr[1:0] & 4'h0 == _io_out_weight_1_T_3[3:0] ? buffer_3_0 : _GEN_242; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_244 = 2'h3 == read_ptr[1:0] & 4'h1 == _io_out_weight_1_T_3[3:0] ? buffer_3_1 : _GEN_243; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_245 = 2'h3 == read_ptr[1:0] & 4'h2 == _io_out_weight_1_T_3[3:0] ? buffer_3_2 : _GEN_244; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_246 = 2'h3 == read_ptr[1:0] & 4'h3 == _io_out_weight_1_T_3[3:0] ? buffer_3_3 : _GEN_245; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_247 = 2'h3 == read_ptr[1:0] & 4'h4 == _io_out_weight_1_T_3[3:0] ? buffer_3_4 : _GEN_246; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_248 = 2'h3 == read_ptr[1:0] & 4'h5 == _io_out_weight_1_T_3[3:0] ? buffer_3_5 : _GEN_247; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_249 = 2'h3 == read_ptr[1:0] & 4'h6 == _io_out_weight_1_T_3[3:0] ? buffer_3_6 : _GEN_248; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_250 = 2'h3 == read_ptr[1:0] & 4'h7 == _io_out_weight_1_T_3[3:0] ? buffer_3_7 : _GEN_249; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_251 = 2'h3 == read_ptr[1:0] & 4'h8 == _io_out_weight_1_T_3[3:0] ? buffer_3_8 : _GEN_250; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_252 = 2'h3 == read_ptr[1:0] & 4'h9 == _io_out_weight_1_T_3[3:0] ? buffer_3_9 : _GEN_251; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_253 = 2'h3 == read_ptr[1:0] & 4'ha == _io_out_weight_1_T_3[3:0] ? buffer_3_10 : _GEN_252; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_254 = 2'h3 == read_ptr[1:0] & 4'hb == _io_out_weight_1_T_3[3:0] ? buffer_3_11 : _GEN_253; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_255 = 2'h3 == read_ptr[1:0] & 4'hc == _io_out_weight_1_T_3[3:0] ? buffer_3_12 : _GEN_254; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_256 = 2'h3 == read_ptr[1:0] & 4'hd == _io_out_weight_1_T_3[3:0] ? buffer_3_13 : _GEN_255; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_257 = 2'h3 == read_ptr[1:0] & 4'he == _io_out_weight_1_T_3[3:0] ? buffer_3_14 : _GEN_256; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_258 = 2'h3 == read_ptr[1:0] & 4'hf == _io_out_weight_1_T_3[3:0] ? buffer_3_15 : _GEN_257; // @[Weight_Buffer.scala 64:{24,24}]
  wire [5:0] _io_out_weight_2_T_3 = _io_out_weight_0_T_1 + 6'h2; // @[Weight_Buffer.scala 64:88]
  wire [7:0] _GEN_260 = 2'h0 == read_ptr[1:0] & 4'h1 == _io_out_weight_2_T_3[3:0] ? buffer_0_1 : buffer_0_0; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_261 = 2'h0 == read_ptr[1:0] & 4'h2 == _io_out_weight_2_T_3[3:0] ? buffer_0_2 : _GEN_260; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_262 = 2'h0 == read_ptr[1:0] & 4'h3 == _io_out_weight_2_T_3[3:0] ? buffer_0_3 : _GEN_261; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_263 = 2'h0 == read_ptr[1:0] & 4'h4 == _io_out_weight_2_T_3[3:0] ? buffer_0_4 : _GEN_262; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_264 = 2'h0 == read_ptr[1:0] & 4'h5 == _io_out_weight_2_T_3[3:0] ? buffer_0_5 : _GEN_263; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_265 = 2'h0 == read_ptr[1:0] & 4'h6 == _io_out_weight_2_T_3[3:0] ? buffer_0_6 : _GEN_264; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_266 = 2'h0 == read_ptr[1:0] & 4'h7 == _io_out_weight_2_T_3[3:0] ? buffer_0_7 : _GEN_265; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_267 = 2'h0 == read_ptr[1:0] & 4'h8 == _io_out_weight_2_T_3[3:0] ? buffer_0_8 : _GEN_266; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_268 = 2'h0 == read_ptr[1:0] & 4'h9 == _io_out_weight_2_T_3[3:0] ? buffer_0_9 : _GEN_267; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_269 = 2'h0 == read_ptr[1:0] & 4'ha == _io_out_weight_2_T_3[3:0] ? buffer_0_10 : _GEN_268; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_270 = 2'h0 == read_ptr[1:0] & 4'hb == _io_out_weight_2_T_3[3:0] ? buffer_0_11 : _GEN_269; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_271 = 2'h0 == read_ptr[1:0] & 4'hc == _io_out_weight_2_T_3[3:0] ? buffer_0_12 : _GEN_270; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_272 = 2'h0 == read_ptr[1:0] & 4'hd == _io_out_weight_2_T_3[3:0] ? buffer_0_13 : _GEN_271; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_273 = 2'h0 == read_ptr[1:0] & 4'he == _io_out_weight_2_T_3[3:0] ? buffer_0_14 : _GEN_272; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_274 = 2'h0 == read_ptr[1:0] & 4'hf == _io_out_weight_2_T_3[3:0] ? buffer_0_15 : _GEN_273; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_275 = 2'h1 == read_ptr[1:0] & 4'h0 == _io_out_weight_2_T_3[3:0] ? buffer_1_0 : _GEN_274; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_276 = 2'h1 == read_ptr[1:0] & 4'h1 == _io_out_weight_2_T_3[3:0] ? buffer_1_1 : _GEN_275; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_277 = 2'h1 == read_ptr[1:0] & 4'h2 == _io_out_weight_2_T_3[3:0] ? buffer_1_2 : _GEN_276; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_278 = 2'h1 == read_ptr[1:0] & 4'h3 == _io_out_weight_2_T_3[3:0] ? buffer_1_3 : _GEN_277; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_279 = 2'h1 == read_ptr[1:0] & 4'h4 == _io_out_weight_2_T_3[3:0] ? buffer_1_4 : _GEN_278; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_280 = 2'h1 == read_ptr[1:0] & 4'h5 == _io_out_weight_2_T_3[3:0] ? buffer_1_5 : _GEN_279; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_281 = 2'h1 == read_ptr[1:0] & 4'h6 == _io_out_weight_2_T_3[3:0] ? buffer_1_6 : _GEN_280; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_282 = 2'h1 == read_ptr[1:0] & 4'h7 == _io_out_weight_2_T_3[3:0] ? buffer_1_7 : _GEN_281; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_283 = 2'h1 == read_ptr[1:0] & 4'h8 == _io_out_weight_2_T_3[3:0] ? buffer_1_8 : _GEN_282; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_284 = 2'h1 == read_ptr[1:0] & 4'h9 == _io_out_weight_2_T_3[3:0] ? buffer_1_9 : _GEN_283; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_285 = 2'h1 == read_ptr[1:0] & 4'ha == _io_out_weight_2_T_3[3:0] ? buffer_1_10 : _GEN_284; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_286 = 2'h1 == read_ptr[1:0] & 4'hb == _io_out_weight_2_T_3[3:0] ? buffer_1_11 : _GEN_285; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_287 = 2'h1 == read_ptr[1:0] & 4'hc == _io_out_weight_2_T_3[3:0] ? buffer_1_12 : _GEN_286; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_288 = 2'h1 == read_ptr[1:0] & 4'hd == _io_out_weight_2_T_3[3:0] ? buffer_1_13 : _GEN_287; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_289 = 2'h1 == read_ptr[1:0] & 4'he == _io_out_weight_2_T_3[3:0] ? buffer_1_14 : _GEN_288; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_290 = 2'h1 == read_ptr[1:0] & 4'hf == _io_out_weight_2_T_3[3:0] ? buffer_1_15 : _GEN_289; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_291 = 2'h2 == read_ptr[1:0] & 4'h0 == _io_out_weight_2_T_3[3:0] ? buffer_2_0 : _GEN_290; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_292 = 2'h2 == read_ptr[1:0] & 4'h1 == _io_out_weight_2_T_3[3:0] ? buffer_2_1 : _GEN_291; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_293 = 2'h2 == read_ptr[1:0] & 4'h2 == _io_out_weight_2_T_3[3:0] ? buffer_2_2 : _GEN_292; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_294 = 2'h2 == read_ptr[1:0] & 4'h3 == _io_out_weight_2_T_3[3:0] ? buffer_2_3 : _GEN_293; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_295 = 2'h2 == read_ptr[1:0] & 4'h4 == _io_out_weight_2_T_3[3:0] ? buffer_2_4 : _GEN_294; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_296 = 2'h2 == read_ptr[1:0] & 4'h5 == _io_out_weight_2_T_3[3:0] ? buffer_2_5 : _GEN_295; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_297 = 2'h2 == read_ptr[1:0] & 4'h6 == _io_out_weight_2_T_3[3:0] ? buffer_2_6 : _GEN_296; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_298 = 2'h2 == read_ptr[1:0] & 4'h7 == _io_out_weight_2_T_3[3:0] ? buffer_2_7 : _GEN_297; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_299 = 2'h2 == read_ptr[1:0] & 4'h8 == _io_out_weight_2_T_3[3:0] ? buffer_2_8 : _GEN_298; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_300 = 2'h2 == read_ptr[1:0] & 4'h9 == _io_out_weight_2_T_3[3:0] ? buffer_2_9 : _GEN_299; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_301 = 2'h2 == read_ptr[1:0] & 4'ha == _io_out_weight_2_T_3[3:0] ? buffer_2_10 : _GEN_300; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_302 = 2'h2 == read_ptr[1:0] & 4'hb == _io_out_weight_2_T_3[3:0] ? buffer_2_11 : _GEN_301; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_303 = 2'h2 == read_ptr[1:0] & 4'hc == _io_out_weight_2_T_3[3:0] ? buffer_2_12 : _GEN_302; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_304 = 2'h2 == read_ptr[1:0] & 4'hd == _io_out_weight_2_T_3[3:0] ? buffer_2_13 : _GEN_303; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_305 = 2'h2 == read_ptr[1:0] & 4'he == _io_out_weight_2_T_3[3:0] ? buffer_2_14 : _GEN_304; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_306 = 2'h2 == read_ptr[1:0] & 4'hf == _io_out_weight_2_T_3[3:0] ? buffer_2_15 : _GEN_305; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_307 = 2'h3 == read_ptr[1:0] & 4'h0 == _io_out_weight_2_T_3[3:0] ? buffer_3_0 : _GEN_306; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_308 = 2'h3 == read_ptr[1:0] & 4'h1 == _io_out_weight_2_T_3[3:0] ? buffer_3_1 : _GEN_307; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_309 = 2'h3 == read_ptr[1:0] & 4'h2 == _io_out_weight_2_T_3[3:0] ? buffer_3_2 : _GEN_308; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_310 = 2'h3 == read_ptr[1:0] & 4'h3 == _io_out_weight_2_T_3[3:0] ? buffer_3_3 : _GEN_309; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_311 = 2'h3 == read_ptr[1:0] & 4'h4 == _io_out_weight_2_T_3[3:0] ? buffer_3_4 : _GEN_310; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_312 = 2'h3 == read_ptr[1:0] & 4'h5 == _io_out_weight_2_T_3[3:0] ? buffer_3_5 : _GEN_311; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_313 = 2'h3 == read_ptr[1:0] & 4'h6 == _io_out_weight_2_T_3[3:0] ? buffer_3_6 : _GEN_312; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_314 = 2'h3 == read_ptr[1:0] & 4'h7 == _io_out_weight_2_T_3[3:0] ? buffer_3_7 : _GEN_313; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_315 = 2'h3 == read_ptr[1:0] & 4'h8 == _io_out_weight_2_T_3[3:0] ? buffer_3_8 : _GEN_314; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_316 = 2'h3 == read_ptr[1:0] & 4'h9 == _io_out_weight_2_T_3[3:0] ? buffer_3_9 : _GEN_315; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_317 = 2'h3 == read_ptr[1:0] & 4'ha == _io_out_weight_2_T_3[3:0] ? buffer_3_10 : _GEN_316; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_318 = 2'h3 == read_ptr[1:0] & 4'hb == _io_out_weight_2_T_3[3:0] ? buffer_3_11 : _GEN_317; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_319 = 2'h3 == read_ptr[1:0] & 4'hc == _io_out_weight_2_T_3[3:0] ? buffer_3_12 : _GEN_318; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_320 = 2'h3 == read_ptr[1:0] & 4'hd == _io_out_weight_2_T_3[3:0] ? buffer_3_13 : _GEN_319; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_321 = 2'h3 == read_ptr[1:0] & 4'he == _io_out_weight_2_T_3[3:0] ? buffer_3_14 : _GEN_320; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_322 = 2'h3 == read_ptr[1:0] & 4'hf == _io_out_weight_2_T_3[3:0] ? buffer_3_15 : _GEN_321; // @[Weight_Buffer.scala 64:{24,24}]
  wire [5:0] _io_out_weight_3_T_3 = _io_out_weight_0_T_1 + 6'h3; // @[Weight_Buffer.scala 64:88]
  wire [7:0] _GEN_324 = 2'h0 == read_ptr[1:0] & 4'h1 == _io_out_weight_3_T_3[3:0] ? buffer_0_1 : buffer_0_0; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_325 = 2'h0 == read_ptr[1:0] & 4'h2 == _io_out_weight_3_T_3[3:0] ? buffer_0_2 : _GEN_324; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_326 = 2'h0 == read_ptr[1:0] & 4'h3 == _io_out_weight_3_T_3[3:0] ? buffer_0_3 : _GEN_325; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_327 = 2'h0 == read_ptr[1:0] & 4'h4 == _io_out_weight_3_T_3[3:0] ? buffer_0_4 : _GEN_326; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_328 = 2'h0 == read_ptr[1:0] & 4'h5 == _io_out_weight_3_T_3[3:0] ? buffer_0_5 : _GEN_327; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_329 = 2'h0 == read_ptr[1:0] & 4'h6 == _io_out_weight_3_T_3[3:0] ? buffer_0_6 : _GEN_328; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_330 = 2'h0 == read_ptr[1:0] & 4'h7 == _io_out_weight_3_T_3[3:0] ? buffer_0_7 : _GEN_329; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_331 = 2'h0 == read_ptr[1:0] & 4'h8 == _io_out_weight_3_T_3[3:0] ? buffer_0_8 : _GEN_330; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_332 = 2'h0 == read_ptr[1:0] & 4'h9 == _io_out_weight_3_T_3[3:0] ? buffer_0_9 : _GEN_331; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_333 = 2'h0 == read_ptr[1:0] & 4'ha == _io_out_weight_3_T_3[3:0] ? buffer_0_10 : _GEN_332; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_334 = 2'h0 == read_ptr[1:0] & 4'hb == _io_out_weight_3_T_3[3:0] ? buffer_0_11 : _GEN_333; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_335 = 2'h0 == read_ptr[1:0] & 4'hc == _io_out_weight_3_T_3[3:0] ? buffer_0_12 : _GEN_334; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_336 = 2'h0 == read_ptr[1:0] & 4'hd == _io_out_weight_3_T_3[3:0] ? buffer_0_13 : _GEN_335; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_337 = 2'h0 == read_ptr[1:0] & 4'he == _io_out_weight_3_T_3[3:0] ? buffer_0_14 : _GEN_336; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_338 = 2'h0 == read_ptr[1:0] & 4'hf == _io_out_weight_3_T_3[3:0] ? buffer_0_15 : _GEN_337; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_339 = 2'h1 == read_ptr[1:0] & 4'h0 == _io_out_weight_3_T_3[3:0] ? buffer_1_0 : _GEN_338; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_340 = 2'h1 == read_ptr[1:0] & 4'h1 == _io_out_weight_3_T_3[3:0] ? buffer_1_1 : _GEN_339; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_341 = 2'h1 == read_ptr[1:0] & 4'h2 == _io_out_weight_3_T_3[3:0] ? buffer_1_2 : _GEN_340; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_342 = 2'h1 == read_ptr[1:0] & 4'h3 == _io_out_weight_3_T_3[3:0] ? buffer_1_3 : _GEN_341; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_343 = 2'h1 == read_ptr[1:0] & 4'h4 == _io_out_weight_3_T_3[3:0] ? buffer_1_4 : _GEN_342; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_344 = 2'h1 == read_ptr[1:0] & 4'h5 == _io_out_weight_3_T_3[3:0] ? buffer_1_5 : _GEN_343; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_345 = 2'h1 == read_ptr[1:0] & 4'h6 == _io_out_weight_3_T_3[3:0] ? buffer_1_6 : _GEN_344; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_346 = 2'h1 == read_ptr[1:0] & 4'h7 == _io_out_weight_3_T_3[3:0] ? buffer_1_7 : _GEN_345; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_347 = 2'h1 == read_ptr[1:0] & 4'h8 == _io_out_weight_3_T_3[3:0] ? buffer_1_8 : _GEN_346; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_348 = 2'h1 == read_ptr[1:0] & 4'h9 == _io_out_weight_3_T_3[3:0] ? buffer_1_9 : _GEN_347; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_349 = 2'h1 == read_ptr[1:0] & 4'ha == _io_out_weight_3_T_3[3:0] ? buffer_1_10 : _GEN_348; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_350 = 2'h1 == read_ptr[1:0] & 4'hb == _io_out_weight_3_T_3[3:0] ? buffer_1_11 : _GEN_349; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_351 = 2'h1 == read_ptr[1:0] & 4'hc == _io_out_weight_3_T_3[3:0] ? buffer_1_12 : _GEN_350; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_352 = 2'h1 == read_ptr[1:0] & 4'hd == _io_out_weight_3_T_3[3:0] ? buffer_1_13 : _GEN_351; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_353 = 2'h1 == read_ptr[1:0] & 4'he == _io_out_weight_3_T_3[3:0] ? buffer_1_14 : _GEN_352; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_354 = 2'h1 == read_ptr[1:0] & 4'hf == _io_out_weight_3_T_3[3:0] ? buffer_1_15 : _GEN_353; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_355 = 2'h2 == read_ptr[1:0] & 4'h0 == _io_out_weight_3_T_3[3:0] ? buffer_2_0 : _GEN_354; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_356 = 2'h2 == read_ptr[1:0] & 4'h1 == _io_out_weight_3_T_3[3:0] ? buffer_2_1 : _GEN_355; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_357 = 2'h2 == read_ptr[1:0] & 4'h2 == _io_out_weight_3_T_3[3:0] ? buffer_2_2 : _GEN_356; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_358 = 2'h2 == read_ptr[1:0] & 4'h3 == _io_out_weight_3_T_3[3:0] ? buffer_2_3 : _GEN_357; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_359 = 2'h2 == read_ptr[1:0] & 4'h4 == _io_out_weight_3_T_3[3:0] ? buffer_2_4 : _GEN_358; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_360 = 2'h2 == read_ptr[1:0] & 4'h5 == _io_out_weight_3_T_3[3:0] ? buffer_2_5 : _GEN_359; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_361 = 2'h2 == read_ptr[1:0] & 4'h6 == _io_out_weight_3_T_3[3:0] ? buffer_2_6 : _GEN_360; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_362 = 2'h2 == read_ptr[1:0] & 4'h7 == _io_out_weight_3_T_3[3:0] ? buffer_2_7 : _GEN_361; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_363 = 2'h2 == read_ptr[1:0] & 4'h8 == _io_out_weight_3_T_3[3:0] ? buffer_2_8 : _GEN_362; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_364 = 2'h2 == read_ptr[1:0] & 4'h9 == _io_out_weight_3_T_3[3:0] ? buffer_2_9 : _GEN_363; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_365 = 2'h2 == read_ptr[1:0] & 4'ha == _io_out_weight_3_T_3[3:0] ? buffer_2_10 : _GEN_364; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_366 = 2'h2 == read_ptr[1:0] & 4'hb == _io_out_weight_3_T_3[3:0] ? buffer_2_11 : _GEN_365; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_367 = 2'h2 == read_ptr[1:0] & 4'hc == _io_out_weight_3_T_3[3:0] ? buffer_2_12 : _GEN_366; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_368 = 2'h2 == read_ptr[1:0] & 4'hd == _io_out_weight_3_T_3[3:0] ? buffer_2_13 : _GEN_367; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_369 = 2'h2 == read_ptr[1:0] & 4'he == _io_out_weight_3_T_3[3:0] ? buffer_2_14 : _GEN_368; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_370 = 2'h2 == read_ptr[1:0] & 4'hf == _io_out_weight_3_T_3[3:0] ? buffer_2_15 : _GEN_369; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_371 = 2'h3 == read_ptr[1:0] & 4'h0 == _io_out_weight_3_T_3[3:0] ? buffer_3_0 : _GEN_370; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_372 = 2'h3 == read_ptr[1:0] & 4'h1 == _io_out_weight_3_T_3[3:0] ? buffer_3_1 : _GEN_371; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_373 = 2'h3 == read_ptr[1:0] & 4'h2 == _io_out_weight_3_T_3[3:0] ? buffer_3_2 : _GEN_372; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_374 = 2'h3 == read_ptr[1:0] & 4'h3 == _io_out_weight_3_T_3[3:0] ? buffer_3_3 : _GEN_373; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_375 = 2'h3 == read_ptr[1:0] & 4'h4 == _io_out_weight_3_T_3[3:0] ? buffer_3_4 : _GEN_374; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_376 = 2'h3 == read_ptr[1:0] & 4'h5 == _io_out_weight_3_T_3[3:0] ? buffer_3_5 : _GEN_375; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_377 = 2'h3 == read_ptr[1:0] & 4'h6 == _io_out_weight_3_T_3[3:0] ? buffer_3_6 : _GEN_376; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_378 = 2'h3 == read_ptr[1:0] & 4'h7 == _io_out_weight_3_T_3[3:0] ? buffer_3_7 : _GEN_377; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_379 = 2'h3 == read_ptr[1:0] & 4'h8 == _io_out_weight_3_T_3[3:0] ? buffer_3_8 : _GEN_378; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_380 = 2'h3 == read_ptr[1:0] & 4'h9 == _io_out_weight_3_T_3[3:0] ? buffer_3_9 : _GEN_379; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_381 = 2'h3 == read_ptr[1:0] & 4'ha == _io_out_weight_3_T_3[3:0] ? buffer_3_10 : _GEN_380; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_382 = 2'h3 == read_ptr[1:0] & 4'hb == _io_out_weight_3_T_3[3:0] ? buffer_3_11 : _GEN_381; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_383 = 2'h3 == read_ptr[1:0] & 4'hc == _io_out_weight_3_T_3[3:0] ? buffer_3_12 : _GEN_382; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_384 = 2'h3 == read_ptr[1:0] & 4'hd == _io_out_weight_3_T_3[3:0] ? buffer_3_13 : _GEN_383; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_385 = 2'h3 == read_ptr[1:0] & 4'he == _io_out_weight_3_T_3[3:0] ? buffer_3_14 : _GEN_384; // @[Weight_Buffer.scala 64:{24,24}]
  wire [7:0] _GEN_386 = 2'h3 == read_ptr[1:0] & 4'hf == _io_out_weight_3_T_3[3:0] ? buffer_3_15 : _GEN_385; // @[Weight_Buffer.scala 64:{24,24}]
  wire [2:0] _read_ptr_T_1 = read_ptr + 3'h1; // @[Weight_Buffer.scala 74:26]
  assign io_out_weight_0 = shift_ptr != 3'h4 ? _GEN_194 : 8'h0; // @[Weight_Buffer.scala 61:34 64:24 69:24]
  assign io_out_weight_1 = shift_ptr != 3'h4 ? _GEN_258 : 8'h0; // @[Weight_Buffer.scala 61:34 64:24 69:24]
  assign io_out_weight_2 = shift_ptr != 3'h4 ? _GEN_322 : 8'h0; // @[Weight_Buffer.scala 61:34 64:24 69:24]
  assign io_out_weight_3 = shift_ptr != 3'h4 ? _GEN_386 : 8'h0; // @[Weight_Buffer.scala 61:34 64:24 69:24]
  assign io_out_shift = shift_ptr != 3'h4; // @[Weight_Buffer.scala 61:18]
  assign io_isfull = read_ptr[1:0] == write_ptr[1:0] & read_ptr[2] != write_ptr[2]; // @[Weight_Buffer.scala 34:78]
  assign io_isempty = _full_T_2 & read_ptr[2] == write_ptr[2]; // @[Weight_Buffer.scala 35:79]
  assign io_isdone = shift_ptr == 3'h0; // @[Weight_Buffer.scala 79:18]
  always @(posedge clock) begin
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_0 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_0 <= io_in_weight_x_0; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_1 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_1 <= io_in_weight_x_1; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_2 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_2 <= io_in_weight_x_2; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_3 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_3 <= io_in_weight_x_3; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_4 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_4 <= io_in_weight_x_4; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_5 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_5 <= io_in_weight_x_5; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_6 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_6 <= io_in_weight_x_6; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_7 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_7 <= io_in_weight_x_7; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_8 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_8 <= io_in_weight_x_8; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_9 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_9 <= io_in_weight_x_9; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_10 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_10 <= io_in_weight_x_10; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_11 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_11 <= io_in_weight_x_11; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_12 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_12 <= io_in_weight_x_12; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_13 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_13 <= io_in_weight_x_13; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_14 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_14 <= io_in_weight_x_14; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_0_15 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h0 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_0_15 <= io_in_weight_x_15; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_0 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_0 <= io_in_weight_x_0; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_1 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_1 <= io_in_weight_x_1; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_2 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_2 <= io_in_weight_x_2; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_3 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_3 <= io_in_weight_x_3; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_4 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_4 <= io_in_weight_x_4; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_5 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_5 <= io_in_weight_x_5; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_6 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_6 <= io_in_weight_x_6; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_7 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_7 <= io_in_weight_x_7; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_8 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_8 <= io_in_weight_x_8; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_9 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_9 <= io_in_weight_x_9; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_10 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_10 <= io_in_weight_x_10; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_11 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_11 <= io_in_weight_x_11; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_12 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_12 <= io_in_weight_x_12; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_13 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_13 <= io_in_weight_x_13; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_14 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_14 <= io_in_weight_x_14; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_1_15 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h1 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_1_15 <= io_in_weight_x_15; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_0 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_0 <= io_in_weight_x_0; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_1 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_1 <= io_in_weight_x_1; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_2 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_2 <= io_in_weight_x_2; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_3 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_3 <= io_in_weight_x_3; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_4 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_4 <= io_in_weight_x_4; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_5 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_5 <= io_in_weight_x_5; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_6 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_6 <= io_in_weight_x_6; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_7 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_7 <= io_in_weight_x_7; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_8 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_8 <= io_in_weight_x_8; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_9 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_9 <= io_in_weight_x_9; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_10 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_10 <= io_in_weight_x_10; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_11 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_11 <= io_in_weight_x_11; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_12 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_12 <= io_in_weight_x_12; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_13 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_13 <= io_in_weight_x_13; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_14 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_14 <= io_in_weight_x_14; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_2_15 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h2 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_2_15 <= io_in_weight_x_15; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_0 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_0 <= io_in_weight_x_0; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_1 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_1 <= io_in_weight_x_1; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_2 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_2 <= io_in_weight_x_2; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_3 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_3 <= io_in_weight_x_3; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_4 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_4 <= io_in_weight_x_4; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_5 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_5 <= io_in_weight_x_5; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_6 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_6 <= io_in_weight_x_6; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_7 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_7 <= io_in_weight_x_7; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_8 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_8 <= io_in_weight_x_8; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_9 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_9 <= io_in_weight_x_9; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_10 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_10 <= io_in_weight_x_10; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_11 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_11 <= io_in_weight_x_11; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_12 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_12 <= io_in_weight_x_12; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_13 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_13 <= io_in_weight_x_13; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_14 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_14 <= io_in_weight_x_14; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 25:23]
      buffer_3_15 <= 8'h0; // @[Weight_Buffer.scala 25:23]
    end else if (_T_1) begin // @[Weight_Buffer.scala 46:27]
      if (2'h3 == write_ptr[1:0]) begin // @[Weight_Buffer.scala 47:44]
        buffer_3_15 <= io_in_weight_x_15; // @[Weight_Buffer.scala 47:44]
      end
    end
    if (reset) begin // @[Weight_Buffer.scala 28:25]
      read_ptr <= 3'h0; // @[Weight_Buffer.scala 28:25]
    end else if (shift_ptr == 3'h0) begin // @[Weight_Buffer.scala 73:27]
      read_ptr <= _read_ptr_T_1; // @[Weight_Buffer.scala 74:14]
    end
    if (reset) begin // @[Weight_Buffer.scala 29:26]
      write_ptr <= 3'h0; // @[Weight_Buffer.scala 29:26]
    end else if (io_wen & ~full) begin // @[Weight_Buffer.scala 40:27]
      write_ptr <= _write_ptr_T_1; // @[Weight_Buffer.scala 41:15]
    end
    if (reset) begin // @[Weight_Buffer.scala 51:26]
      shift_ptr <= 3'h4; // @[Weight_Buffer.scala 51:26]
    end else if (io_ren & ~empty) begin // @[Weight_Buffer.scala 53:28]
      shift_ptr <= _shift_ptr_T_1; // @[Weight_Buffer.scala 54:15]
    end else if (3'h1 <= shift_ptr & shift_ptr < 3'h4) begin // @[Weight_Buffer.scala 55:61]
      shift_ptr <= _shift_ptr_T_1; // @[Weight_Buffer.scala 56:15]
    end else begin
      shift_ptr <= 3'h4; // @[Weight_Buffer.scala 58:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  buffer_0_0 = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  buffer_0_1 = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  buffer_0_2 = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  buffer_0_3 = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  buffer_0_4 = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  buffer_0_5 = _RAND_5[7:0];
  _RAND_6 = {1{`RANDOM}};
  buffer_0_6 = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  buffer_0_7 = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  buffer_0_8 = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  buffer_0_9 = _RAND_9[7:0];
  _RAND_10 = {1{`RANDOM}};
  buffer_0_10 = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  buffer_0_11 = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  buffer_0_12 = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  buffer_0_13 = _RAND_13[7:0];
  _RAND_14 = {1{`RANDOM}};
  buffer_0_14 = _RAND_14[7:0];
  _RAND_15 = {1{`RANDOM}};
  buffer_0_15 = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  buffer_1_0 = _RAND_16[7:0];
  _RAND_17 = {1{`RANDOM}};
  buffer_1_1 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  buffer_1_2 = _RAND_18[7:0];
  _RAND_19 = {1{`RANDOM}};
  buffer_1_3 = _RAND_19[7:0];
  _RAND_20 = {1{`RANDOM}};
  buffer_1_4 = _RAND_20[7:0];
  _RAND_21 = {1{`RANDOM}};
  buffer_1_5 = _RAND_21[7:0];
  _RAND_22 = {1{`RANDOM}};
  buffer_1_6 = _RAND_22[7:0];
  _RAND_23 = {1{`RANDOM}};
  buffer_1_7 = _RAND_23[7:0];
  _RAND_24 = {1{`RANDOM}};
  buffer_1_8 = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  buffer_1_9 = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  buffer_1_10 = _RAND_26[7:0];
  _RAND_27 = {1{`RANDOM}};
  buffer_1_11 = _RAND_27[7:0];
  _RAND_28 = {1{`RANDOM}};
  buffer_1_12 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  buffer_1_13 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  buffer_1_14 = _RAND_30[7:0];
  _RAND_31 = {1{`RANDOM}};
  buffer_1_15 = _RAND_31[7:0];
  _RAND_32 = {1{`RANDOM}};
  buffer_2_0 = _RAND_32[7:0];
  _RAND_33 = {1{`RANDOM}};
  buffer_2_1 = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  buffer_2_2 = _RAND_34[7:0];
  _RAND_35 = {1{`RANDOM}};
  buffer_2_3 = _RAND_35[7:0];
  _RAND_36 = {1{`RANDOM}};
  buffer_2_4 = _RAND_36[7:0];
  _RAND_37 = {1{`RANDOM}};
  buffer_2_5 = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  buffer_2_6 = _RAND_38[7:0];
  _RAND_39 = {1{`RANDOM}};
  buffer_2_7 = _RAND_39[7:0];
  _RAND_40 = {1{`RANDOM}};
  buffer_2_8 = _RAND_40[7:0];
  _RAND_41 = {1{`RANDOM}};
  buffer_2_9 = _RAND_41[7:0];
  _RAND_42 = {1{`RANDOM}};
  buffer_2_10 = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  buffer_2_11 = _RAND_43[7:0];
  _RAND_44 = {1{`RANDOM}};
  buffer_2_12 = _RAND_44[7:0];
  _RAND_45 = {1{`RANDOM}};
  buffer_2_13 = _RAND_45[7:0];
  _RAND_46 = {1{`RANDOM}};
  buffer_2_14 = _RAND_46[7:0];
  _RAND_47 = {1{`RANDOM}};
  buffer_2_15 = _RAND_47[7:0];
  _RAND_48 = {1{`RANDOM}};
  buffer_3_0 = _RAND_48[7:0];
  _RAND_49 = {1{`RANDOM}};
  buffer_3_1 = _RAND_49[7:0];
  _RAND_50 = {1{`RANDOM}};
  buffer_3_2 = _RAND_50[7:0];
  _RAND_51 = {1{`RANDOM}};
  buffer_3_3 = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  buffer_3_4 = _RAND_52[7:0];
  _RAND_53 = {1{`RANDOM}};
  buffer_3_5 = _RAND_53[7:0];
  _RAND_54 = {1{`RANDOM}};
  buffer_3_6 = _RAND_54[7:0];
  _RAND_55 = {1{`RANDOM}};
  buffer_3_7 = _RAND_55[7:0];
  _RAND_56 = {1{`RANDOM}};
  buffer_3_8 = _RAND_56[7:0];
  _RAND_57 = {1{`RANDOM}};
  buffer_3_9 = _RAND_57[7:0];
  _RAND_58 = {1{`RANDOM}};
  buffer_3_10 = _RAND_58[7:0];
  _RAND_59 = {1{`RANDOM}};
  buffer_3_11 = _RAND_59[7:0];
  _RAND_60 = {1{`RANDOM}};
  buffer_3_12 = _RAND_60[7:0];
  _RAND_61 = {1{`RANDOM}};
  buffer_3_13 = _RAND_61[7:0];
  _RAND_62 = {1{`RANDOM}};
  buffer_3_14 = _RAND_62[7:0];
  _RAND_63 = {1{`RANDOM}};
  buffer_3_15 = _RAND_63[7:0];
  _RAND_64 = {1{`RANDOM}};
  read_ptr = _RAND_64[2:0];
  _RAND_65 = {1{`RANDOM}};
  write_ptr = _RAND_65[2:0];
  _RAND_66 = {1{`RANDOM}};
  shift_ptr = _RAND_66[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module basic_PE(
  input         clock,
  input         reset,
  input  [7:0]  io_in_activate,
  input  [7:0]  io_in_weight,
  input  [15:0] io_in_psum,
  input         io_in_flow,
  input         io_in_shift,
  output [7:0]  io_out_activate,
  output [7:0]  io_out_weight,
  output [15:0] io_out_psum
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [7:0] Activation_Reg; // @[basic_PE.scala 17:31]
  reg [7:0] Weight_Reg; // @[basic_PE.scala 18:27]
  reg [15:0] PSum_Reg; // @[basic_PE.scala 19:25]
  wire [15:0] _io_out_psum_T = Activation_Reg * Weight_Reg; // @[basic_PE.scala 47:33]
  assign io_out_activate = Activation_Reg; // @[basic_PE.scala 45:19]
  assign io_out_weight = Weight_Reg; // @[basic_PE.scala 46:17]
  assign io_out_psum = _io_out_psum_T + PSum_Reg; // @[basic_PE.scala 47:46]
  always @(posedge clock) begin
    if (reset) begin // @[basic_PE.scala 17:31]
      Activation_Reg <= 8'h0; // @[basic_PE.scala 17:31]
    end else if (io_in_flow) begin // @[basic_PE.scala 22:20]
      Activation_Reg <= io_in_activate; // @[basic_PE.scala 23:20]
    end
    if (reset) begin // @[basic_PE.scala 18:27]
      Weight_Reg <= 8'h0; // @[basic_PE.scala 18:27]
    end else if (io_in_shift) begin // @[basic_PE.scala 38:21]
      Weight_Reg <= io_in_weight; // @[basic_PE.scala 39:16]
    end
    if (reset) begin // @[basic_PE.scala 19:25]
      PSum_Reg <= 16'h0; // @[basic_PE.scala 19:25]
    end else if (io_in_shift) begin // @[basic_PE.scala 29:21]
      PSum_Reg <= 16'h0; // @[basic_PE.scala 30:14]
    end else if (io_in_flow) begin // @[basic_PE.scala 31:26]
      PSum_Reg <= io_in_psum; // @[basic_PE.scala 32:14]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  Activation_Reg = _RAND_0[7:0];
  _RAND_1 = {1{`RANDOM}};
  Weight_Reg = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  PSum_Reg = _RAND_2[15:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Systolic_Array(
  input         clock,
  input         reset,
  input  [7:0]  io_activate_0,
  input  [7:0]  io_activate_1,
  input  [7:0]  io_activate_2,
  input  [7:0]  io_activate_3,
  input  [7:0]  io_weight_0,
  input  [7:0]  io_weight_1,
  input  [7:0]  io_weight_2,
  input  [7:0]  io_weight_3,
  input         io_flow,
  input         io_shift,
  output [15:0] io_psum_0,
  output [15:0] io_psum_1,
  output [15:0] io_psum_2,
  output [15:0] io_psum_3,
  output        io_valid_0,
  output        io_valid_1,
  output        io_valid_2,
  output        io_valid_3
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  wire  PE_Array_0_0_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_0_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_0_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_0_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_0_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_0_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_0_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_0_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_0_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_0_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_1_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_1_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_1_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_1_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_1_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_1_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_1_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_1_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_1_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_1_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_2_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_2_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_2_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_2_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_2_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_2_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_2_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_2_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_2_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_2_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_3_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_3_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_3_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_3_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_3_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_3_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_3_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_3_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_3_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_3_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_0_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_0_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_0_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_0_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_0_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_0_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_0_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_0_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_0_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_0_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_1_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_1_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_1_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_1_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_1_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_1_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_1_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_1_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_1_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_1_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_2_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_2_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_2_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_2_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_2_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_2_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_2_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_2_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_2_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_2_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_3_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_3_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_3_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_3_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_3_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_3_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_3_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_3_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_3_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_3_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_0_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_0_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_0_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_0_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_0_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_0_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_0_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_0_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_0_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_0_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_1_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_1_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_1_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_1_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_1_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_1_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_1_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_1_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_1_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_1_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_2_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_2_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_2_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_2_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_2_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_2_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_2_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_2_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_2_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_2_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_3_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_3_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_3_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_3_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_3_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_3_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_3_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_3_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_3_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_3_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_0_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_0_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_0_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_0_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_0_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_0_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_0_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_0_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_0_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_0_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_1_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_1_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_1_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_1_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_1_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_1_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_1_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_1_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_1_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_1_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_2_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_2_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_2_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_2_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_2_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_2_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_2_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_2_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_2_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_2_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_3_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_3_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_3_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_3_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_3_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_3_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_3_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_3_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_3_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_3_io_out_psum; // @[Systolic_Array.scala 19:62]
  reg [3:0] flow_counter; // @[Systolic_Array.scala 52:29]
  reg [3:0] valid_reg; // @[Systolic_Array.scala 53:26]
  wire [3:0] _flow_counter_T_1 = flow_counter + 4'h1; // @[Systolic_Array.scala 57:34]
  wire [3:0] _valid_reg_T_1 = {valid_reg[2:0],1'h1}; // @[Cat.scala 33:92]
  wire [3:0] _valid_reg_T_3 = {valid_reg[2:0],1'h0}; // @[Cat.scala 33:92]
  basic_PE PE_Array_0_0 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_0_0_clock),
    .reset(PE_Array_0_0_reset),
    .io_in_activate(PE_Array_0_0_io_in_activate),
    .io_in_weight(PE_Array_0_0_io_in_weight),
    .io_in_psum(PE_Array_0_0_io_in_psum),
    .io_in_flow(PE_Array_0_0_io_in_flow),
    .io_in_shift(PE_Array_0_0_io_in_shift),
    .io_out_activate(PE_Array_0_0_io_out_activate),
    .io_out_weight(PE_Array_0_0_io_out_weight),
    .io_out_psum(PE_Array_0_0_io_out_psum)
  );
  basic_PE PE_Array_0_1 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_0_1_clock),
    .reset(PE_Array_0_1_reset),
    .io_in_activate(PE_Array_0_1_io_in_activate),
    .io_in_weight(PE_Array_0_1_io_in_weight),
    .io_in_psum(PE_Array_0_1_io_in_psum),
    .io_in_flow(PE_Array_0_1_io_in_flow),
    .io_in_shift(PE_Array_0_1_io_in_shift),
    .io_out_activate(PE_Array_0_1_io_out_activate),
    .io_out_weight(PE_Array_0_1_io_out_weight),
    .io_out_psum(PE_Array_0_1_io_out_psum)
  );
  basic_PE PE_Array_0_2 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_0_2_clock),
    .reset(PE_Array_0_2_reset),
    .io_in_activate(PE_Array_0_2_io_in_activate),
    .io_in_weight(PE_Array_0_2_io_in_weight),
    .io_in_psum(PE_Array_0_2_io_in_psum),
    .io_in_flow(PE_Array_0_2_io_in_flow),
    .io_in_shift(PE_Array_0_2_io_in_shift),
    .io_out_activate(PE_Array_0_2_io_out_activate),
    .io_out_weight(PE_Array_0_2_io_out_weight),
    .io_out_psum(PE_Array_0_2_io_out_psum)
  );
  basic_PE PE_Array_0_3 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_0_3_clock),
    .reset(PE_Array_0_3_reset),
    .io_in_activate(PE_Array_0_3_io_in_activate),
    .io_in_weight(PE_Array_0_3_io_in_weight),
    .io_in_psum(PE_Array_0_3_io_in_psum),
    .io_in_flow(PE_Array_0_3_io_in_flow),
    .io_in_shift(PE_Array_0_3_io_in_shift),
    .io_out_activate(PE_Array_0_3_io_out_activate),
    .io_out_weight(PE_Array_0_3_io_out_weight),
    .io_out_psum(PE_Array_0_3_io_out_psum)
  );
  basic_PE PE_Array_1_0 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_1_0_clock),
    .reset(PE_Array_1_0_reset),
    .io_in_activate(PE_Array_1_0_io_in_activate),
    .io_in_weight(PE_Array_1_0_io_in_weight),
    .io_in_psum(PE_Array_1_0_io_in_psum),
    .io_in_flow(PE_Array_1_0_io_in_flow),
    .io_in_shift(PE_Array_1_0_io_in_shift),
    .io_out_activate(PE_Array_1_0_io_out_activate),
    .io_out_weight(PE_Array_1_0_io_out_weight),
    .io_out_psum(PE_Array_1_0_io_out_psum)
  );
  basic_PE PE_Array_1_1 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_1_1_clock),
    .reset(PE_Array_1_1_reset),
    .io_in_activate(PE_Array_1_1_io_in_activate),
    .io_in_weight(PE_Array_1_1_io_in_weight),
    .io_in_psum(PE_Array_1_1_io_in_psum),
    .io_in_flow(PE_Array_1_1_io_in_flow),
    .io_in_shift(PE_Array_1_1_io_in_shift),
    .io_out_activate(PE_Array_1_1_io_out_activate),
    .io_out_weight(PE_Array_1_1_io_out_weight),
    .io_out_psum(PE_Array_1_1_io_out_psum)
  );
  basic_PE PE_Array_1_2 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_1_2_clock),
    .reset(PE_Array_1_2_reset),
    .io_in_activate(PE_Array_1_2_io_in_activate),
    .io_in_weight(PE_Array_1_2_io_in_weight),
    .io_in_psum(PE_Array_1_2_io_in_psum),
    .io_in_flow(PE_Array_1_2_io_in_flow),
    .io_in_shift(PE_Array_1_2_io_in_shift),
    .io_out_activate(PE_Array_1_2_io_out_activate),
    .io_out_weight(PE_Array_1_2_io_out_weight),
    .io_out_psum(PE_Array_1_2_io_out_psum)
  );
  basic_PE PE_Array_1_3 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_1_3_clock),
    .reset(PE_Array_1_3_reset),
    .io_in_activate(PE_Array_1_3_io_in_activate),
    .io_in_weight(PE_Array_1_3_io_in_weight),
    .io_in_psum(PE_Array_1_3_io_in_psum),
    .io_in_flow(PE_Array_1_3_io_in_flow),
    .io_in_shift(PE_Array_1_3_io_in_shift),
    .io_out_activate(PE_Array_1_3_io_out_activate),
    .io_out_weight(PE_Array_1_3_io_out_weight),
    .io_out_psum(PE_Array_1_3_io_out_psum)
  );
  basic_PE PE_Array_2_0 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_2_0_clock),
    .reset(PE_Array_2_0_reset),
    .io_in_activate(PE_Array_2_0_io_in_activate),
    .io_in_weight(PE_Array_2_0_io_in_weight),
    .io_in_psum(PE_Array_2_0_io_in_psum),
    .io_in_flow(PE_Array_2_0_io_in_flow),
    .io_in_shift(PE_Array_2_0_io_in_shift),
    .io_out_activate(PE_Array_2_0_io_out_activate),
    .io_out_weight(PE_Array_2_0_io_out_weight),
    .io_out_psum(PE_Array_2_0_io_out_psum)
  );
  basic_PE PE_Array_2_1 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_2_1_clock),
    .reset(PE_Array_2_1_reset),
    .io_in_activate(PE_Array_2_1_io_in_activate),
    .io_in_weight(PE_Array_2_1_io_in_weight),
    .io_in_psum(PE_Array_2_1_io_in_psum),
    .io_in_flow(PE_Array_2_1_io_in_flow),
    .io_in_shift(PE_Array_2_1_io_in_shift),
    .io_out_activate(PE_Array_2_1_io_out_activate),
    .io_out_weight(PE_Array_2_1_io_out_weight),
    .io_out_psum(PE_Array_2_1_io_out_psum)
  );
  basic_PE PE_Array_2_2 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_2_2_clock),
    .reset(PE_Array_2_2_reset),
    .io_in_activate(PE_Array_2_2_io_in_activate),
    .io_in_weight(PE_Array_2_2_io_in_weight),
    .io_in_psum(PE_Array_2_2_io_in_psum),
    .io_in_flow(PE_Array_2_2_io_in_flow),
    .io_in_shift(PE_Array_2_2_io_in_shift),
    .io_out_activate(PE_Array_2_2_io_out_activate),
    .io_out_weight(PE_Array_2_2_io_out_weight),
    .io_out_psum(PE_Array_2_2_io_out_psum)
  );
  basic_PE PE_Array_2_3 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_2_3_clock),
    .reset(PE_Array_2_3_reset),
    .io_in_activate(PE_Array_2_3_io_in_activate),
    .io_in_weight(PE_Array_2_3_io_in_weight),
    .io_in_psum(PE_Array_2_3_io_in_psum),
    .io_in_flow(PE_Array_2_3_io_in_flow),
    .io_in_shift(PE_Array_2_3_io_in_shift),
    .io_out_activate(PE_Array_2_3_io_out_activate),
    .io_out_weight(PE_Array_2_3_io_out_weight),
    .io_out_psum(PE_Array_2_3_io_out_psum)
  );
  basic_PE PE_Array_3_0 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_3_0_clock),
    .reset(PE_Array_3_0_reset),
    .io_in_activate(PE_Array_3_0_io_in_activate),
    .io_in_weight(PE_Array_3_0_io_in_weight),
    .io_in_psum(PE_Array_3_0_io_in_psum),
    .io_in_flow(PE_Array_3_0_io_in_flow),
    .io_in_shift(PE_Array_3_0_io_in_shift),
    .io_out_activate(PE_Array_3_0_io_out_activate),
    .io_out_weight(PE_Array_3_0_io_out_weight),
    .io_out_psum(PE_Array_3_0_io_out_psum)
  );
  basic_PE PE_Array_3_1 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_3_1_clock),
    .reset(PE_Array_3_1_reset),
    .io_in_activate(PE_Array_3_1_io_in_activate),
    .io_in_weight(PE_Array_3_1_io_in_weight),
    .io_in_psum(PE_Array_3_1_io_in_psum),
    .io_in_flow(PE_Array_3_1_io_in_flow),
    .io_in_shift(PE_Array_3_1_io_in_shift),
    .io_out_activate(PE_Array_3_1_io_out_activate),
    .io_out_weight(PE_Array_3_1_io_out_weight),
    .io_out_psum(PE_Array_3_1_io_out_psum)
  );
  basic_PE PE_Array_3_2 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_3_2_clock),
    .reset(PE_Array_3_2_reset),
    .io_in_activate(PE_Array_3_2_io_in_activate),
    .io_in_weight(PE_Array_3_2_io_in_weight),
    .io_in_psum(PE_Array_3_2_io_in_psum),
    .io_in_flow(PE_Array_3_2_io_in_flow),
    .io_in_shift(PE_Array_3_2_io_in_shift),
    .io_out_activate(PE_Array_3_2_io_out_activate),
    .io_out_weight(PE_Array_3_2_io_out_weight),
    .io_out_psum(PE_Array_3_2_io_out_psum)
  );
  basic_PE PE_Array_3_3 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_3_3_clock),
    .reset(PE_Array_3_3_reset),
    .io_in_activate(PE_Array_3_3_io_in_activate),
    .io_in_weight(PE_Array_3_3_io_in_weight),
    .io_in_psum(PE_Array_3_3_io_in_psum),
    .io_in_flow(PE_Array_3_3_io_in_flow),
    .io_in_shift(PE_Array_3_3_io_in_shift),
    .io_out_activate(PE_Array_3_3_io_out_activate),
    .io_out_weight(PE_Array_3_3_io_out_weight),
    .io_out_psum(PE_Array_3_3_io_out_psum)
  );
  assign io_psum_0 = PE_Array_3_0_io_out_psum; // @[DataPath.scala 24:10]
  assign io_psum_1 = PE_Array_3_1_io_out_psum; // @[DataPath.scala 24:10]
  assign io_psum_2 = PE_Array_3_2_io_out_psum; // @[DataPath.scala 24:10]
  assign io_psum_3 = PE_Array_3_3_io_out_psum; // @[DataPath.scala 24:10]
  assign io_valid_0 = valid_reg[0]; // @[Systolic_Array.scala 73:33]
  assign io_valid_1 = valid_reg[1]; // @[Systolic_Array.scala 73:33]
  assign io_valid_2 = valid_reg[2]; // @[Systolic_Array.scala 73:33]
  assign io_valid_3 = valid_reg[3]; // @[Systolic_Array.scala 73:33]
  assign PE_Array_0_0_clock = clock;
  assign PE_Array_0_0_reset = reset;
  assign PE_Array_0_0_io_in_activate = io_activate_0; // @[DataPath.scala 11:26]
  assign PE_Array_0_0_io_in_weight = io_weight_0; // @[DataPath.scala 20:23]
  assign PE_Array_0_0_io_in_psum = 16'h0; // @[DataPath.scala 21:21]
  assign PE_Array_0_0_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_0_0_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_0_1_clock = clock;
  assign PE_Array_0_1_reset = reset;
  assign PE_Array_0_1_io_in_activate = PE_Array_0_0_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_0_1_io_in_weight = io_weight_1; // @[DataPath.scala 20:23]
  assign PE_Array_0_1_io_in_psum = 16'h0; // @[DataPath.scala 21:21]
  assign PE_Array_0_1_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_0_1_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_0_2_clock = clock;
  assign PE_Array_0_2_reset = reset;
  assign PE_Array_0_2_io_in_activate = PE_Array_0_1_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_0_2_io_in_weight = io_weight_2; // @[DataPath.scala 20:23]
  assign PE_Array_0_2_io_in_psum = 16'h0; // @[DataPath.scala 21:21]
  assign PE_Array_0_2_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_0_2_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_0_3_clock = clock;
  assign PE_Array_0_3_reset = reset;
  assign PE_Array_0_3_io_in_activate = PE_Array_0_2_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_0_3_io_in_weight = io_weight_3; // @[DataPath.scala 20:23]
  assign PE_Array_0_3_io_in_psum = 16'h0; // @[DataPath.scala 21:21]
  assign PE_Array_0_3_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_0_3_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_1_0_clock = clock;
  assign PE_Array_1_0_reset = reset;
  assign PE_Array_1_0_io_in_activate = io_activate_1; // @[DataPath.scala 11:26]
  assign PE_Array_1_0_io_in_weight = PE_Array_0_0_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_1_0_io_in_psum = PE_Array_0_0_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_1_0_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_1_0_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_1_1_clock = clock;
  assign PE_Array_1_1_reset = reset;
  assign PE_Array_1_1_io_in_activate = PE_Array_1_0_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_1_1_io_in_weight = PE_Array_0_1_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_1_1_io_in_psum = PE_Array_0_1_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_1_1_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_1_1_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_1_2_clock = clock;
  assign PE_Array_1_2_reset = reset;
  assign PE_Array_1_2_io_in_activate = PE_Array_1_1_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_1_2_io_in_weight = PE_Array_0_2_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_1_2_io_in_psum = PE_Array_0_2_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_1_2_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_1_2_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_1_3_clock = clock;
  assign PE_Array_1_3_reset = reset;
  assign PE_Array_1_3_io_in_activate = PE_Array_1_2_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_1_3_io_in_weight = PE_Array_0_3_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_1_3_io_in_psum = PE_Array_0_3_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_1_3_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_1_3_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_2_0_clock = clock;
  assign PE_Array_2_0_reset = reset;
  assign PE_Array_2_0_io_in_activate = io_activate_2; // @[DataPath.scala 11:26]
  assign PE_Array_2_0_io_in_weight = PE_Array_1_0_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_2_0_io_in_psum = PE_Array_1_0_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_2_0_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_2_0_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_2_1_clock = clock;
  assign PE_Array_2_1_reset = reset;
  assign PE_Array_2_1_io_in_activate = PE_Array_2_0_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_2_1_io_in_weight = PE_Array_1_1_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_2_1_io_in_psum = PE_Array_1_1_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_2_1_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_2_1_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_2_2_clock = clock;
  assign PE_Array_2_2_reset = reset;
  assign PE_Array_2_2_io_in_activate = PE_Array_2_1_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_2_2_io_in_weight = PE_Array_1_2_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_2_2_io_in_psum = PE_Array_1_2_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_2_2_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_2_2_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_2_3_clock = clock;
  assign PE_Array_2_3_reset = reset;
  assign PE_Array_2_3_io_in_activate = PE_Array_2_2_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_2_3_io_in_weight = PE_Array_1_3_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_2_3_io_in_psum = PE_Array_1_3_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_2_3_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_2_3_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_3_0_clock = clock;
  assign PE_Array_3_0_reset = reset;
  assign PE_Array_3_0_io_in_activate = io_activate_3; // @[DataPath.scala 11:26]
  assign PE_Array_3_0_io_in_weight = PE_Array_2_0_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_3_0_io_in_psum = PE_Array_2_0_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_3_0_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_3_0_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_3_1_clock = clock;
  assign PE_Array_3_1_reset = reset;
  assign PE_Array_3_1_io_in_activate = PE_Array_3_0_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_3_1_io_in_weight = PE_Array_2_1_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_3_1_io_in_psum = PE_Array_2_1_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_3_1_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_3_1_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_3_2_clock = clock;
  assign PE_Array_3_2_reset = reset;
  assign PE_Array_3_2_io_in_activate = PE_Array_3_1_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_3_2_io_in_weight = PE_Array_2_2_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_3_2_io_in_psum = PE_Array_2_2_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_3_2_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_3_2_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_3_3_clock = clock;
  assign PE_Array_3_3_reset = reset;
  assign PE_Array_3_3_io_in_activate = PE_Array_3_2_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_3_3_io_in_weight = PE_Array_2_3_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_3_3_io_in_psum = PE_Array_2_3_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_3_3_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_3_3_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  always @(posedge clock) begin
    if (reset) begin // @[Systolic_Array.scala 52:29]
      flow_counter <= 4'h0; // @[Systolic_Array.scala 52:29]
    end else if (io_flow & flow_counter < 4'ha) begin // @[Systolic_Array.scala 56:58]
      flow_counter <= _flow_counter_T_1; // @[Systolic_Array.scala 57:18]
    end else if (flow_counter == 4'ha) begin // @[Systolic_Array.scala 58:53]
      flow_counter <= 4'h0; // @[Systolic_Array.scala 59:18]
    end
    if (reset) begin // @[Systolic_Array.scala 53:26]
      valid_reg <= 4'h0; // @[Systolic_Array.scala 53:26]
    end else if (io_flow & 4'h3 <= flow_counter & flow_counter < 4'h7) begin // @[Systolic_Array.scala 65:96]
      valid_reg <= _valid_reg_T_1; // @[Systolic_Array.scala 66:15]
    end else if (io_flow & flow_counter >= 4'h7) begin // @[Systolic_Array.scala 67:65]
      valid_reg <= _valid_reg_T_3; // @[Systolic_Array.scala 68:15]
    end else begin
      valid_reg <= 4'h0; // @[Systolic_Array.scala 70:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  flow_counter = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  valid_reg = _RAND_1[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Accumulator_Array(
  input         clock,
  input         reset,
  input  [15:0] io_in_psum_0,
  input  [15:0] io_in_psum_1,
  input  [15:0] io_in_psum_2,
  input  [15:0] io_in_psum_3,
  input         io_in_valid_0,
  input         io_in_valid_1,
  input         io_in_valid_2,
  input         io_in_valid_3,
  input         io_in_acc,
  input         io_in_compute_done,
  output        io_isdone,
  output [31:0] io_out_sum_0,
  output [31:0] io_out_sum_1,
  output [31:0] io_out_sum_2,
  output [31:0] io_out_sum_3,
  output [31:0] io_out_sum_4,
  output [31:0] io_out_sum_5,
  output [31:0] io_out_sum_6,
  output [31:0] io_out_sum_7,
  output [31:0] io_out_sum_8,
  output [31:0] io_out_sum_9,
  output [31:0] io_out_sum_10,
  output [31:0] io_out_sum_11,
  output [31:0] io_out_sum_12,
  output [31:0] io_out_sum_13,
  output [31:0] io_out_sum_14,
  output [31:0] io_out_sum_15,
  output        io_valid
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] Acc_Buffer_0_0; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_0_1; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_0_2; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_0_3; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_1_0; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_1_1; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_1_2; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_1_3; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_2_0; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_2_1; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_2_2; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_2_3; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_3_0; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_3_1; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_3_2; // @[Accumulator_Array.scala 20:27]
  reg [15:0] Acc_Buffer_3_3; // @[Accumulator_Array.scala 20:27]
  reg [31:0] Acc_Result_0_0; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_0_1; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_0_2; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_0_3; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_1_0; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_1_1; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_1_2; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_1_3; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_2_0; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_2_1; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_2_2; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_2_3; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_3_0; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_3_1; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_3_2; // @[Accumulator_Array.scala 21:27]
  reg [31:0] Acc_Result_3_3; // @[Accumulator_Array.scala 21:27]
  reg [2:0] valid_counter_0; // @[Accumulator_Array.scala 22:30]
  reg [2:0] valid_counter_1; // @[Accumulator_Array.scala 22:30]
  reg [2:0] valid_counter_2; // @[Accumulator_Array.scala 22:30]
  reg [2:0] valid_counter_3; // @[Accumulator_Array.scala 22:30]
  wire [15:0] _GEN_9 = 2'h1 == valid_counter_0[1:0] ? Acc_Buffer_1_0 : Acc_Buffer_0_0; // @[Accumulator_Array.scala 28:{39,39}]
  wire [15:0] _GEN_10 = 2'h2 == valid_counter_0[1:0] ? Acc_Buffer_2_0 : _GEN_9; // @[Accumulator_Array.scala 28:{39,39}]
  wire [15:0] _GEN_25 = 2'h1 == valid_counter_1[1:0] ? Acc_Buffer_1_1 : Acc_Buffer_0_1; // @[Accumulator_Array.scala 28:{39,39}]
  wire [15:0] _GEN_26 = 2'h2 == valid_counter_1[1:0] ? Acc_Buffer_2_1 : _GEN_25; // @[Accumulator_Array.scala 28:{39,39}]
  wire [15:0] _GEN_41 = 2'h1 == valid_counter_2[1:0] ? Acc_Buffer_1_2 : Acc_Buffer_0_2; // @[Accumulator_Array.scala 28:{39,39}]
  wire [15:0] _GEN_42 = 2'h2 == valid_counter_2[1:0] ? Acc_Buffer_2_2 : _GEN_41; // @[Accumulator_Array.scala 28:{39,39}]
  wire [15:0] _GEN_57 = 2'h1 == valid_counter_3[1:0] ? Acc_Buffer_1_3 : Acc_Buffer_0_3; // @[Accumulator_Array.scala 28:{39,39}]
  wire [15:0] _GEN_58 = 2'h2 == valid_counter_3[1:0] ? Acc_Buffer_2_3 : _GEN_57; // @[Accumulator_Array.scala 28:{39,39}]
  wire [2:0] _valid_counter_0_T_1 = valid_counter_0 + 3'h1; // @[Accumulator_Array.scala 35:44]
  wire [2:0] _valid_counter_1_T_1 = valid_counter_1 + 3'h1; // @[Accumulator_Array.scala 35:44]
  wire [2:0] _valid_counter_2_T_1 = valid_counter_2 + 3'h1; // @[Accumulator_Array.scala 35:44]
  wire [2:0] _valid_counter_3_T_1 = valid_counter_3 + 3'h1; // @[Accumulator_Array.scala 35:44]
  reg [2:0] acc_counter; // @[Accumulator_Array.scala 43:28]
  wire [2:0] _acc_counter_T_1 = acc_counter + 3'h1; // @[Accumulator_Array.scala 46:32]
  wire  _T_23 = acc_counter != 3'h0; // @[Accumulator_Array.scala 49:26]
  wire [2:0] _T_26 = acc_counter - 3'h1; // @[Accumulator_Array.scala 57:30]
  wire [31:0] _GEN_76 = 2'h1 == _T_26[1:0] ? Acc_Result_1_0 : Acc_Result_0_0; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_77 = 2'h2 == _T_26[1:0] ? Acc_Result_2_0 : _GEN_76; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_78 = 2'h3 == _T_26[1:0] ? Acc_Result_3_0 : _GEN_77; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_80 = 2'h1 == _T_26[1:0] ? Acc_Buffer_1_0 : Acc_Buffer_0_0; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_81 = 2'h2 == _T_26[1:0] ? Acc_Buffer_2_0 : _GEN_80; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_82 = 2'h3 == _T_26[1:0] ? Acc_Buffer_3_0 : _GEN_81; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_157 = {{16'd0}, _GEN_82}; // @[Accumulator_Array.scala 57:76]
  wire [31:0] _Acc_Result_0_T_7 = _GEN_78 + _GEN_157; // @[Accumulator_Array.scala 57:76]
  wire [31:0] _GEN_88 = 2'h1 == _T_26[1:0] ? Acc_Result_1_1 : Acc_Result_0_1; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_89 = 2'h2 == _T_26[1:0] ? Acc_Result_2_1 : _GEN_88; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_90 = 2'h3 == _T_26[1:0] ? Acc_Result_3_1 : _GEN_89; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_92 = 2'h1 == _T_26[1:0] ? Acc_Buffer_1_1 : Acc_Buffer_0_1; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_93 = 2'h2 == _T_26[1:0] ? Acc_Buffer_2_1 : _GEN_92; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_94 = 2'h3 == _T_26[1:0] ? Acc_Buffer_3_1 : _GEN_93; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_158 = {{16'd0}, _GEN_94}; // @[Accumulator_Array.scala 57:76]
  wire [31:0] _Acc_Result_1_T_7 = _GEN_90 + _GEN_158; // @[Accumulator_Array.scala 57:76]
  wire [31:0] _GEN_100 = 2'h1 == _T_26[1:0] ? Acc_Result_1_2 : Acc_Result_0_2; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_101 = 2'h2 == _T_26[1:0] ? Acc_Result_2_2 : _GEN_100; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_102 = 2'h3 == _T_26[1:0] ? Acc_Result_3_2 : _GEN_101; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_104 = 2'h1 == _T_26[1:0] ? Acc_Buffer_1_2 : Acc_Buffer_0_2; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_105 = 2'h2 == _T_26[1:0] ? Acc_Buffer_2_2 : _GEN_104; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_106 = 2'h3 == _T_26[1:0] ? Acc_Buffer_3_2 : _GEN_105; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_159 = {{16'd0}, _GEN_106}; // @[Accumulator_Array.scala 57:76]
  wire [31:0] _Acc_Result_2_T_7 = _GEN_102 + _GEN_159; // @[Accumulator_Array.scala 57:76]
  wire [31:0] _GEN_112 = 2'h1 == _T_26[1:0] ? Acc_Result_1_3 : Acc_Result_0_3; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_113 = 2'h2 == _T_26[1:0] ? Acc_Result_2_3 : _GEN_112; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_114 = 2'h3 == _T_26[1:0] ? Acc_Result_3_3 : _GEN_113; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_116 = 2'h1 == _T_26[1:0] ? Acc_Buffer_1_3 : Acc_Buffer_0_3; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_117 = 2'h2 == _T_26[1:0] ? Acc_Buffer_2_3 : _GEN_116; // @[Accumulator_Array.scala 57:{76,76}]
  wire [15:0] _GEN_118 = 2'h3 == _T_26[1:0] ? Acc_Buffer_3_3 : _GEN_117; // @[Accumulator_Array.scala 57:{76,76}]
  wire [31:0] _GEN_160 = {{16'd0}, _GEN_118}; // @[Accumulator_Array.scala 57:76]
  wire [31:0] _Acc_Result_3_T_7 = _GEN_114 + _GEN_160; // @[Accumulator_Array.scala 57:76]
  assign io_isdone = acc_counter == 3'h4; // @[Accumulator_Array.scala 61:20]
  assign io_out_sum_0 = io_in_compute_done ? Acc_Result_0_0 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_1 = io_in_compute_done ? Acc_Result_0_1 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_2 = io_in_compute_done ? Acc_Result_0_2 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_3 = io_in_compute_done ? Acc_Result_0_3 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_4 = io_in_compute_done ? Acc_Result_1_0 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_5 = io_in_compute_done ? Acc_Result_1_1 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_6 = io_in_compute_done ? Acc_Result_1_2 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_7 = io_in_compute_done ? Acc_Result_1_3 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_8 = io_in_compute_done ? Acc_Result_2_0 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_9 = io_in_compute_done ? Acc_Result_2_1 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_10 = io_in_compute_done ? Acc_Result_2_2 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_11 = io_in_compute_done ? Acc_Result_2_3 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_12 = io_in_compute_done ? Acc_Result_3_0 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_13 = io_in_compute_done ? Acc_Result_3_1 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_14 = io_in_compute_done ? Acc_Result_3_2 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_out_sum_15 = io_in_compute_done ? Acc_Result_3_3 : 32'h0; // @[Accumulator_Array.scala 67:28 68:16 71:16]
  assign io_valid = io_in_compute_done; // @[Accumulator_Array.scala 67:28 69:14 72:14]
  always @(posedge clock) begin
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_0_0 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_0) begin // @[Accumulator_Array.scala 25:26]
      if (2'h0 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_0_0 <= io_in_psum_0; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h0 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_0_0 <= Acc_Buffer_3_0; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_0_0 <= _GEN_10;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_0_1 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_1) begin // @[Accumulator_Array.scala 25:26]
      if (2'h0 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_0_1 <= io_in_psum_1; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h0 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_0_1 <= Acc_Buffer_3_1; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_0_1 <= _GEN_26;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_0_2 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_2) begin // @[Accumulator_Array.scala 25:26]
      if (2'h0 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_0_2 <= io_in_psum_2; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h0 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_0_2 <= Acc_Buffer_3_2; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_0_2 <= _GEN_42;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_0_3 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_3) begin // @[Accumulator_Array.scala 25:26]
      if (2'h0 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_0_3 <= io_in_psum_3; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h0 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_0_3 <= Acc_Buffer_3_3; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_0_3 <= _GEN_58;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_1_0 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_0) begin // @[Accumulator_Array.scala 25:26]
      if (2'h1 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_1_0 <= io_in_psum_0; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h1 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_1_0 <= Acc_Buffer_3_0; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_1_0 <= _GEN_10;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_1_1 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_1) begin // @[Accumulator_Array.scala 25:26]
      if (2'h1 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_1_1 <= io_in_psum_1; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h1 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_1_1 <= Acc_Buffer_3_1; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_1_1 <= _GEN_26;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_1_2 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_2) begin // @[Accumulator_Array.scala 25:26]
      if (2'h1 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_1_2 <= io_in_psum_2; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h1 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_1_2 <= Acc_Buffer_3_2; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_1_2 <= _GEN_42;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_1_3 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_3) begin // @[Accumulator_Array.scala 25:26]
      if (2'h1 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_1_3 <= io_in_psum_3; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h1 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_1_3 <= Acc_Buffer_3_3; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_1_3 <= _GEN_58;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_2_0 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_0) begin // @[Accumulator_Array.scala 25:26]
      if (2'h2 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_2_0 <= io_in_psum_0; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h2 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_2_0 <= Acc_Buffer_3_0; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_2_0 <= _GEN_10;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_2_1 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_1) begin // @[Accumulator_Array.scala 25:26]
      if (2'h2 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_2_1 <= io_in_psum_1; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h2 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_2_1 <= Acc_Buffer_3_1; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_2_1 <= _GEN_26;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_2_2 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_2) begin // @[Accumulator_Array.scala 25:26]
      if (2'h2 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_2_2 <= io_in_psum_2; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h2 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_2_2 <= Acc_Buffer_3_2; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_2_2 <= _GEN_42;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_2_3 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_3) begin // @[Accumulator_Array.scala 25:26]
      if (2'h2 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_2_3 <= io_in_psum_3; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h2 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (2'h3 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_2_3 <= Acc_Buffer_3_3; // @[Accumulator_Array.scala 28:39]
      end else begin
        Acc_Buffer_2_3 <= _GEN_58;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_3_0 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_0) begin // @[Accumulator_Array.scala 25:26]
      if (2'h3 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_3_0 <= io_in_psum_0; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h3 == valid_counter_0[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (!(2'h3 == valid_counter_0[1:0])) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_3_0 <= _GEN_10;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_3_1 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_1) begin // @[Accumulator_Array.scala 25:26]
      if (2'h3 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_3_1 <= io_in_psum_1; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h3 == valid_counter_1[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (!(2'h3 == valid_counter_1[1:0])) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_3_1 <= _GEN_26;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_3_2 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_2) begin // @[Accumulator_Array.scala 25:26]
      if (2'h3 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_3_2 <= io_in_psum_2; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h3 == valid_counter_2[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (!(2'h3 == valid_counter_2[1:0])) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_3_2 <= _GEN_42;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 20:27]
      Acc_Buffer_3_3 <= 16'h0; // @[Accumulator_Array.scala 20:27]
    end else if (io_in_valid_3) begin // @[Accumulator_Array.scala 25:26]
      if (2'h3 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 26:39]
        Acc_Buffer_3_3 <= io_in_psum_3; // @[Accumulator_Array.scala 26:39]
      end
    end else if (2'h3 == valid_counter_3[1:0]) begin // @[Accumulator_Array.scala 28:39]
      if (!(2'h3 == valid_counter_3[1:0])) begin // @[Accumulator_Array.scala 28:39]
        Acc_Buffer_3_3 <= _GEN_58;
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_0_0 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h0 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_0_0 <= _Acc_Result_0_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_0_1 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h0 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_0_1 <= _Acc_Result_1_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_0_2 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h0 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_0_2 <= _Acc_Result_2_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_0_3 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h0 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_0_3 <= _Acc_Result_3_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_1_0 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h1 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_1_0 <= _Acc_Result_0_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_1_1 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h1 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_1_1 <= _Acc_Result_1_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_1_2 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h1 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_1_2 <= _Acc_Result_2_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_1_3 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h1 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_1_3 <= _Acc_Result_3_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_2_0 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h2 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_2_0 <= _Acc_Result_0_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_2_1 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h2 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_2_1 <= _Acc_Result_1_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_2_2 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h2 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_2_2 <= _Acc_Result_2_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_2_3 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h2 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_2_3 <= _Acc_Result_3_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_3_0 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h3 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_3_0 <= _Acc_Result_0_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_3_1 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h3 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_3_1 <= _Acc_Result_1_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_3_2 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h3 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_3_2 <= _Acc_Result_2_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 21:27]
      Acc_Result_3_3 <= 32'h0; // @[Accumulator_Array.scala 21:27]
    end else if (_T_23) begin // @[Accumulator_Array.scala 55:29]
      if (2'h3 == _T_26[1:0]) begin // @[Accumulator_Array.scala 57:40]
        Acc_Result_3_3 <= _Acc_Result_3_T_7; // @[Accumulator_Array.scala 57:40]
      end
    end
    if (reset) begin // @[Accumulator_Array.scala 22:30]
      valid_counter_0 <= 3'h0; // @[Accumulator_Array.scala 22:30]
    end else if (io_in_valid_0 & valid_counter_0 < 3'h3) begin // @[Accumulator_Array.scala 34:67]
      valid_counter_0 <= _valid_counter_0_T_1; // @[Accumulator_Array.scala 35:24]
    end else if (valid_counter_0 == 3'h3) begin // @[Accumulator_Array.scala 36:55]
      valid_counter_0 <= 3'h0; // @[Accumulator_Array.scala 37:24]
    end
    if (reset) begin // @[Accumulator_Array.scala 22:30]
      valid_counter_1 <= 3'h0; // @[Accumulator_Array.scala 22:30]
    end else if (io_in_valid_1 & valid_counter_1 < 3'h3) begin // @[Accumulator_Array.scala 34:67]
      valid_counter_1 <= _valid_counter_1_T_1; // @[Accumulator_Array.scala 35:24]
    end else if (valid_counter_1 == 3'h3) begin // @[Accumulator_Array.scala 36:55]
      valid_counter_1 <= 3'h0; // @[Accumulator_Array.scala 37:24]
    end
    if (reset) begin // @[Accumulator_Array.scala 22:30]
      valid_counter_2 <= 3'h0; // @[Accumulator_Array.scala 22:30]
    end else if (io_in_valid_2 & valid_counter_2 < 3'h3) begin // @[Accumulator_Array.scala 34:67]
      valid_counter_2 <= _valid_counter_2_T_1; // @[Accumulator_Array.scala 35:24]
    end else if (valid_counter_2 == 3'h3) begin // @[Accumulator_Array.scala 36:55]
      valid_counter_2 <= 3'h0; // @[Accumulator_Array.scala 37:24]
    end
    if (reset) begin // @[Accumulator_Array.scala 22:30]
      valid_counter_3 <= 3'h0; // @[Accumulator_Array.scala 22:30]
    end else if (io_in_valid_3 & valid_counter_3 < 3'h3) begin // @[Accumulator_Array.scala 34:67]
      valid_counter_3 <= _valid_counter_3_T_1; // @[Accumulator_Array.scala 35:24]
    end else if (valid_counter_3 == 3'h3) begin // @[Accumulator_Array.scala 36:55]
      valid_counter_3 <= 3'h0; // @[Accumulator_Array.scala 37:24]
    end
    if (reset) begin // @[Accumulator_Array.scala 43:28]
      acc_counter <= 3'h0; // @[Accumulator_Array.scala 43:28]
    end else if (io_in_acc & acc_counter == 3'h0) begin // @[Accumulator_Array.scala 45:44]
      acc_counter <= _acc_counter_T_1; // @[Accumulator_Array.scala 46:17]
    end else if (acc_counter == 3'h4) begin // @[Accumulator_Array.scala 47:43]
      acc_counter <= 3'h0; // @[Accumulator_Array.scala 48:17]
    end else if (acc_counter != 3'h0) begin // @[Accumulator_Array.scala 49:35]
      acc_counter <= _acc_counter_T_1; // @[Accumulator_Array.scala 50:17]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  Acc_Buffer_0_0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  Acc_Buffer_0_1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  Acc_Buffer_0_2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  Acc_Buffer_0_3 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  Acc_Buffer_1_0 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  Acc_Buffer_1_1 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  Acc_Buffer_1_2 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  Acc_Buffer_1_3 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  Acc_Buffer_2_0 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  Acc_Buffer_2_1 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  Acc_Buffer_2_2 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  Acc_Buffer_2_3 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  Acc_Buffer_3_0 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  Acc_Buffer_3_1 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  Acc_Buffer_3_2 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  Acc_Buffer_3_3 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  Acc_Result_0_0 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  Acc_Result_0_1 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  Acc_Result_0_2 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  Acc_Result_0_3 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  Acc_Result_1_0 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  Acc_Result_1_1 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  Acc_Result_1_2 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  Acc_Result_1_3 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  Acc_Result_2_0 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  Acc_Result_2_1 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  Acc_Result_2_2 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  Acc_Result_2_3 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  Acc_Result_3_0 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  Acc_Result_3_1 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  Acc_Result_3_2 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  Acc_Result_3_3 = _RAND_31[31:0];
  _RAND_32 = {1{`RANDOM}};
  valid_counter_0 = _RAND_32[2:0];
  _RAND_33 = {1{`RANDOM}};
  valid_counter_1 = _RAND_33[2:0];
  _RAND_34 = {1{`RANDOM}};
  valid_counter_2 = _RAND_34[2:0];
  _RAND_35 = {1{`RANDOM}};
  valid_counter_3 = _RAND_35[2:0];
  _RAND_36 = {1{`RANDOM}};
  acc_counter = _RAND_36[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Mini_TPU(
  input         clock,
  input         reset,
  input         io_Compute,
  output        io_Data_x_ready,
  input         io_Data_x_valid,
  input  [7:0]  io_Data_x_bits_0,
  input  [7:0]  io_Data_x_bits_1,
  input  [7:0]  io_Data_x_bits_2,
  input  [7:0]  io_Data_x_bits_3,
  input  [7:0]  io_Data_x_bits_4,
  input  [7:0]  io_Data_x_bits_5,
  input  [7:0]  io_Data_x_bits_6,
  input  [7:0]  io_Data_x_bits_7,
  input  [7:0]  io_Data_x_bits_8,
  input  [7:0]  io_Data_x_bits_9,
  input  [7:0]  io_Data_x_bits_10,
  input  [7:0]  io_Data_x_bits_11,
  input  [7:0]  io_Data_x_bits_12,
  input  [7:0]  io_Data_x_bits_13,
  input  [7:0]  io_Data_x_bits_14,
  input  [7:0]  io_Data_x_bits_15,
  output        io_Weight_x_ready,
  input         io_Weight_x_valid,
  input  [7:0]  io_Weight_x_bits_0,
  input  [7:0]  io_Weight_x_bits_1,
  input  [7:0]  io_Weight_x_bits_2,
  input  [7:0]  io_Weight_x_bits_3,
  input  [7:0]  io_Weight_x_bits_4,
  input  [7:0]  io_Weight_x_bits_5,
  input  [7:0]  io_Weight_x_bits_6,
  input  [7:0]  io_Weight_x_bits_7,
  input  [7:0]  io_Weight_x_bits_8,
  input  [7:0]  io_Weight_x_bits_9,
  input  [7:0]  io_Weight_x_bits_10,
  input  [7:0]  io_Weight_x_bits_11,
  input  [7:0]  io_Weight_x_bits_12,
  input  [7:0]  io_Weight_x_bits_13,
  input  [7:0]  io_Weight_x_bits_14,
  input  [7:0]  io_Weight_x_bits_15,
  input         io_Sum_x_ready,
  output        io_Sum_x_valid,
  output [31:0] io_Sum_x_bits_0,
  output [31:0] io_Sum_x_bits_1,
  output [31:0] io_Sum_x_bits_2,
  output [31:0] io_Sum_x_bits_3,
  output [31:0] io_Sum_x_bits_4,
  output [31:0] io_Sum_x_bits_5,
  output [31:0] io_Sum_x_bits_6,
  output [31:0] io_Sum_x_bits_7,
  output [31:0] io_Sum_x_bits_8,
  output [31:0] io_Sum_x_bits_9,
  output [31:0] io_Sum_x_bits_10,
  output [31:0] io_Sum_x_bits_11,
  output [31:0] io_Sum_x_bits_12,
  output [31:0] io_Sum_x_bits_13,
  output [31:0] io_Sum_x_bits_14,
  output [31:0] io_Sum_x_bits_15
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  activation_buffer_clock; // @[Mini_TPU.scala 17:33]
  wire  activation_buffer_reset; // @[Mini_TPU.scala 17:33]
  wire  activation_buffer_io_wen; // @[Mini_TPU.scala 17:33]
  wire  activation_buffer_io_ren; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_0; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_1; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_2; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_3; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_4; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_5; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_6; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_7; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_8; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_9; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_10; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_11; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_12; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_13; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_14; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_in_data_x_15; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_out_activate_0; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_out_activate_1; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_out_activate_2; // @[Mini_TPU.scala 17:33]
  wire [7:0] activation_buffer_io_out_activate_3; // @[Mini_TPU.scala 17:33]
  wire  activation_buffer_io_out_flow; // @[Mini_TPU.scala 17:33]
  wire  activation_buffer_io_isfull; // @[Mini_TPU.scala 17:33]
  wire  activation_buffer_io_isempty; // @[Mini_TPU.scala 17:33]
  wire  activation_buffer_io_isdone; // @[Mini_TPU.scala 17:33]
  wire  weight_buffer_clock; // @[Mini_TPU.scala 18:29]
  wire  weight_buffer_reset; // @[Mini_TPU.scala 18:29]
  wire  weight_buffer_io_wen; // @[Mini_TPU.scala 18:29]
  wire  weight_buffer_io_ren; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_0; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_1; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_2; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_3; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_4; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_5; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_6; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_7; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_8; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_9; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_10; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_11; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_12; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_13; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_14; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_in_weight_x_15; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_out_weight_0; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_out_weight_1; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_out_weight_2; // @[Mini_TPU.scala 18:29]
  wire [7:0] weight_buffer_io_out_weight_3; // @[Mini_TPU.scala 18:29]
  wire  weight_buffer_io_out_shift; // @[Mini_TPU.scala 18:29]
  wire  weight_buffer_io_isfull; // @[Mini_TPU.scala 18:29]
  wire  weight_buffer_io_isempty; // @[Mini_TPU.scala 18:29]
  wire  weight_buffer_io_isdone; // @[Mini_TPU.scala 18:29]
  wire  systolic_array_clock; // @[Mini_TPU.scala 19:30]
  wire  systolic_array_reset; // @[Mini_TPU.scala 19:30]
  wire [7:0] systolic_array_io_activate_0; // @[Mini_TPU.scala 19:30]
  wire [7:0] systolic_array_io_activate_1; // @[Mini_TPU.scala 19:30]
  wire [7:0] systolic_array_io_activate_2; // @[Mini_TPU.scala 19:30]
  wire [7:0] systolic_array_io_activate_3; // @[Mini_TPU.scala 19:30]
  wire [7:0] systolic_array_io_weight_0; // @[Mini_TPU.scala 19:30]
  wire [7:0] systolic_array_io_weight_1; // @[Mini_TPU.scala 19:30]
  wire [7:0] systolic_array_io_weight_2; // @[Mini_TPU.scala 19:30]
  wire [7:0] systolic_array_io_weight_3; // @[Mini_TPU.scala 19:30]
  wire  systolic_array_io_flow; // @[Mini_TPU.scala 19:30]
  wire  systolic_array_io_shift; // @[Mini_TPU.scala 19:30]
  wire [15:0] systolic_array_io_psum_0; // @[Mini_TPU.scala 19:30]
  wire [15:0] systolic_array_io_psum_1; // @[Mini_TPU.scala 19:30]
  wire [15:0] systolic_array_io_psum_2; // @[Mini_TPU.scala 19:30]
  wire [15:0] systolic_array_io_psum_3; // @[Mini_TPU.scala 19:30]
  wire  systolic_array_io_valid_0; // @[Mini_TPU.scala 19:30]
  wire  systolic_array_io_valid_1; // @[Mini_TPU.scala 19:30]
  wire  systolic_array_io_valid_2; // @[Mini_TPU.scala 19:30]
  wire  systolic_array_io_valid_3; // @[Mini_TPU.scala 19:30]
  wire  accumulation_array_clock; // @[Mini_TPU.scala 20:34]
  wire  accumulation_array_reset; // @[Mini_TPU.scala 20:34]
  wire [15:0] accumulation_array_io_in_psum_0; // @[Mini_TPU.scala 20:34]
  wire [15:0] accumulation_array_io_in_psum_1; // @[Mini_TPU.scala 20:34]
  wire [15:0] accumulation_array_io_in_psum_2; // @[Mini_TPU.scala 20:34]
  wire [15:0] accumulation_array_io_in_psum_3; // @[Mini_TPU.scala 20:34]
  wire  accumulation_array_io_in_valid_0; // @[Mini_TPU.scala 20:34]
  wire  accumulation_array_io_in_valid_1; // @[Mini_TPU.scala 20:34]
  wire  accumulation_array_io_in_valid_2; // @[Mini_TPU.scala 20:34]
  wire  accumulation_array_io_in_valid_3; // @[Mini_TPU.scala 20:34]
  wire  accumulation_array_io_in_acc; // @[Mini_TPU.scala 20:34]
  wire  accumulation_array_io_in_compute_done; // @[Mini_TPU.scala 20:34]
  wire  accumulation_array_io_isdone; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_0; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_1; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_2; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_3; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_4; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_5; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_6; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_7; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_8; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_9; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_10; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_11; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_12; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_13; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_14; // @[Mini_TPU.scala 20:34]
  wire [31:0] accumulation_array_io_out_sum_15; // @[Mini_TPU.scala 20:34]
  wire  accumulation_array_io_valid; // @[Mini_TPU.scala 20:34]
  reg [2:0] stateReg; // @[Mini_TPU.scala 24:25]
  wire  _T_1 = ~activation_buffer_io_isempty; // @[Mini_TPU.scala 35:27]
  wire  _T_3 = ~weight_buffer_io_isempty; // @[Mini_TPU.scala 35:62]
  wire  _T_4 = io_Compute & ~activation_buffer_io_isempty & ~weight_buffer_io_isempty; // @[Mini_TPU.scala 35:58]
  wire  _GEN_2 = weight_buffer_io_isdone; // @[Mini_TPU.scala 27:28 44:37 45:34]
  wire  _GEN_4 = activation_buffer_io_isdone; // @[Mini_TPU.scala 29:32 53:41 54:38]
  wire [2:0] _GEN_5 = activation_buffer_io_isdone ? 3'h3 : 3'h2; // @[Mini_TPU.scala 53:41 55:18 57:18]
  wire  _T_10 = _T_1 & _T_3; // @[Mini_TPU.scala 63:46]
  wire [2:0] _GEN_7 = _T_1 & _T_3 ? 3'h1 : 3'h4; // @[Mini_TPU.scala 63:78 65:20 67:20]
  wire  _GEN_8 = accumulation_array_io_isdone & _T_10; // @[Mini_TPU.scala 28:24 62:42]
  wire [2:0] _GEN_9 = accumulation_array_io_isdone ? _GEN_7 : 3'h3; // @[Mini_TPU.scala 62:42 70:18]
  wire [2:0] _GEN_11 = 3'h4 == stateReg ? 3'h0 : stateReg; // @[Mini_TPU.scala 32:20 75:16 24:25]
  wire [2:0] _GEN_14 = 3'h3 == stateReg ? _GEN_9 : _GEN_11; // @[Mini_TPU.scala 32:20]
  wire  _GEN_15 = 3'h3 == stateReg ? 1'h0 : 3'h4 == stateReg; // @[Mini_TPU.scala 32:20 30:41]
  wire  _GEN_19 = 3'h2 == stateReg ? 1'h0 : 3'h3 == stateReg & _GEN_8; // @[Mini_TPU.scala 32:20 28:24]
  wire  _GEN_20 = 3'h2 == stateReg ? 1'h0 : _GEN_15; // @[Mini_TPU.scala 32:20 30:41]
  wire  _GEN_21 = 3'h1 == stateReg ? 1'h0 : _GEN_19; // @[Mini_TPU.scala 32:20 43:28]
  wire  _GEN_24 = 3'h1 == stateReg ? 1'h0 : 3'h2 == stateReg & _GEN_4; // @[Mini_TPU.scala 32:20 29:32]
  wire  _GEN_25 = 3'h1 == stateReg ? 1'h0 : _GEN_20; // @[Mini_TPU.scala 32:20 30:41]
  wire  _T_12 = io_Sum_x_ready & io_Sum_x_valid; // @[Decoupled.scala 52:35]
  Activation_Buffer activation_buffer ( // @[Mini_TPU.scala 17:33]
    .clock(activation_buffer_clock),
    .reset(activation_buffer_reset),
    .io_wen(activation_buffer_io_wen),
    .io_ren(activation_buffer_io_ren),
    .io_in_data_x_0(activation_buffer_io_in_data_x_0),
    .io_in_data_x_1(activation_buffer_io_in_data_x_1),
    .io_in_data_x_2(activation_buffer_io_in_data_x_2),
    .io_in_data_x_3(activation_buffer_io_in_data_x_3),
    .io_in_data_x_4(activation_buffer_io_in_data_x_4),
    .io_in_data_x_5(activation_buffer_io_in_data_x_5),
    .io_in_data_x_6(activation_buffer_io_in_data_x_6),
    .io_in_data_x_7(activation_buffer_io_in_data_x_7),
    .io_in_data_x_8(activation_buffer_io_in_data_x_8),
    .io_in_data_x_9(activation_buffer_io_in_data_x_9),
    .io_in_data_x_10(activation_buffer_io_in_data_x_10),
    .io_in_data_x_11(activation_buffer_io_in_data_x_11),
    .io_in_data_x_12(activation_buffer_io_in_data_x_12),
    .io_in_data_x_13(activation_buffer_io_in_data_x_13),
    .io_in_data_x_14(activation_buffer_io_in_data_x_14),
    .io_in_data_x_15(activation_buffer_io_in_data_x_15),
    .io_out_activate_0(activation_buffer_io_out_activate_0),
    .io_out_activate_1(activation_buffer_io_out_activate_1),
    .io_out_activate_2(activation_buffer_io_out_activate_2),
    .io_out_activate_3(activation_buffer_io_out_activate_3),
    .io_out_flow(activation_buffer_io_out_flow),
    .io_isfull(activation_buffer_io_isfull),
    .io_isempty(activation_buffer_io_isempty),
    .io_isdone(activation_buffer_io_isdone)
  );
  Weight_Buffer weight_buffer ( // @[Mini_TPU.scala 18:29]
    .clock(weight_buffer_clock),
    .reset(weight_buffer_reset),
    .io_wen(weight_buffer_io_wen),
    .io_ren(weight_buffer_io_ren),
    .io_in_weight_x_0(weight_buffer_io_in_weight_x_0),
    .io_in_weight_x_1(weight_buffer_io_in_weight_x_1),
    .io_in_weight_x_2(weight_buffer_io_in_weight_x_2),
    .io_in_weight_x_3(weight_buffer_io_in_weight_x_3),
    .io_in_weight_x_4(weight_buffer_io_in_weight_x_4),
    .io_in_weight_x_5(weight_buffer_io_in_weight_x_5),
    .io_in_weight_x_6(weight_buffer_io_in_weight_x_6),
    .io_in_weight_x_7(weight_buffer_io_in_weight_x_7),
    .io_in_weight_x_8(weight_buffer_io_in_weight_x_8),
    .io_in_weight_x_9(weight_buffer_io_in_weight_x_9),
    .io_in_weight_x_10(weight_buffer_io_in_weight_x_10),
    .io_in_weight_x_11(weight_buffer_io_in_weight_x_11),
    .io_in_weight_x_12(weight_buffer_io_in_weight_x_12),
    .io_in_weight_x_13(weight_buffer_io_in_weight_x_13),
    .io_in_weight_x_14(weight_buffer_io_in_weight_x_14),
    .io_in_weight_x_15(weight_buffer_io_in_weight_x_15),
    .io_out_weight_0(weight_buffer_io_out_weight_0),
    .io_out_weight_1(weight_buffer_io_out_weight_1),
    .io_out_weight_2(weight_buffer_io_out_weight_2),
    .io_out_weight_3(weight_buffer_io_out_weight_3),
    .io_out_shift(weight_buffer_io_out_shift),
    .io_isfull(weight_buffer_io_isfull),
    .io_isempty(weight_buffer_io_isempty),
    .io_isdone(weight_buffer_io_isdone)
  );
  Systolic_Array systolic_array ( // @[Mini_TPU.scala 19:30]
    .clock(systolic_array_clock),
    .reset(systolic_array_reset),
    .io_activate_0(systolic_array_io_activate_0),
    .io_activate_1(systolic_array_io_activate_1),
    .io_activate_2(systolic_array_io_activate_2),
    .io_activate_3(systolic_array_io_activate_3),
    .io_weight_0(systolic_array_io_weight_0),
    .io_weight_1(systolic_array_io_weight_1),
    .io_weight_2(systolic_array_io_weight_2),
    .io_weight_3(systolic_array_io_weight_3),
    .io_flow(systolic_array_io_flow),
    .io_shift(systolic_array_io_shift),
    .io_psum_0(systolic_array_io_psum_0),
    .io_psum_1(systolic_array_io_psum_1),
    .io_psum_2(systolic_array_io_psum_2),
    .io_psum_3(systolic_array_io_psum_3),
    .io_valid_0(systolic_array_io_valid_0),
    .io_valid_1(systolic_array_io_valid_1),
    .io_valid_2(systolic_array_io_valid_2),
    .io_valid_3(systolic_array_io_valid_3)
  );
  Accumulator_Array accumulation_array ( // @[Mini_TPU.scala 20:34]
    .clock(accumulation_array_clock),
    .reset(accumulation_array_reset),
    .io_in_psum_0(accumulation_array_io_in_psum_0),
    .io_in_psum_1(accumulation_array_io_in_psum_1),
    .io_in_psum_2(accumulation_array_io_in_psum_2),
    .io_in_psum_3(accumulation_array_io_in_psum_3),
    .io_in_valid_0(accumulation_array_io_in_valid_0),
    .io_in_valid_1(accumulation_array_io_in_valid_1),
    .io_in_valid_2(accumulation_array_io_in_valid_2),
    .io_in_valid_3(accumulation_array_io_in_valid_3),
    .io_in_acc(accumulation_array_io_in_acc),
    .io_in_compute_done(accumulation_array_io_in_compute_done),
    .io_isdone(accumulation_array_io_isdone),
    .io_out_sum_0(accumulation_array_io_out_sum_0),
    .io_out_sum_1(accumulation_array_io_out_sum_1),
    .io_out_sum_2(accumulation_array_io_out_sum_2),
    .io_out_sum_3(accumulation_array_io_out_sum_3),
    .io_out_sum_4(accumulation_array_io_out_sum_4),
    .io_out_sum_5(accumulation_array_io_out_sum_5),
    .io_out_sum_6(accumulation_array_io_out_sum_6),
    .io_out_sum_7(accumulation_array_io_out_sum_7),
    .io_out_sum_8(accumulation_array_io_out_sum_8),
    .io_out_sum_9(accumulation_array_io_out_sum_9),
    .io_out_sum_10(accumulation_array_io_out_sum_10),
    .io_out_sum_11(accumulation_array_io_out_sum_11),
    .io_out_sum_12(accumulation_array_io_out_sum_12),
    .io_out_sum_13(accumulation_array_io_out_sum_13),
    .io_out_sum_14(accumulation_array_io_out_sum_14),
    .io_out_sum_15(accumulation_array_io_out_sum_15),
    .io_valid(accumulation_array_io_valid)
  );
  assign io_Data_x_ready = ~activation_buffer_io_isfull; // @[Mini_TPU.scala 85:22]
  assign io_Weight_x_ready = ~weight_buffer_io_isfull; // @[Mini_TPU.scala 80:24]
  assign io_Sum_x_valid = accumulation_array_io_valid; // @[Mini_TPU.scala 90:18]
  assign io_Sum_x_bits_0 = _T_12 ? accumulation_array_io_out_sum_0 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_1 = _T_12 ? accumulation_array_io_out_sum_1 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_2 = _T_12 ? accumulation_array_io_out_sum_2 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_3 = _T_12 ? accumulation_array_io_out_sum_3 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_4 = _T_12 ? accumulation_array_io_out_sum_4 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_5 = _T_12 ? accumulation_array_io_out_sum_5 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_6 = _T_12 ? accumulation_array_io_out_sum_6 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_7 = _T_12 ? accumulation_array_io_out_sum_7 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_8 = _T_12 ? accumulation_array_io_out_sum_8 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_9 = _T_12 ? accumulation_array_io_out_sum_9 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_10 = _T_12 ? accumulation_array_io_out_sum_10 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_11 = _T_12 ? accumulation_array_io_out_sum_11 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_12 = _T_12 ? accumulation_array_io_out_sum_12 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_13 = _T_12 ? accumulation_array_io_out_sum_13 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_14 = _T_12 ? accumulation_array_io_out_sum_14 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign io_Sum_x_bits_15 = _T_12 ? accumulation_array_io_out_sum_15 : 32'h0; // @[Mini_TPU.scala 91:24 92:19 94:19]
  assign activation_buffer_clock = clock;
  assign activation_buffer_reset = reset;
  assign activation_buffer_io_wen = io_Data_x_valid; // @[Mini_TPU.scala 86:28]
  assign activation_buffer_io_ren = 3'h0 == stateReg ? 1'h0 : 3'h1 == stateReg & _GEN_2; // @[Mini_TPU.scala 32:20 27:28]
  assign activation_buffer_io_in_data_x_0 = io_Data_x_bits_0; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_1 = io_Data_x_bits_1; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_2 = io_Data_x_bits_2; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_3 = io_Data_x_bits_3; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_4 = io_Data_x_bits_4; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_5 = io_Data_x_bits_5; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_6 = io_Data_x_bits_6; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_7 = io_Data_x_bits_7; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_8 = io_Data_x_bits_8; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_9 = io_Data_x_bits_9; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_10 = io_Data_x_bits_10; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_11 = io_Data_x_bits_11; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_12 = io_Data_x_bits_12; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_13 = io_Data_x_bits_13; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_14 = io_Data_x_bits_14; // @[Mini_TPU.scala 87:34]
  assign activation_buffer_io_in_data_x_15 = io_Data_x_bits_15; // @[Mini_TPU.scala 87:34]
  assign weight_buffer_clock = clock;
  assign weight_buffer_reset = reset;
  assign weight_buffer_io_wen = io_Weight_x_valid; // @[Mini_TPU.scala 81:24]
  assign weight_buffer_io_ren = 3'h0 == stateReg ? _T_4 : _GEN_21; // @[Mini_TPU.scala 32:20]
  assign weight_buffer_io_in_weight_x_0 = io_Weight_x_bits_0; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_1 = io_Weight_x_bits_1; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_2 = io_Weight_x_bits_2; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_3 = io_Weight_x_bits_3; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_4 = io_Weight_x_bits_4; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_5 = io_Weight_x_bits_5; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_6 = io_Weight_x_bits_6; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_7 = io_Weight_x_bits_7; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_8 = io_Weight_x_bits_8; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_9 = io_Weight_x_bits_9; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_10 = io_Weight_x_bits_10; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_11 = io_Weight_x_bits_11; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_12 = io_Weight_x_bits_12; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_13 = io_Weight_x_bits_13; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_14 = io_Weight_x_bits_14; // @[Mini_TPU.scala 82:32]
  assign weight_buffer_io_in_weight_x_15 = io_Weight_x_bits_15; // @[Mini_TPU.scala 82:32]
  assign systolic_array_clock = clock;
  assign systolic_array_reset = reset;
  assign systolic_array_io_activate_0 = activation_buffer_io_out_activate_0; // @[Mini_TPU.scala 99:30]
  assign systolic_array_io_activate_1 = activation_buffer_io_out_activate_1; // @[Mini_TPU.scala 99:30]
  assign systolic_array_io_activate_2 = activation_buffer_io_out_activate_2; // @[Mini_TPU.scala 99:30]
  assign systolic_array_io_activate_3 = activation_buffer_io_out_activate_3; // @[Mini_TPU.scala 99:30]
  assign systolic_array_io_weight_0 = weight_buffer_io_out_weight_0; // @[Mini_TPU.scala 103:28]
  assign systolic_array_io_weight_1 = weight_buffer_io_out_weight_1; // @[Mini_TPU.scala 103:28]
  assign systolic_array_io_weight_2 = weight_buffer_io_out_weight_2; // @[Mini_TPU.scala 103:28]
  assign systolic_array_io_weight_3 = weight_buffer_io_out_weight_3; // @[Mini_TPU.scala 103:28]
  assign systolic_array_io_flow = activation_buffer_io_out_flow; // @[Mini_TPU.scala 98:26]
  assign systolic_array_io_shift = weight_buffer_io_out_shift; // @[Mini_TPU.scala 102:27]
  assign accumulation_array_clock = clock;
  assign accumulation_array_reset = reset;
  assign accumulation_array_io_in_psum_0 = systolic_array_io_psum_0; // @[Mini_TPU.scala 107:33]
  assign accumulation_array_io_in_psum_1 = systolic_array_io_psum_1; // @[Mini_TPU.scala 107:33]
  assign accumulation_array_io_in_psum_2 = systolic_array_io_psum_2; // @[Mini_TPU.scala 107:33]
  assign accumulation_array_io_in_psum_3 = systolic_array_io_psum_3; // @[Mini_TPU.scala 107:33]
  assign accumulation_array_io_in_valid_0 = systolic_array_io_valid_0; // @[Mini_TPU.scala 106:34]
  assign accumulation_array_io_in_valid_1 = systolic_array_io_valid_1; // @[Mini_TPU.scala 106:34]
  assign accumulation_array_io_in_valid_2 = systolic_array_io_valid_2; // @[Mini_TPU.scala 106:34]
  assign accumulation_array_io_in_valid_3 = systolic_array_io_valid_3; // @[Mini_TPU.scala 106:34]
  assign accumulation_array_io_in_acc = 3'h0 == stateReg ? 1'h0 : _GEN_24; // @[Mini_TPU.scala 32:20 29:32]
  assign accumulation_array_io_in_compute_done = 3'h0 == stateReg ? 1'h0 : _GEN_25; // @[Mini_TPU.scala 32:20 34:45]
  always @(posedge clock) begin
    if (reset) begin // @[Mini_TPU.scala 24:25]
      stateReg <= 3'h0; // @[Mini_TPU.scala 24:25]
    end else if (3'h0 == stateReg) begin // @[Mini_TPU.scala 32:20]
      if (io_Compute & ~activation_buffer_io_isempty & ~weight_buffer_io_isempty) begin // @[Mini_TPU.scala 35:90]
        stateReg <= 3'h1; // @[Mini_TPU.scala 37:18]
      end else begin
        stateReg <= 3'h0; // @[Mini_TPU.scala 39:18]
      end
    end else if (3'h1 == stateReg) begin // @[Mini_TPU.scala 32:20]
      if (weight_buffer_io_isdone) begin // @[Mini_TPU.scala 44:37]
        stateReg <= 3'h2; // @[Mini_TPU.scala 46:18]
      end else begin
        stateReg <= 3'h1; // @[Mini_TPU.scala 48:18]
      end
    end else if (3'h2 == stateReg) begin // @[Mini_TPU.scala 32:20]
      stateReg <= _GEN_5;
    end else begin
      stateReg <= _GEN_14;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  stateReg = _RAND_0[2:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
