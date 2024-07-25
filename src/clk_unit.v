module clk_unit(
	input clk,
	input rst,
	output reg clk_n
	);
	
 //  reg clk_n;
    reg clk_t;
   
    always @(posedge clk or posedge rst) begin
        if (rst)
            clk_t <= 0;
        else
            clk_t <= ~clk_t;
    end
     always @(posedge clk_t or posedge rst) begin
       if (rst)
        clk_n <= 0;
      else
        clk_n <= ~clk_n;
    end
    
endmodule