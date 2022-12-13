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
  input  [7:0]  io_activate_4,
  input  [7:0]  io_activate_5,
  input  [7:0]  io_activate_6,
  input  [7:0]  io_activate_7,
  input  [7:0]  io_weight_0,
  input  [7:0]  io_weight_1,
  input  [7:0]  io_weight_2,
  input  [7:0]  io_weight_3,
  input  [7:0]  io_weight_4,
  input  [7:0]  io_weight_5,
  input  [7:0]  io_weight_6,
  input  [7:0]  io_weight_7,
  input         io_flow,
  input         io_shift,
  output [15:0] io_psum_0,
  output [15:0] io_psum_1,
  output [15:0] io_psum_2,
  output [15:0] io_psum_3,
  output [15:0] io_psum_4,
  output [15:0] io_psum_5,
  output [15:0] io_psum_6,
  output [15:0] io_psum_7,
  output        io_valid_0,
  output        io_valid_1,
  output        io_valid_2,
  output        io_valid_3,
  output        io_valid_4,
  output        io_valid_5,
  output        io_valid_6,
  output        io_valid_7
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
  wire  PE_Array_0_4_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_4_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_4_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_4_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_4_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_4_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_4_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_4_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_4_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_4_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_5_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_5_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_5_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_5_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_5_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_5_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_5_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_5_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_5_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_5_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_6_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_6_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_6_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_6_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_6_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_6_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_6_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_6_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_6_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_6_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_7_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_7_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_7_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_7_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_7_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_7_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_0_7_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_7_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_0_7_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_0_7_io_out_psum; // @[Systolic_Array.scala 19:62]
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
  wire  PE_Array_1_4_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_4_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_4_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_4_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_4_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_4_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_4_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_4_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_4_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_4_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_5_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_5_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_5_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_5_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_5_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_5_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_5_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_5_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_5_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_5_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_6_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_6_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_6_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_6_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_6_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_6_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_6_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_6_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_6_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_6_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_7_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_7_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_7_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_7_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_7_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_7_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_1_7_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_7_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_1_7_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_1_7_io_out_psum; // @[Systolic_Array.scala 19:62]
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
  wire  PE_Array_2_4_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_4_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_4_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_4_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_4_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_4_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_4_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_4_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_4_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_4_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_5_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_5_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_5_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_5_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_5_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_5_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_5_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_5_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_5_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_5_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_6_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_6_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_6_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_6_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_6_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_6_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_6_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_6_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_6_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_6_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_7_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_7_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_7_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_7_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_7_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_7_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_2_7_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_7_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_2_7_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_2_7_io_out_psum; // @[Systolic_Array.scala 19:62]
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
  wire  PE_Array_3_4_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_4_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_4_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_4_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_4_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_4_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_4_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_4_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_4_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_4_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_5_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_5_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_5_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_5_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_5_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_5_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_5_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_5_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_5_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_5_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_6_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_6_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_6_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_6_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_6_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_6_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_6_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_6_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_6_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_6_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_7_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_7_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_7_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_7_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_7_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_7_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_3_7_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_7_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_3_7_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_3_7_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_0_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_0_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_0_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_0_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_0_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_0_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_0_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_0_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_0_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_0_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_1_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_1_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_1_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_1_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_1_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_1_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_1_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_1_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_1_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_1_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_2_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_2_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_2_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_2_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_2_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_2_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_2_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_2_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_2_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_2_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_3_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_3_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_3_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_3_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_3_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_3_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_3_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_3_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_3_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_3_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_4_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_4_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_4_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_4_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_4_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_4_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_4_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_4_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_4_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_4_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_5_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_5_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_5_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_5_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_5_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_5_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_5_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_5_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_5_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_5_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_6_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_6_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_6_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_6_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_6_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_6_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_6_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_6_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_6_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_6_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_7_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_7_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_7_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_7_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_7_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_7_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_4_7_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_7_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_4_7_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_4_7_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_0_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_0_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_0_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_0_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_0_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_0_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_0_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_0_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_0_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_0_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_1_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_1_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_1_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_1_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_1_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_1_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_1_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_1_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_1_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_1_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_2_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_2_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_2_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_2_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_2_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_2_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_2_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_2_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_2_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_2_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_3_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_3_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_3_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_3_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_3_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_3_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_3_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_3_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_3_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_3_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_4_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_4_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_4_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_4_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_4_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_4_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_4_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_4_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_4_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_4_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_5_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_5_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_5_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_5_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_5_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_5_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_5_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_5_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_5_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_5_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_6_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_6_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_6_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_6_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_6_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_6_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_6_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_6_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_6_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_6_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_7_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_7_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_7_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_7_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_7_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_7_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_5_7_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_7_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_5_7_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_5_7_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_0_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_0_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_0_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_0_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_0_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_0_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_0_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_0_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_0_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_0_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_1_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_1_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_1_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_1_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_1_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_1_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_1_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_1_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_1_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_1_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_2_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_2_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_2_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_2_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_2_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_2_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_2_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_2_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_2_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_2_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_3_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_3_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_3_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_3_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_3_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_3_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_3_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_3_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_3_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_3_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_4_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_4_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_4_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_4_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_4_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_4_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_4_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_4_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_4_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_4_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_5_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_5_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_5_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_5_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_5_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_5_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_5_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_5_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_5_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_5_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_6_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_6_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_6_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_6_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_6_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_6_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_6_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_6_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_6_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_6_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_7_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_7_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_7_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_7_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_7_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_7_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_6_7_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_7_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_6_7_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_6_7_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_0_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_0_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_0_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_0_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_0_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_0_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_0_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_0_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_0_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_0_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_1_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_1_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_1_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_1_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_1_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_1_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_1_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_1_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_1_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_1_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_2_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_2_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_2_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_2_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_2_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_2_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_2_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_2_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_2_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_2_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_3_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_3_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_3_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_3_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_3_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_3_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_3_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_3_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_3_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_3_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_4_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_4_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_4_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_4_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_4_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_4_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_4_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_4_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_4_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_4_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_5_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_5_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_5_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_5_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_5_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_5_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_5_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_5_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_5_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_5_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_6_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_6_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_6_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_6_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_6_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_6_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_6_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_6_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_6_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_6_io_out_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_7_clock; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_7_reset; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_7_io_in_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_7_io_in_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_7_io_in_psum; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_7_io_in_flow; // @[Systolic_Array.scala 19:62]
  wire  PE_Array_7_7_io_in_shift; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_7_io_out_activate; // @[Systolic_Array.scala 19:62]
  wire [7:0] PE_Array_7_7_io_out_weight; // @[Systolic_Array.scala 19:62]
  wire [15:0] PE_Array_7_7_io_out_psum; // @[Systolic_Array.scala 19:62]
  reg [4:0] flow_counter; // @[Systolic_Array.scala 52:29]
  reg [7:0] valid_reg; // @[Systolic_Array.scala 53:26]
  wire [4:0] _flow_counter_T_1 = flow_counter + 5'h1; // @[Systolic_Array.scala 57:34]
  wire [7:0] _valid_reg_T_1 = {valid_reg[6:0],1'h1}; // @[Cat.scala 33:92]
  wire [7:0] _valid_reg_T_3 = {valid_reg[6:0],1'h0}; // @[Cat.scala 33:92]
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
  basic_PE PE_Array_0_4 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_0_4_clock),
    .reset(PE_Array_0_4_reset),
    .io_in_activate(PE_Array_0_4_io_in_activate),
    .io_in_weight(PE_Array_0_4_io_in_weight),
    .io_in_psum(PE_Array_0_4_io_in_psum),
    .io_in_flow(PE_Array_0_4_io_in_flow),
    .io_in_shift(PE_Array_0_4_io_in_shift),
    .io_out_activate(PE_Array_0_4_io_out_activate),
    .io_out_weight(PE_Array_0_4_io_out_weight),
    .io_out_psum(PE_Array_0_4_io_out_psum)
  );
  basic_PE PE_Array_0_5 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_0_5_clock),
    .reset(PE_Array_0_5_reset),
    .io_in_activate(PE_Array_0_5_io_in_activate),
    .io_in_weight(PE_Array_0_5_io_in_weight),
    .io_in_psum(PE_Array_0_5_io_in_psum),
    .io_in_flow(PE_Array_0_5_io_in_flow),
    .io_in_shift(PE_Array_0_5_io_in_shift),
    .io_out_activate(PE_Array_0_5_io_out_activate),
    .io_out_weight(PE_Array_0_5_io_out_weight),
    .io_out_psum(PE_Array_0_5_io_out_psum)
  );
  basic_PE PE_Array_0_6 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_0_6_clock),
    .reset(PE_Array_0_6_reset),
    .io_in_activate(PE_Array_0_6_io_in_activate),
    .io_in_weight(PE_Array_0_6_io_in_weight),
    .io_in_psum(PE_Array_0_6_io_in_psum),
    .io_in_flow(PE_Array_0_6_io_in_flow),
    .io_in_shift(PE_Array_0_6_io_in_shift),
    .io_out_activate(PE_Array_0_6_io_out_activate),
    .io_out_weight(PE_Array_0_6_io_out_weight),
    .io_out_psum(PE_Array_0_6_io_out_psum)
  );
  basic_PE PE_Array_0_7 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_0_7_clock),
    .reset(PE_Array_0_7_reset),
    .io_in_activate(PE_Array_0_7_io_in_activate),
    .io_in_weight(PE_Array_0_7_io_in_weight),
    .io_in_psum(PE_Array_0_7_io_in_psum),
    .io_in_flow(PE_Array_0_7_io_in_flow),
    .io_in_shift(PE_Array_0_7_io_in_shift),
    .io_out_activate(PE_Array_0_7_io_out_activate),
    .io_out_weight(PE_Array_0_7_io_out_weight),
    .io_out_psum(PE_Array_0_7_io_out_psum)
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
  basic_PE PE_Array_1_4 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_1_4_clock),
    .reset(PE_Array_1_4_reset),
    .io_in_activate(PE_Array_1_4_io_in_activate),
    .io_in_weight(PE_Array_1_4_io_in_weight),
    .io_in_psum(PE_Array_1_4_io_in_psum),
    .io_in_flow(PE_Array_1_4_io_in_flow),
    .io_in_shift(PE_Array_1_4_io_in_shift),
    .io_out_activate(PE_Array_1_4_io_out_activate),
    .io_out_weight(PE_Array_1_4_io_out_weight),
    .io_out_psum(PE_Array_1_4_io_out_psum)
  );
  basic_PE PE_Array_1_5 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_1_5_clock),
    .reset(PE_Array_1_5_reset),
    .io_in_activate(PE_Array_1_5_io_in_activate),
    .io_in_weight(PE_Array_1_5_io_in_weight),
    .io_in_psum(PE_Array_1_5_io_in_psum),
    .io_in_flow(PE_Array_1_5_io_in_flow),
    .io_in_shift(PE_Array_1_5_io_in_shift),
    .io_out_activate(PE_Array_1_5_io_out_activate),
    .io_out_weight(PE_Array_1_5_io_out_weight),
    .io_out_psum(PE_Array_1_5_io_out_psum)
  );
  basic_PE PE_Array_1_6 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_1_6_clock),
    .reset(PE_Array_1_6_reset),
    .io_in_activate(PE_Array_1_6_io_in_activate),
    .io_in_weight(PE_Array_1_6_io_in_weight),
    .io_in_psum(PE_Array_1_6_io_in_psum),
    .io_in_flow(PE_Array_1_6_io_in_flow),
    .io_in_shift(PE_Array_1_6_io_in_shift),
    .io_out_activate(PE_Array_1_6_io_out_activate),
    .io_out_weight(PE_Array_1_6_io_out_weight),
    .io_out_psum(PE_Array_1_6_io_out_psum)
  );
  basic_PE PE_Array_1_7 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_1_7_clock),
    .reset(PE_Array_1_7_reset),
    .io_in_activate(PE_Array_1_7_io_in_activate),
    .io_in_weight(PE_Array_1_7_io_in_weight),
    .io_in_psum(PE_Array_1_7_io_in_psum),
    .io_in_flow(PE_Array_1_7_io_in_flow),
    .io_in_shift(PE_Array_1_7_io_in_shift),
    .io_out_activate(PE_Array_1_7_io_out_activate),
    .io_out_weight(PE_Array_1_7_io_out_weight),
    .io_out_psum(PE_Array_1_7_io_out_psum)
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
  basic_PE PE_Array_2_4 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_2_4_clock),
    .reset(PE_Array_2_4_reset),
    .io_in_activate(PE_Array_2_4_io_in_activate),
    .io_in_weight(PE_Array_2_4_io_in_weight),
    .io_in_psum(PE_Array_2_4_io_in_psum),
    .io_in_flow(PE_Array_2_4_io_in_flow),
    .io_in_shift(PE_Array_2_4_io_in_shift),
    .io_out_activate(PE_Array_2_4_io_out_activate),
    .io_out_weight(PE_Array_2_4_io_out_weight),
    .io_out_psum(PE_Array_2_4_io_out_psum)
  );
  basic_PE PE_Array_2_5 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_2_5_clock),
    .reset(PE_Array_2_5_reset),
    .io_in_activate(PE_Array_2_5_io_in_activate),
    .io_in_weight(PE_Array_2_5_io_in_weight),
    .io_in_psum(PE_Array_2_5_io_in_psum),
    .io_in_flow(PE_Array_2_5_io_in_flow),
    .io_in_shift(PE_Array_2_5_io_in_shift),
    .io_out_activate(PE_Array_2_5_io_out_activate),
    .io_out_weight(PE_Array_2_5_io_out_weight),
    .io_out_psum(PE_Array_2_5_io_out_psum)
  );
  basic_PE PE_Array_2_6 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_2_6_clock),
    .reset(PE_Array_2_6_reset),
    .io_in_activate(PE_Array_2_6_io_in_activate),
    .io_in_weight(PE_Array_2_6_io_in_weight),
    .io_in_psum(PE_Array_2_6_io_in_psum),
    .io_in_flow(PE_Array_2_6_io_in_flow),
    .io_in_shift(PE_Array_2_6_io_in_shift),
    .io_out_activate(PE_Array_2_6_io_out_activate),
    .io_out_weight(PE_Array_2_6_io_out_weight),
    .io_out_psum(PE_Array_2_6_io_out_psum)
  );
  basic_PE PE_Array_2_7 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_2_7_clock),
    .reset(PE_Array_2_7_reset),
    .io_in_activate(PE_Array_2_7_io_in_activate),
    .io_in_weight(PE_Array_2_7_io_in_weight),
    .io_in_psum(PE_Array_2_7_io_in_psum),
    .io_in_flow(PE_Array_2_7_io_in_flow),
    .io_in_shift(PE_Array_2_7_io_in_shift),
    .io_out_activate(PE_Array_2_7_io_out_activate),
    .io_out_weight(PE_Array_2_7_io_out_weight),
    .io_out_psum(PE_Array_2_7_io_out_psum)
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
  basic_PE PE_Array_3_4 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_3_4_clock),
    .reset(PE_Array_3_4_reset),
    .io_in_activate(PE_Array_3_4_io_in_activate),
    .io_in_weight(PE_Array_3_4_io_in_weight),
    .io_in_psum(PE_Array_3_4_io_in_psum),
    .io_in_flow(PE_Array_3_4_io_in_flow),
    .io_in_shift(PE_Array_3_4_io_in_shift),
    .io_out_activate(PE_Array_3_4_io_out_activate),
    .io_out_weight(PE_Array_3_4_io_out_weight),
    .io_out_psum(PE_Array_3_4_io_out_psum)
  );
  basic_PE PE_Array_3_5 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_3_5_clock),
    .reset(PE_Array_3_5_reset),
    .io_in_activate(PE_Array_3_5_io_in_activate),
    .io_in_weight(PE_Array_3_5_io_in_weight),
    .io_in_psum(PE_Array_3_5_io_in_psum),
    .io_in_flow(PE_Array_3_5_io_in_flow),
    .io_in_shift(PE_Array_3_5_io_in_shift),
    .io_out_activate(PE_Array_3_5_io_out_activate),
    .io_out_weight(PE_Array_3_5_io_out_weight),
    .io_out_psum(PE_Array_3_5_io_out_psum)
  );
  basic_PE PE_Array_3_6 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_3_6_clock),
    .reset(PE_Array_3_6_reset),
    .io_in_activate(PE_Array_3_6_io_in_activate),
    .io_in_weight(PE_Array_3_6_io_in_weight),
    .io_in_psum(PE_Array_3_6_io_in_psum),
    .io_in_flow(PE_Array_3_6_io_in_flow),
    .io_in_shift(PE_Array_3_6_io_in_shift),
    .io_out_activate(PE_Array_3_6_io_out_activate),
    .io_out_weight(PE_Array_3_6_io_out_weight),
    .io_out_psum(PE_Array_3_6_io_out_psum)
  );
  basic_PE PE_Array_3_7 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_3_7_clock),
    .reset(PE_Array_3_7_reset),
    .io_in_activate(PE_Array_3_7_io_in_activate),
    .io_in_weight(PE_Array_3_7_io_in_weight),
    .io_in_psum(PE_Array_3_7_io_in_psum),
    .io_in_flow(PE_Array_3_7_io_in_flow),
    .io_in_shift(PE_Array_3_7_io_in_shift),
    .io_out_activate(PE_Array_3_7_io_out_activate),
    .io_out_weight(PE_Array_3_7_io_out_weight),
    .io_out_psum(PE_Array_3_7_io_out_psum)
  );
  basic_PE PE_Array_4_0 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_4_0_clock),
    .reset(PE_Array_4_0_reset),
    .io_in_activate(PE_Array_4_0_io_in_activate),
    .io_in_weight(PE_Array_4_0_io_in_weight),
    .io_in_psum(PE_Array_4_0_io_in_psum),
    .io_in_flow(PE_Array_4_0_io_in_flow),
    .io_in_shift(PE_Array_4_0_io_in_shift),
    .io_out_activate(PE_Array_4_0_io_out_activate),
    .io_out_weight(PE_Array_4_0_io_out_weight),
    .io_out_psum(PE_Array_4_0_io_out_psum)
  );
  basic_PE PE_Array_4_1 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_4_1_clock),
    .reset(PE_Array_4_1_reset),
    .io_in_activate(PE_Array_4_1_io_in_activate),
    .io_in_weight(PE_Array_4_1_io_in_weight),
    .io_in_psum(PE_Array_4_1_io_in_psum),
    .io_in_flow(PE_Array_4_1_io_in_flow),
    .io_in_shift(PE_Array_4_1_io_in_shift),
    .io_out_activate(PE_Array_4_1_io_out_activate),
    .io_out_weight(PE_Array_4_1_io_out_weight),
    .io_out_psum(PE_Array_4_1_io_out_psum)
  );
  basic_PE PE_Array_4_2 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_4_2_clock),
    .reset(PE_Array_4_2_reset),
    .io_in_activate(PE_Array_4_2_io_in_activate),
    .io_in_weight(PE_Array_4_2_io_in_weight),
    .io_in_psum(PE_Array_4_2_io_in_psum),
    .io_in_flow(PE_Array_4_2_io_in_flow),
    .io_in_shift(PE_Array_4_2_io_in_shift),
    .io_out_activate(PE_Array_4_2_io_out_activate),
    .io_out_weight(PE_Array_4_2_io_out_weight),
    .io_out_psum(PE_Array_4_2_io_out_psum)
  );
  basic_PE PE_Array_4_3 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_4_3_clock),
    .reset(PE_Array_4_3_reset),
    .io_in_activate(PE_Array_4_3_io_in_activate),
    .io_in_weight(PE_Array_4_3_io_in_weight),
    .io_in_psum(PE_Array_4_3_io_in_psum),
    .io_in_flow(PE_Array_4_3_io_in_flow),
    .io_in_shift(PE_Array_4_3_io_in_shift),
    .io_out_activate(PE_Array_4_3_io_out_activate),
    .io_out_weight(PE_Array_4_3_io_out_weight),
    .io_out_psum(PE_Array_4_3_io_out_psum)
  );
  basic_PE PE_Array_4_4 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_4_4_clock),
    .reset(PE_Array_4_4_reset),
    .io_in_activate(PE_Array_4_4_io_in_activate),
    .io_in_weight(PE_Array_4_4_io_in_weight),
    .io_in_psum(PE_Array_4_4_io_in_psum),
    .io_in_flow(PE_Array_4_4_io_in_flow),
    .io_in_shift(PE_Array_4_4_io_in_shift),
    .io_out_activate(PE_Array_4_4_io_out_activate),
    .io_out_weight(PE_Array_4_4_io_out_weight),
    .io_out_psum(PE_Array_4_4_io_out_psum)
  );
  basic_PE PE_Array_4_5 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_4_5_clock),
    .reset(PE_Array_4_5_reset),
    .io_in_activate(PE_Array_4_5_io_in_activate),
    .io_in_weight(PE_Array_4_5_io_in_weight),
    .io_in_psum(PE_Array_4_5_io_in_psum),
    .io_in_flow(PE_Array_4_5_io_in_flow),
    .io_in_shift(PE_Array_4_5_io_in_shift),
    .io_out_activate(PE_Array_4_5_io_out_activate),
    .io_out_weight(PE_Array_4_5_io_out_weight),
    .io_out_psum(PE_Array_4_5_io_out_psum)
  );
  basic_PE PE_Array_4_6 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_4_6_clock),
    .reset(PE_Array_4_6_reset),
    .io_in_activate(PE_Array_4_6_io_in_activate),
    .io_in_weight(PE_Array_4_6_io_in_weight),
    .io_in_psum(PE_Array_4_6_io_in_psum),
    .io_in_flow(PE_Array_4_6_io_in_flow),
    .io_in_shift(PE_Array_4_6_io_in_shift),
    .io_out_activate(PE_Array_4_6_io_out_activate),
    .io_out_weight(PE_Array_4_6_io_out_weight),
    .io_out_psum(PE_Array_4_6_io_out_psum)
  );
  basic_PE PE_Array_4_7 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_4_7_clock),
    .reset(PE_Array_4_7_reset),
    .io_in_activate(PE_Array_4_7_io_in_activate),
    .io_in_weight(PE_Array_4_7_io_in_weight),
    .io_in_psum(PE_Array_4_7_io_in_psum),
    .io_in_flow(PE_Array_4_7_io_in_flow),
    .io_in_shift(PE_Array_4_7_io_in_shift),
    .io_out_activate(PE_Array_4_7_io_out_activate),
    .io_out_weight(PE_Array_4_7_io_out_weight),
    .io_out_psum(PE_Array_4_7_io_out_psum)
  );
  basic_PE PE_Array_5_0 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_5_0_clock),
    .reset(PE_Array_5_0_reset),
    .io_in_activate(PE_Array_5_0_io_in_activate),
    .io_in_weight(PE_Array_5_0_io_in_weight),
    .io_in_psum(PE_Array_5_0_io_in_psum),
    .io_in_flow(PE_Array_5_0_io_in_flow),
    .io_in_shift(PE_Array_5_0_io_in_shift),
    .io_out_activate(PE_Array_5_0_io_out_activate),
    .io_out_weight(PE_Array_5_0_io_out_weight),
    .io_out_psum(PE_Array_5_0_io_out_psum)
  );
  basic_PE PE_Array_5_1 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_5_1_clock),
    .reset(PE_Array_5_1_reset),
    .io_in_activate(PE_Array_5_1_io_in_activate),
    .io_in_weight(PE_Array_5_1_io_in_weight),
    .io_in_psum(PE_Array_5_1_io_in_psum),
    .io_in_flow(PE_Array_5_1_io_in_flow),
    .io_in_shift(PE_Array_5_1_io_in_shift),
    .io_out_activate(PE_Array_5_1_io_out_activate),
    .io_out_weight(PE_Array_5_1_io_out_weight),
    .io_out_psum(PE_Array_5_1_io_out_psum)
  );
  basic_PE PE_Array_5_2 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_5_2_clock),
    .reset(PE_Array_5_2_reset),
    .io_in_activate(PE_Array_5_2_io_in_activate),
    .io_in_weight(PE_Array_5_2_io_in_weight),
    .io_in_psum(PE_Array_5_2_io_in_psum),
    .io_in_flow(PE_Array_5_2_io_in_flow),
    .io_in_shift(PE_Array_5_2_io_in_shift),
    .io_out_activate(PE_Array_5_2_io_out_activate),
    .io_out_weight(PE_Array_5_2_io_out_weight),
    .io_out_psum(PE_Array_5_2_io_out_psum)
  );
  basic_PE PE_Array_5_3 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_5_3_clock),
    .reset(PE_Array_5_3_reset),
    .io_in_activate(PE_Array_5_3_io_in_activate),
    .io_in_weight(PE_Array_5_3_io_in_weight),
    .io_in_psum(PE_Array_5_3_io_in_psum),
    .io_in_flow(PE_Array_5_3_io_in_flow),
    .io_in_shift(PE_Array_5_3_io_in_shift),
    .io_out_activate(PE_Array_5_3_io_out_activate),
    .io_out_weight(PE_Array_5_3_io_out_weight),
    .io_out_psum(PE_Array_5_3_io_out_psum)
  );
  basic_PE PE_Array_5_4 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_5_4_clock),
    .reset(PE_Array_5_4_reset),
    .io_in_activate(PE_Array_5_4_io_in_activate),
    .io_in_weight(PE_Array_5_4_io_in_weight),
    .io_in_psum(PE_Array_5_4_io_in_psum),
    .io_in_flow(PE_Array_5_4_io_in_flow),
    .io_in_shift(PE_Array_5_4_io_in_shift),
    .io_out_activate(PE_Array_5_4_io_out_activate),
    .io_out_weight(PE_Array_5_4_io_out_weight),
    .io_out_psum(PE_Array_5_4_io_out_psum)
  );
  basic_PE PE_Array_5_5 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_5_5_clock),
    .reset(PE_Array_5_5_reset),
    .io_in_activate(PE_Array_5_5_io_in_activate),
    .io_in_weight(PE_Array_5_5_io_in_weight),
    .io_in_psum(PE_Array_5_5_io_in_psum),
    .io_in_flow(PE_Array_5_5_io_in_flow),
    .io_in_shift(PE_Array_5_5_io_in_shift),
    .io_out_activate(PE_Array_5_5_io_out_activate),
    .io_out_weight(PE_Array_5_5_io_out_weight),
    .io_out_psum(PE_Array_5_5_io_out_psum)
  );
  basic_PE PE_Array_5_6 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_5_6_clock),
    .reset(PE_Array_5_6_reset),
    .io_in_activate(PE_Array_5_6_io_in_activate),
    .io_in_weight(PE_Array_5_6_io_in_weight),
    .io_in_psum(PE_Array_5_6_io_in_psum),
    .io_in_flow(PE_Array_5_6_io_in_flow),
    .io_in_shift(PE_Array_5_6_io_in_shift),
    .io_out_activate(PE_Array_5_6_io_out_activate),
    .io_out_weight(PE_Array_5_6_io_out_weight),
    .io_out_psum(PE_Array_5_6_io_out_psum)
  );
  basic_PE PE_Array_5_7 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_5_7_clock),
    .reset(PE_Array_5_7_reset),
    .io_in_activate(PE_Array_5_7_io_in_activate),
    .io_in_weight(PE_Array_5_7_io_in_weight),
    .io_in_psum(PE_Array_5_7_io_in_psum),
    .io_in_flow(PE_Array_5_7_io_in_flow),
    .io_in_shift(PE_Array_5_7_io_in_shift),
    .io_out_activate(PE_Array_5_7_io_out_activate),
    .io_out_weight(PE_Array_5_7_io_out_weight),
    .io_out_psum(PE_Array_5_7_io_out_psum)
  );
  basic_PE PE_Array_6_0 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_6_0_clock),
    .reset(PE_Array_6_0_reset),
    .io_in_activate(PE_Array_6_0_io_in_activate),
    .io_in_weight(PE_Array_6_0_io_in_weight),
    .io_in_psum(PE_Array_6_0_io_in_psum),
    .io_in_flow(PE_Array_6_0_io_in_flow),
    .io_in_shift(PE_Array_6_0_io_in_shift),
    .io_out_activate(PE_Array_6_0_io_out_activate),
    .io_out_weight(PE_Array_6_0_io_out_weight),
    .io_out_psum(PE_Array_6_0_io_out_psum)
  );
  basic_PE PE_Array_6_1 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_6_1_clock),
    .reset(PE_Array_6_1_reset),
    .io_in_activate(PE_Array_6_1_io_in_activate),
    .io_in_weight(PE_Array_6_1_io_in_weight),
    .io_in_psum(PE_Array_6_1_io_in_psum),
    .io_in_flow(PE_Array_6_1_io_in_flow),
    .io_in_shift(PE_Array_6_1_io_in_shift),
    .io_out_activate(PE_Array_6_1_io_out_activate),
    .io_out_weight(PE_Array_6_1_io_out_weight),
    .io_out_psum(PE_Array_6_1_io_out_psum)
  );
  basic_PE PE_Array_6_2 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_6_2_clock),
    .reset(PE_Array_6_2_reset),
    .io_in_activate(PE_Array_6_2_io_in_activate),
    .io_in_weight(PE_Array_6_2_io_in_weight),
    .io_in_psum(PE_Array_6_2_io_in_psum),
    .io_in_flow(PE_Array_6_2_io_in_flow),
    .io_in_shift(PE_Array_6_2_io_in_shift),
    .io_out_activate(PE_Array_6_2_io_out_activate),
    .io_out_weight(PE_Array_6_2_io_out_weight),
    .io_out_psum(PE_Array_6_2_io_out_psum)
  );
  basic_PE PE_Array_6_3 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_6_3_clock),
    .reset(PE_Array_6_3_reset),
    .io_in_activate(PE_Array_6_3_io_in_activate),
    .io_in_weight(PE_Array_6_3_io_in_weight),
    .io_in_psum(PE_Array_6_3_io_in_psum),
    .io_in_flow(PE_Array_6_3_io_in_flow),
    .io_in_shift(PE_Array_6_3_io_in_shift),
    .io_out_activate(PE_Array_6_3_io_out_activate),
    .io_out_weight(PE_Array_6_3_io_out_weight),
    .io_out_psum(PE_Array_6_3_io_out_psum)
  );
  basic_PE PE_Array_6_4 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_6_4_clock),
    .reset(PE_Array_6_4_reset),
    .io_in_activate(PE_Array_6_4_io_in_activate),
    .io_in_weight(PE_Array_6_4_io_in_weight),
    .io_in_psum(PE_Array_6_4_io_in_psum),
    .io_in_flow(PE_Array_6_4_io_in_flow),
    .io_in_shift(PE_Array_6_4_io_in_shift),
    .io_out_activate(PE_Array_6_4_io_out_activate),
    .io_out_weight(PE_Array_6_4_io_out_weight),
    .io_out_psum(PE_Array_6_4_io_out_psum)
  );
  basic_PE PE_Array_6_5 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_6_5_clock),
    .reset(PE_Array_6_5_reset),
    .io_in_activate(PE_Array_6_5_io_in_activate),
    .io_in_weight(PE_Array_6_5_io_in_weight),
    .io_in_psum(PE_Array_6_5_io_in_psum),
    .io_in_flow(PE_Array_6_5_io_in_flow),
    .io_in_shift(PE_Array_6_5_io_in_shift),
    .io_out_activate(PE_Array_6_5_io_out_activate),
    .io_out_weight(PE_Array_6_5_io_out_weight),
    .io_out_psum(PE_Array_6_5_io_out_psum)
  );
  basic_PE PE_Array_6_6 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_6_6_clock),
    .reset(PE_Array_6_6_reset),
    .io_in_activate(PE_Array_6_6_io_in_activate),
    .io_in_weight(PE_Array_6_6_io_in_weight),
    .io_in_psum(PE_Array_6_6_io_in_psum),
    .io_in_flow(PE_Array_6_6_io_in_flow),
    .io_in_shift(PE_Array_6_6_io_in_shift),
    .io_out_activate(PE_Array_6_6_io_out_activate),
    .io_out_weight(PE_Array_6_6_io_out_weight),
    .io_out_psum(PE_Array_6_6_io_out_psum)
  );
  basic_PE PE_Array_6_7 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_6_7_clock),
    .reset(PE_Array_6_7_reset),
    .io_in_activate(PE_Array_6_7_io_in_activate),
    .io_in_weight(PE_Array_6_7_io_in_weight),
    .io_in_psum(PE_Array_6_7_io_in_psum),
    .io_in_flow(PE_Array_6_7_io_in_flow),
    .io_in_shift(PE_Array_6_7_io_in_shift),
    .io_out_activate(PE_Array_6_7_io_out_activate),
    .io_out_weight(PE_Array_6_7_io_out_weight),
    .io_out_psum(PE_Array_6_7_io_out_psum)
  );
  basic_PE PE_Array_7_0 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_7_0_clock),
    .reset(PE_Array_7_0_reset),
    .io_in_activate(PE_Array_7_0_io_in_activate),
    .io_in_weight(PE_Array_7_0_io_in_weight),
    .io_in_psum(PE_Array_7_0_io_in_psum),
    .io_in_flow(PE_Array_7_0_io_in_flow),
    .io_in_shift(PE_Array_7_0_io_in_shift),
    .io_out_activate(PE_Array_7_0_io_out_activate),
    .io_out_weight(PE_Array_7_0_io_out_weight),
    .io_out_psum(PE_Array_7_0_io_out_psum)
  );
  basic_PE PE_Array_7_1 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_7_1_clock),
    .reset(PE_Array_7_1_reset),
    .io_in_activate(PE_Array_7_1_io_in_activate),
    .io_in_weight(PE_Array_7_1_io_in_weight),
    .io_in_psum(PE_Array_7_1_io_in_psum),
    .io_in_flow(PE_Array_7_1_io_in_flow),
    .io_in_shift(PE_Array_7_1_io_in_shift),
    .io_out_activate(PE_Array_7_1_io_out_activate),
    .io_out_weight(PE_Array_7_1_io_out_weight),
    .io_out_psum(PE_Array_7_1_io_out_psum)
  );
  basic_PE PE_Array_7_2 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_7_2_clock),
    .reset(PE_Array_7_2_reset),
    .io_in_activate(PE_Array_7_2_io_in_activate),
    .io_in_weight(PE_Array_7_2_io_in_weight),
    .io_in_psum(PE_Array_7_2_io_in_psum),
    .io_in_flow(PE_Array_7_2_io_in_flow),
    .io_in_shift(PE_Array_7_2_io_in_shift),
    .io_out_activate(PE_Array_7_2_io_out_activate),
    .io_out_weight(PE_Array_7_2_io_out_weight),
    .io_out_psum(PE_Array_7_2_io_out_psum)
  );
  basic_PE PE_Array_7_3 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_7_3_clock),
    .reset(PE_Array_7_3_reset),
    .io_in_activate(PE_Array_7_3_io_in_activate),
    .io_in_weight(PE_Array_7_3_io_in_weight),
    .io_in_psum(PE_Array_7_3_io_in_psum),
    .io_in_flow(PE_Array_7_3_io_in_flow),
    .io_in_shift(PE_Array_7_3_io_in_shift),
    .io_out_activate(PE_Array_7_3_io_out_activate),
    .io_out_weight(PE_Array_7_3_io_out_weight),
    .io_out_psum(PE_Array_7_3_io_out_psum)
  );
  basic_PE PE_Array_7_4 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_7_4_clock),
    .reset(PE_Array_7_4_reset),
    .io_in_activate(PE_Array_7_4_io_in_activate),
    .io_in_weight(PE_Array_7_4_io_in_weight),
    .io_in_psum(PE_Array_7_4_io_in_psum),
    .io_in_flow(PE_Array_7_4_io_in_flow),
    .io_in_shift(PE_Array_7_4_io_in_shift),
    .io_out_activate(PE_Array_7_4_io_out_activate),
    .io_out_weight(PE_Array_7_4_io_out_weight),
    .io_out_psum(PE_Array_7_4_io_out_psum)
  );
  basic_PE PE_Array_7_5 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_7_5_clock),
    .reset(PE_Array_7_5_reset),
    .io_in_activate(PE_Array_7_5_io_in_activate),
    .io_in_weight(PE_Array_7_5_io_in_weight),
    .io_in_psum(PE_Array_7_5_io_in_psum),
    .io_in_flow(PE_Array_7_5_io_in_flow),
    .io_in_shift(PE_Array_7_5_io_in_shift),
    .io_out_activate(PE_Array_7_5_io_out_activate),
    .io_out_weight(PE_Array_7_5_io_out_weight),
    .io_out_psum(PE_Array_7_5_io_out_psum)
  );
  basic_PE PE_Array_7_6 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_7_6_clock),
    .reset(PE_Array_7_6_reset),
    .io_in_activate(PE_Array_7_6_io_in_activate),
    .io_in_weight(PE_Array_7_6_io_in_weight),
    .io_in_psum(PE_Array_7_6_io_in_psum),
    .io_in_flow(PE_Array_7_6_io_in_flow),
    .io_in_shift(PE_Array_7_6_io_in_shift),
    .io_out_activate(PE_Array_7_6_io_out_activate),
    .io_out_weight(PE_Array_7_6_io_out_weight),
    .io_out_psum(PE_Array_7_6_io_out_psum)
  );
  basic_PE PE_Array_7_7 ( // @[Systolic_Array.scala 19:62]
    .clock(PE_Array_7_7_clock),
    .reset(PE_Array_7_7_reset),
    .io_in_activate(PE_Array_7_7_io_in_activate),
    .io_in_weight(PE_Array_7_7_io_in_weight),
    .io_in_psum(PE_Array_7_7_io_in_psum),
    .io_in_flow(PE_Array_7_7_io_in_flow),
    .io_in_shift(PE_Array_7_7_io_in_shift),
    .io_out_activate(PE_Array_7_7_io_out_activate),
    .io_out_weight(PE_Array_7_7_io_out_weight),
    .io_out_psum(PE_Array_7_7_io_out_psum)
  );
  assign io_psum_0 = PE_Array_7_0_io_out_psum; // @[DataPath.scala 24:10]
  assign io_psum_1 = PE_Array_7_1_io_out_psum; // @[DataPath.scala 24:10]
  assign io_psum_2 = PE_Array_7_2_io_out_psum; // @[DataPath.scala 24:10]
  assign io_psum_3 = PE_Array_7_3_io_out_psum; // @[DataPath.scala 24:10]
  assign io_psum_4 = PE_Array_7_4_io_out_psum; // @[DataPath.scala 24:10]
  assign io_psum_5 = PE_Array_7_5_io_out_psum; // @[DataPath.scala 24:10]
  assign io_psum_6 = PE_Array_7_6_io_out_psum; // @[DataPath.scala 24:10]
  assign io_psum_7 = PE_Array_7_7_io_out_psum; // @[DataPath.scala 24:10]
  assign io_valid_0 = valid_reg[0]; // @[Systolic_Array.scala 73:33]
  assign io_valid_1 = valid_reg[1]; // @[Systolic_Array.scala 73:33]
  assign io_valid_2 = valid_reg[2]; // @[Systolic_Array.scala 73:33]
  assign io_valid_3 = valid_reg[3]; // @[Systolic_Array.scala 73:33]
  assign io_valid_4 = valid_reg[4]; // @[Systolic_Array.scala 73:33]
  assign io_valid_5 = valid_reg[5]; // @[Systolic_Array.scala 73:33]
  assign io_valid_6 = valid_reg[6]; // @[Systolic_Array.scala 73:33]
  assign io_valid_7 = valid_reg[7]; // @[Systolic_Array.scala 73:33]
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
  assign PE_Array_0_4_clock = clock;
  assign PE_Array_0_4_reset = reset;
  assign PE_Array_0_4_io_in_activate = PE_Array_0_3_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_0_4_io_in_weight = io_weight_4; // @[DataPath.scala 20:23]
  assign PE_Array_0_4_io_in_psum = 16'h0; // @[DataPath.scala 21:21]
  assign PE_Array_0_4_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_0_4_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_0_5_clock = clock;
  assign PE_Array_0_5_reset = reset;
  assign PE_Array_0_5_io_in_activate = PE_Array_0_4_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_0_5_io_in_weight = io_weight_5; // @[DataPath.scala 20:23]
  assign PE_Array_0_5_io_in_psum = 16'h0; // @[DataPath.scala 21:21]
  assign PE_Array_0_5_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_0_5_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_0_6_clock = clock;
  assign PE_Array_0_6_reset = reset;
  assign PE_Array_0_6_io_in_activate = PE_Array_0_5_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_0_6_io_in_weight = io_weight_6; // @[DataPath.scala 20:23]
  assign PE_Array_0_6_io_in_psum = 16'h0; // @[DataPath.scala 21:21]
  assign PE_Array_0_6_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_0_6_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_0_7_clock = clock;
  assign PE_Array_0_7_reset = reset;
  assign PE_Array_0_7_io_in_activate = PE_Array_0_6_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_0_7_io_in_weight = io_weight_7; // @[DataPath.scala 20:23]
  assign PE_Array_0_7_io_in_psum = 16'h0; // @[DataPath.scala 21:21]
  assign PE_Array_0_7_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_0_7_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
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
  assign PE_Array_1_4_clock = clock;
  assign PE_Array_1_4_reset = reset;
  assign PE_Array_1_4_io_in_activate = PE_Array_1_3_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_1_4_io_in_weight = PE_Array_0_4_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_1_4_io_in_psum = PE_Array_0_4_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_1_4_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_1_4_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_1_5_clock = clock;
  assign PE_Array_1_5_reset = reset;
  assign PE_Array_1_5_io_in_activate = PE_Array_1_4_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_1_5_io_in_weight = PE_Array_0_5_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_1_5_io_in_psum = PE_Array_0_5_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_1_5_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_1_5_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_1_6_clock = clock;
  assign PE_Array_1_6_reset = reset;
  assign PE_Array_1_6_io_in_activate = PE_Array_1_5_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_1_6_io_in_weight = PE_Array_0_6_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_1_6_io_in_psum = PE_Array_0_6_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_1_6_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_1_6_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_1_7_clock = clock;
  assign PE_Array_1_7_reset = reset;
  assign PE_Array_1_7_io_in_activate = PE_Array_1_6_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_1_7_io_in_weight = PE_Array_0_7_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_1_7_io_in_psum = PE_Array_0_7_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_1_7_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_1_7_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
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
  assign PE_Array_2_4_clock = clock;
  assign PE_Array_2_4_reset = reset;
  assign PE_Array_2_4_io_in_activate = PE_Array_2_3_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_2_4_io_in_weight = PE_Array_1_4_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_2_4_io_in_psum = PE_Array_1_4_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_2_4_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_2_4_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_2_5_clock = clock;
  assign PE_Array_2_5_reset = reset;
  assign PE_Array_2_5_io_in_activate = PE_Array_2_4_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_2_5_io_in_weight = PE_Array_1_5_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_2_5_io_in_psum = PE_Array_1_5_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_2_5_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_2_5_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_2_6_clock = clock;
  assign PE_Array_2_6_reset = reset;
  assign PE_Array_2_6_io_in_activate = PE_Array_2_5_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_2_6_io_in_weight = PE_Array_1_6_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_2_6_io_in_psum = PE_Array_1_6_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_2_6_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_2_6_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_2_7_clock = clock;
  assign PE_Array_2_7_reset = reset;
  assign PE_Array_2_7_io_in_activate = PE_Array_2_6_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_2_7_io_in_weight = PE_Array_1_7_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_2_7_io_in_psum = PE_Array_1_7_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_2_7_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_2_7_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
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
  assign PE_Array_3_4_clock = clock;
  assign PE_Array_3_4_reset = reset;
  assign PE_Array_3_4_io_in_activate = PE_Array_3_3_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_3_4_io_in_weight = PE_Array_2_4_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_3_4_io_in_psum = PE_Array_2_4_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_3_4_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_3_4_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_3_5_clock = clock;
  assign PE_Array_3_5_reset = reset;
  assign PE_Array_3_5_io_in_activate = PE_Array_3_4_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_3_5_io_in_weight = PE_Array_2_5_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_3_5_io_in_psum = PE_Array_2_5_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_3_5_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_3_5_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_3_6_clock = clock;
  assign PE_Array_3_6_reset = reset;
  assign PE_Array_3_6_io_in_activate = PE_Array_3_5_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_3_6_io_in_weight = PE_Array_2_6_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_3_6_io_in_psum = PE_Array_2_6_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_3_6_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_3_6_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_3_7_clock = clock;
  assign PE_Array_3_7_reset = reset;
  assign PE_Array_3_7_io_in_activate = PE_Array_3_6_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_3_7_io_in_weight = PE_Array_2_7_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_3_7_io_in_psum = PE_Array_2_7_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_3_7_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_3_7_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_4_0_clock = clock;
  assign PE_Array_4_0_reset = reset;
  assign PE_Array_4_0_io_in_activate = io_activate_4; // @[DataPath.scala 11:26]
  assign PE_Array_4_0_io_in_weight = PE_Array_3_0_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_4_0_io_in_psum = PE_Array_3_0_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_4_0_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_4_0_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_4_1_clock = clock;
  assign PE_Array_4_1_reset = reset;
  assign PE_Array_4_1_io_in_activate = PE_Array_4_0_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_4_1_io_in_weight = PE_Array_3_1_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_4_1_io_in_psum = PE_Array_3_1_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_4_1_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_4_1_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_4_2_clock = clock;
  assign PE_Array_4_2_reset = reset;
  assign PE_Array_4_2_io_in_activate = PE_Array_4_1_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_4_2_io_in_weight = PE_Array_3_2_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_4_2_io_in_psum = PE_Array_3_2_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_4_2_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_4_2_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_4_3_clock = clock;
  assign PE_Array_4_3_reset = reset;
  assign PE_Array_4_3_io_in_activate = PE_Array_4_2_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_4_3_io_in_weight = PE_Array_3_3_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_4_3_io_in_psum = PE_Array_3_3_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_4_3_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_4_3_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_4_4_clock = clock;
  assign PE_Array_4_4_reset = reset;
  assign PE_Array_4_4_io_in_activate = PE_Array_4_3_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_4_4_io_in_weight = PE_Array_3_4_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_4_4_io_in_psum = PE_Array_3_4_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_4_4_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_4_4_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_4_5_clock = clock;
  assign PE_Array_4_5_reset = reset;
  assign PE_Array_4_5_io_in_activate = PE_Array_4_4_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_4_5_io_in_weight = PE_Array_3_5_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_4_5_io_in_psum = PE_Array_3_5_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_4_5_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_4_5_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_4_6_clock = clock;
  assign PE_Array_4_6_reset = reset;
  assign PE_Array_4_6_io_in_activate = PE_Array_4_5_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_4_6_io_in_weight = PE_Array_3_6_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_4_6_io_in_psum = PE_Array_3_6_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_4_6_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_4_6_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_4_7_clock = clock;
  assign PE_Array_4_7_reset = reset;
  assign PE_Array_4_7_io_in_activate = PE_Array_4_6_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_4_7_io_in_weight = PE_Array_3_7_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_4_7_io_in_psum = PE_Array_3_7_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_4_7_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_4_7_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_5_0_clock = clock;
  assign PE_Array_5_0_reset = reset;
  assign PE_Array_5_0_io_in_activate = io_activate_5; // @[DataPath.scala 11:26]
  assign PE_Array_5_0_io_in_weight = PE_Array_4_0_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_5_0_io_in_psum = PE_Array_4_0_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_5_0_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_5_0_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_5_1_clock = clock;
  assign PE_Array_5_1_reset = reset;
  assign PE_Array_5_1_io_in_activate = PE_Array_5_0_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_5_1_io_in_weight = PE_Array_4_1_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_5_1_io_in_psum = PE_Array_4_1_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_5_1_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_5_1_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_5_2_clock = clock;
  assign PE_Array_5_2_reset = reset;
  assign PE_Array_5_2_io_in_activate = PE_Array_5_1_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_5_2_io_in_weight = PE_Array_4_2_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_5_2_io_in_psum = PE_Array_4_2_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_5_2_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_5_2_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_5_3_clock = clock;
  assign PE_Array_5_3_reset = reset;
  assign PE_Array_5_3_io_in_activate = PE_Array_5_2_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_5_3_io_in_weight = PE_Array_4_3_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_5_3_io_in_psum = PE_Array_4_3_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_5_3_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_5_3_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_5_4_clock = clock;
  assign PE_Array_5_4_reset = reset;
  assign PE_Array_5_4_io_in_activate = PE_Array_5_3_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_5_4_io_in_weight = PE_Array_4_4_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_5_4_io_in_psum = PE_Array_4_4_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_5_4_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_5_4_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_5_5_clock = clock;
  assign PE_Array_5_5_reset = reset;
  assign PE_Array_5_5_io_in_activate = PE_Array_5_4_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_5_5_io_in_weight = PE_Array_4_5_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_5_5_io_in_psum = PE_Array_4_5_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_5_5_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_5_5_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_5_6_clock = clock;
  assign PE_Array_5_6_reset = reset;
  assign PE_Array_5_6_io_in_activate = PE_Array_5_5_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_5_6_io_in_weight = PE_Array_4_6_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_5_6_io_in_psum = PE_Array_4_6_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_5_6_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_5_6_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_5_7_clock = clock;
  assign PE_Array_5_7_reset = reset;
  assign PE_Array_5_7_io_in_activate = PE_Array_5_6_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_5_7_io_in_weight = PE_Array_4_7_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_5_7_io_in_psum = PE_Array_4_7_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_5_7_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_5_7_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_6_0_clock = clock;
  assign PE_Array_6_0_reset = reset;
  assign PE_Array_6_0_io_in_activate = io_activate_6; // @[DataPath.scala 11:26]
  assign PE_Array_6_0_io_in_weight = PE_Array_5_0_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_6_0_io_in_psum = PE_Array_5_0_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_6_0_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_6_0_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_6_1_clock = clock;
  assign PE_Array_6_1_reset = reset;
  assign PE_Array_6_1_io_in_activate = PE_Array_6_0_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_6_1_io_in_weight = PE_Array_5_1_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_6_1_io_in_psum = PE_Array_5_1_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_6_1_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_6_1_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_6_2_clock = clock;
  assign PE_Array_6_2_reset = reset;
  assign PE_Array_6_2_io_in_activate = PE_Array_6_1_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_6_2_io_in_weight = PE_Array_5_2_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_6_2_io_in_psum = PE_Array_5_2_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_6_2_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_6_2_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_6_3_clock = clock;
  assign PE_Array_6_3_reset = reset;
  assign PE_Array_6_3_io_in_activate = PE_Array_6_2_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_6_3_io_in_weight = PE_Array_5_3_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_6_3_io_in_psum = PE_Array_5_3_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_6_3_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_6_3_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_6_4_clock = clock;
  assign PE_Array_6_4_reset = reset;
  assign PE_Array_6_4_io_in_activate = PE_Array_6_3_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_6_4_io_in_weight = PE_Array_5_4_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_6_4_io_in_psum = PE_Array_5_4_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_6_4_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_6_4_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_6_5_clock = clock;
  assign PE_Array_6_5_reset = reset;
  assign PE_Array_6_5_io_in_activate = PE_Array_6_4_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_6_5_io_in_weight = PE_Array_5_5_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_6_5_io_in_psum = PE_Array_5_5_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_6_5_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_6_5_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_6_6_clock = clock;
  assign PE_Array_6_6_reset = reset;
  assign PE_Array_6_6_io_in_activate = PE_Array_6_5_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_6_6_io_in_weight = PE_Array_5_6_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_6_6_io_in_psum = PE_Array_5_6_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_6_6_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_6_6_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_6_7_clock = clock;
  assign PE_Array_6_7_reset = reset;
  assign PE_Array_6_7_io_in_activate = PE_Array_6_6_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_6_7_io_in_weight = PE_Array_5_7_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_6_7_io_in_psum = PE_Array_5_7_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_6_7_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_6_7_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_7_0_clock = clock;
  assign PE_Array_7_0_reset = reset;
  assign PE_Array_7_0_io_in_activate = io_activate_7; // @[DataPath.scala 11:26]
  assign PE_Array_7_0_io_in_weight = PE_Array_6_0_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_7_0_io_in_psum = PE_Array_6_0_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_7_0_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_7_0_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_7_1_clock = clock;
  assign PE_Array_7_1_reset = reset;
  assign PE_Array_7_1_io_in_activate = PE_Array_7_0_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_7_1_io_in_weight = PE_Array_6_1_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_7_1_io_in_psum = PE_Array_6_1_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_7_1_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_7_1_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_7_2_clock = clock;
  assign PE_Array_7_2_reset = reset;
  assign PE_Array_7_2_io_in_activate = PE_Array_7_1_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_7_2_io_in_weight = PE_Array_6_2_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_7_2_io_in_psum = PE_Array_6_2_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_7_2_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_7_2_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_7_3_clock = clock;
  assign PE_Array_7_3_reset = reset;
  assign PE_Array_7_3_io_in_activate = PE_Array_7_2_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_7_3_io_in_weight = PE_Array_6_3_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_7_3_io_in_psum = PE_Array_6_3_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_7_3_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_7_3_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_7_4_clock = clock;
  assign PE_Array_7_4_reset = reset;
  assign PE_Array_7_4_io_in_activate = PE_Array_7_3_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_7_4_io_in_weight = PE_Array_6_4_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_7_4_io_in_psum = PE_Array_6_4_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_7_4_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_7_4_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_7_5_clock = clock;
  assign PE_Array_7_5_reset = reset;
  assign PE_Array_7_5_io_in_activate = PE_Array_7_4_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_7_5_io_in_weight = PE_Array_6_5_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_7_5_io_in_psum = PE_Array_6_5_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_7_5_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_7_5_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_7_6_clock = clock;
  assign PE_Array_7_6_reset = reset;
  assign PE_Array_7_6_io_in_activate = PE_Array_7_5_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_7_6_io_in_weight = PE_Array_6_6_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_7_6_io_in_psum = PE_Array_6_6_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_7_6_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_7_6_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  assign PE_Array_7_7_clock = clock;
  assign PE_Array_7_7_reset = reset;
  assign PE_Array_7_7_io_in_activate = PE_Array_7_6_io_out_activate; // @[DataPath.scala 7:26]
  assign PE_Array_7_7_io_in_weight = PE_Array_6_7_io_out_weight; // @[DataPath.scala 15:23]
  assign PE_Array_7_7_io_in_psum = PE_Array_6_7_io_out_psum; // @[DataPath.scala 16:21]
  assign PE_Array_7_7_io_in_flow = io_flow; // @[Systolic_Array.scala 22:54]
  assign PE_Array_7_7_io_in_shift = io_shift; // @[Systolic_Array.scala 23:55]
  always @(posedge clock) begin
    if (reset) begin // @[Systolic_Array.scala 52:29]
      flow_counter <= 5'h0; // @[Systolic_Array.scala 52:29]
    end else if (io_flow & flow_counter < 5'h16) begin // @[Systolic_Array.scala 56:58]
      flow_counter <= _flow_counter_T_1; // @[Systolic_Array.scala 57:18]
    end else if (flow_counter == 5'h16) begin // @[Systolic_Array.scala 58:53]
      flow_counter <= 5'h0; // @[Systolic_Array.scala 59:18]
    end
    if (reset) begin // @[Systolic_Array.scala 53:26]
      valid_reg <= 8'h0; // @[Systolic_Array.scala 53:26]
    end else if (io_flow & 5'h7 <= flow_counter & flow_counter < 5'hf) begin // @[Systolic_Array.scala 65:96]
      valid_reg <= _valid_reg_T_1; // @[Systolic_Array.scala 66:15]
    end else if (io_flow & flow_counter >= 5'hf) begin // @[Systolic_Array.scala 67:65]
      valid_reg <= _valid_reg_T_3; // @[Systolic_Array.scala 68:15]
    end else begin
      valid_reg <= 8'h0; // @[Systolic_Array.scala 70:15]
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
  flow_counter = _RAND_0[4:0];
  _RAND_1 = {1{`RANDOM}};
  valid_reg = _RAND_1[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
