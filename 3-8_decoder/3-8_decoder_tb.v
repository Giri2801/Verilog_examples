module test;
  reg [2:0]d;
  reg E;
  wire [7:0]y;
  decoder dut(.*);
initial begin
  E=0; 
  #1 d=3'b111;
  #1 E = 1;
  for(int i=0; i<8;i++) begin
    #1 d= i;
  end
  #50 $finish;
end
always @(d or E)
  $display("time=%0t INPUT VALUES: d=%b E=%b OUTPUT VALUES: y=%b",$time,d,E,y);
endmodule