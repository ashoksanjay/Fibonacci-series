module fibonacci(out, clk, rst);
	output reg [3:0] out;
	input clk, rst;
	
	reg [3:0] s0, s1;
	reg [3:0] sum;
	
	always @(posedge clk or posedge rst) begin
		if(rst) begin
			s0 <= 4'b0000;
			s1 <= 4'b0001;
		end
		else begin
			{s0, s1} <= {s1, s0 + s1}; 
			
		end
	end
	always @(*) begin
		out = s0;
	end
	
endmodule
