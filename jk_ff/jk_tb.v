module jk_tb; 
  reg j,k,clk; 
  wire  q; 

  jk_ff tb(j,k,clk,q); 

  initial begin 
    clk=0; 
  end 
   
  always #5 clk =~clk; 
 
  initial begin
    j<=0;k<=0;
    #10
    j<=0;k<=1;
    #10
    j<=1;k<=0;
    #10
    j<=1;k<=1;
    #10 $finish;
  end
  
  always @(clk) begin
      $monitor("Time = %0t, Clk=%0b, J=%0b ,K=%0b , Q=%0b", $time,clk,j,k,q); 
  end  
endmodule 
