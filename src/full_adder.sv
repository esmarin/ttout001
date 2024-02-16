module full_adder (
	input  logic a, b, cin,
	output logic sum, cout);

    // p and g are internal variables to this module
    logic p, g;

    // assignment statements take place concurrently and are evaluated
    // any time the inputs, signals on the right hand side, change their value, 
    assign p =a ^ b;
    assign g =a & b;
    assign sum  = p ^ cin;
    assign cout = g | (p & cin);


endmodule
