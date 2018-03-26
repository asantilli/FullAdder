/* * * * * * * * * * * * * * * * * * * * * * * * * * * *
*  Full Adder Using Half Adder Modules - Alex Santilli *
* 	 																	 *
*	(behavioural descriptions - continuous assignment)	 *
*       																 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * */

module FullAdder(Sum, CarryOut, a, b, cin);
	
	input a, b, cin;
	output CarryOut;
	output reg Sum;
	wire s1, c1, c2, SumWire;
	
	HalfAdder h1(s1, c1, a, b);
	HalfAdder h2(SumWire, c2, s1, cin);
	
	always @(SumWire) begin
		Sum = SumWire;
	end
	
	assign CarryOut = c1 | c2;
	
endmodule 
