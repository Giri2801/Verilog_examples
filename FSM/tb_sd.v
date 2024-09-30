module tb;
  reg 			clk, in, rstn;
  wire 			out;
  reg 			tb_in;
  
  always #10 clk = ~clk;
  
  sd101 u0 ( .clk(clk), .rstn(rstn), .in(in), .out(out) );
  
  initial begin
  	clk <= 0;
    rstn <= 0;
    in <= 0;
    
    repeat (5) @ (posedge clk);
    rstn <= 1;

		// Generate a directed pattern
    @(posedge clk) in <= 1;
    @(posedge clk) in <= 0;
    @(posedge clk) in <= 1;     // Pattern is completed
    @(posedge clk) in <= 1; 		
    @(posedge clk) in <= 0;
    @(posedge clk) in <= 0;
    @(posedge clk) in <= 1;
    @(posedge clk) in <= 1;
    @(posedge clk) in <= 0;
    @(posedge clk) in <= 1;
    @(posedge clk) in <= 0;
    @(posedge clk) in <= 1; 	 // Pattern completed again
    

    // Wait for sometime before quitting simulation
    #100 $finish;
  end
endmodule
