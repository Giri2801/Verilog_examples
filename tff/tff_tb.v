module tff_tb; 
  reg t; 
  reg clk,clear,enable; 
  wire  q; 
  
  t_ff tb(clk,clear,enable,t,q); 

  initial begin 
    t=0; 
    clk=0; 
    clear=0; 
    enable=1; 
  end 

  always #5 clk = ~clk; 
  always #10 t = ~t; 
  initial #50 $stop; 

  initial begin
      $monitor("Time = %0t, Clk=%0b, T=%0b , Q=%0b", $time,clk,t,q); 
  end  

endmodule 
