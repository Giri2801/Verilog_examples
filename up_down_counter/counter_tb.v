 module BCDUPDOWNTB;
    reg Clk;
    reg reset;
    reg UpOrDown;

    wire [3:0] Count;

    BCDupdown uut (
        .Clk(Clk), 
        .reset(reset), 
        .UpOrDown(UpOrDown), 
        .Count(Count)
    );
 initial Clk = 0;
    always #5 Clk = ~Clk;

    initial begin
        Clk = 0;
        reset = 0;
        UpOrDown = 1;
        #85
        UpOrDown = 0;
      	 $monitor("Time = %0t, Clk=%0b, Up/Down=%0b , Count=%0d",$time,Clk,UpOrDown,Count); 
           #70 $finish;
    end
      
endmodule
