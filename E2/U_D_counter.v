// megafunction wizard: %LPM_COUNTER%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_COUNTER 

// ============================================================
// File Name: U_D_counter.v
// Megafunction Name(s):
// 			LPM_COUNTER
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.1.0 Build 162 10/23/2013 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2013 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module U_D_counter (
	aclr,
	clock,
	cnt_en,
	updown,
	q);

	input	  aclr;
	input	  clock;
	input	  cnt_en;
	input	  updown;
	output	[3:0]  q;

	wire [3:0] sub_wire0;
	wire [3:0] q = sub_wire0[3:0];

	lpm_counter	LPM_COUNTER_component (
				.aclr (aclr),
				.clock (clock),
				.cnt_en (cnt_en),
				.updown (updown),
				.q (sub_wire0),
				.aload (1'b0),
				.aset (1'b0),
				.cin (1'b1),
				.clk_en (1'b1),
				.cout (),
				.data ({4{1'b0}}),
				.eq (),
				.sclr (1'b0),
				.sload (1'b0),
				.sset (1'b0));
	defparam
		LPM_COUNTER_component.lpm_direction = "UNUSED",
		LPM_COUNTER_component.lpm_port_updown = "PORT_USED",
		LPM_COUNTER_component.lpm_type = "LPM_COUNTER",
		LPM_COUNTER_component.lpm_width = 4;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ACLR NUMERIC "1"
// Retrieval info: PRIVATE: ALOAD NUMERIC "0"
// Retrieval info: PRIVATE: ASET NUMERIC "0"
// Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: CLK_EN NUMERIC "0"
// Retrieval info: PRIVATE: CNT_EN NUMERIC "1"
// Retrieval info: PRIVATE: CarryIn NUMERIC "0"
// Retrieval info: PRIVATE: CarryOut NUMERIC "0"
// Retrieval info: PRIVATE: Direction NUMERIC "2"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV GX"
// Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
// Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
// Retrieval info: PRIVATE: SCLR NUMERIC "0"
// Retrieval info: PRIVATE: SLOAD NUMERIC "0"
// Retrieval info: PRIVATE: SSET NUMERIC "0"
// Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: nBit NUMERIC "4"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_DIRECTION STRING "UNUSED"
// Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_USED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "4"
// Retrieval info: USED_PORT: aclr 0 0 0 0 INPUT NODEFVAL "aclr"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: cnt_en 0 0 0 0 INPUT NODEFVAL "cnt_en"
// Retrieval info: USED_PORT: q 0 0 4 0 OUTPUT NODEFVAL "q[3..0]"
// Retrieval info: USED_PORT: updown 0 0 0 0 INPUT NODEFVAL "updown"
// Retrieval info: CONNECT: @aclr 0 0 0 0 aclr 0 0 0 0
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @cnt_en 0 0 0 0 cnt_en 0 0 0 0
// Retrieval info: CONNECT: @updown 0 0 0 0 updown 0 0 0 0
// Retrieval info: CONNECT: q 0 0 4 0 @q 0 0 4 0
// Retrieval info: GEN_FILE: TYPE_NORMAL U_D_counter.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL U_D_counter.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL U_D_counter.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL U_D_counter.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL U_D_counter_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL U_D_counter_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
