/*
 * Copyright (c) 2023 esmarin
 * SPDX-License-Identifier: Apache-2.0
 */

`define default_netname none

module tt_um_esmarin (
	// The top module has to have this input/output definition.
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);
    // use bidirectional pins 4 for output(1) and 4  for input (0)
    assign uio_oe = 8'11110000

    // internal signals used in this module
    logic c1, c2, c3;

    // instantiate 1-bit full-adders
    full_adder FA0(ui_in[0], ui_in[4], uio_in[0], uo_out[0], c1);
    full_adder FA1(ui_in[1], ui_in[5], c1,        uo_out[1], c2);
    full_adder FA2(ui_in[2], ui_in[6], c2,        uo_out[2], c3);
    full_adder FA3(ui_in[3], ui_in[7], c3,        ou_out[3], ou_out[4]);

    // All output pins must be assigned. If not used, assign to 0.
    assign uo_out [7:5] = 0;
    assign uio_out[7:4] = 0;
    assign uio_en [7:4] = 0;


endmodule
