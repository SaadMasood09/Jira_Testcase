// -----------------------------------------------------------------------------
// Auto-Generated by:        __   _ __      _  __
//                          / /  (_) /____ | |/_/
//                         / /__/ / __/ -_)>  <
//                        /____/_/\__/\__/_/|_|
//                     Build your hardware, easily!
//                   https://github.com/enjoy-digital/litex
//
// Filename   : FIR_generator.v
// Device     : gemini
// LiteX sha1 : a6d9955c
// Date       : 2023-12-08 10:16:42
//------------------------------------------------------------------------------
// This file is Copyright (c) 2022 RapidSilicon
//--------------------------------------------------------------------------------

`timescale 1ns / 1ps

//------------------------------------------------------------------------------
// Module
//------------------------------------------------------------------------------

module FIR_generator #(
	parameter IP_TYPE 		= "FIRGEN",
	parameter IP_VERSION 	= 32'h1, 
	parameter IP_ID 		= 32'h28ca42a
)
(
    input  wire   [17:0] data_in,
    output wire   [37:0] data_out,
    input  wire          clk,
    input  wire          rst
);


//------------------------------------------------------------------------------
// Signals
//------------------------------------------------------------------------------

wire          sys_clk;
wire          sys_rst;
wire   [17:0] data_in_1;
wire   [37:0] data_out_1;
wire   [17:0] delay_b_0;
wire   [37:0] z_0;
wire   [17:0] delay_b_1;
wire   [37:0] z_1;
wire   [17:0] delay_b_2;
wire   [37:0] z_2;

//------------------------------------------------------------------------------
// Combinatorial Logic
//------------------------------------------------------------------------------

assign data_in_1 = data_in;
assign data_out = data_out_1;
assign sys_clk = clk;
assign sys_rst = rst;


//------------------------------------------------------------------------------
// Synchronous Logic
//------------------------------------------------------------------------------


//------------------------------------------------------------------------------
// Specialized Logic
//------------------------------------------------------------------------------

DSP38 #(
	.COEFF_0(2'd2),
	.DSP_MODE("MULTIPLY_ADD_SUB"),
	.INPUT_REG_EN("TRUE"),
	.OUTPUT_REG_EN("TRUE")
) DSP38 (
	.A(20'd0),
	.ACC_FIR(6'd0),
	.B(data_in_1),
	.CLK(sys_clk),
	.FEEDBACK(3'd4),
	.LOAD_ACC(1'd1),
	.RESET(sys_rst),
	.ROUND(1'd0),
	.SATURATE(1'd0),
	.SHIFT_RIGHT(6'd0),
	.SUBTRACT(1'd0),
	.UNSIGNED_A(1'd1),
	.UNSIGNED_B(1'd1),
	.DLY_B(delay_b_0),
	.Z(z_0)
);

DSP38 #(
	.COEFF_0(3'd4),
	.DSP_MODE("MULTIPLY_ADD_SUB"),
	.INPUT_REG_EN("TRUE"),
	.OUTPUT_REG_EN("TRUE")
) DSP38_1 (
	.A(z_0[19:0]),
	.ACC_FIR(6'd0),
	.B(delay_b_0),
	.CLK(sys_clk),
	.FEEDBACK(3'd4),
	.LOAD_ACC(1'd1),
	.RESET(sys_rst),
	.ROUND(1'd0),
	.SATURATE(1'd0),
	.SHIFT_RIGHT(6'd0),
	.SUBTRACT(1'd0),
	.UNSIGNED_A(1'd1),
	.UNSIGNED_B(1'd1),
	.DLY_B(delay_b_1),
	.Z(z_1)
);

DSP38 #(
	.COEFF_0(3'd4),
	.DSP_MODE("MULTIPLY_ADD_SUB"),
	.INPUT_REG_EN("TRUE"),
	.OUTPUT_REG_EN("TRUE")
) DSP38_2 (
	.A(z_1[19:0]),
	.ACC_FIR(6'd0),
	.B(delay_b_1),
	.CLK(sys_clk),
	.FEEDBACK(3'd4),
	.LOAD_ACC(1'd1),
	.RESET(sys_rst),
	.ROUND(1'd0),
	.SATURATE(1'd0),
	.SHIFT_RIGHT(6'd0),
	.SUBTRACT(1'd0),
	.UNSIGNED_A(1'd1),
	.UNSIGNED_B(1'd1),
	.DLY_B(delay_b_2),
	.Z(z_2)
);

DSP38 #(
	.COEFF_0(2'd2),
	.DSP_MODE("MULTIPLY_ADD_SUB"),
	.INPUT_REG_EN("TRUE"),
	.OUTPUT_REG_EN("FALSE")
) DSP38_3 (
	.A(z_2[19:0]),
	.ACC_FIR(6'd0),
	.B(delay_b_2),
	.CLK(sys_clk),
	.FEEDBACK(3'd4),
	.LOAD_ACC(1'd1),
	.RESET(sys_rst),
	.ROUND(1'd0),
	.SATURATE(1'd0),
	.SHIFT_RIGHT(6'd0),
	.SUBTRACT(1'd0),
	.UNSIGNED_A(1'd1),
	.UNSIGNED_B(1'd1),
	.Z(data_out_1)
);

endmodule

// -----------------------------------------------------------------------------
//  Auto-Generated by LiteX on 2023-12-08 10:16:42.
//------------------------------------------------------------------------------
