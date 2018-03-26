/* * * * * * * * * * * * * * * * * * * * * * * * * * * *
*  Full Adder Testbench - Alex Santilli					 *
* 	 																	 *
*           														 *
*       																 *
* * * * * * * * * * * * * * * * * * * * * * * * * * * */

module FullAdder_tb();

	reg a, b, cin, out[1:0];
	wire carry, sum;
	
	initial begin
		a = 0;
		b = 0;
		cin = 0;
		
		#10;
		a = 0; b = 0; cin = 0;
		#10;
		a = 0; b = 0; cin = 1;
		#10;
		a = 0; b = 1; cin = 0;
		#10;
		a = 0; b = 1; cin = 1;
		#10;
		a = 1; b = 0; cin = 0;
		#10;
		a = 1; b = 0; cin = 1;
		#10;
		a = 1; b = 1; cin = 0;
		#10;
		a = 1; b = 1; cin = 1;
	end
	

	
	
	FullAdder MUT(sum, carry, a, b, cin);
	
	always @(sum or carry) begin
		out[0] = sum;
		out[1] = carry;
	end 
		
endmodule
	