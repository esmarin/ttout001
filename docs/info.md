<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

The project is implementing a 4-bit adder using 4 1-bit full-adders

## How to test

The inputs to the adder are 4-bits. So I use the lower 4-bits of the inputs (ui_in[3:0])
for one 4-bit input and the higher 4-bits (ui_in[7:4]) for the other input.
There is an additional input (cin) that uses the pin uio_in[0] .
The output to the adder is using the bit uo_out[4:0] , 4-bits for the output (uo_out[3:0])
and 1-bit for the carry out (uo_out[4]).

To test, just provide inputs and check the outputs. Read the test files for this
project for an example.


## External hardware
There is no external hardware.
