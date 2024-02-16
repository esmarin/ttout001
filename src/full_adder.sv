module full_adder (
	input  logic a, b, cin,
	output logic sum, cout);

	// p and g are called internal variables, because they 
    // are neither inputs nor outputs but are used only 
    // internal to the module.
    logic p, g;

    // assignment statements (assign in SystemVerilog) 
    // take place concurrently.
    // Like hardware, HDL assignment statements are evaluated any time 
    // the inputs, signals on the right hand side, change their value, 
    // regardless of the order in which the assignment statements 
    // appear in a module.
    assign p =a ^ b;
    assign g =a & b;
    assign sum  = p ^ cin;
    assign cout = g | (p & cin);


endmodule
