module fibonacci_test;
	wire [3:0] out;
	reg clk, rst;
	
	fibonacci uut(out, clk, rst);
	
	initial begin
		clk = 0;
		forever #5 clk = ~clk;
	end
	
	initial begin
		rst = 1;#10;
		rst = 0;#110;
	
	end
	

endmodule
