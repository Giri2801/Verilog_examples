module encoder83tb;
reg [7:0] a;
reg en;
wire [2:0] o;
encoder83 e1 (o,a,en);
initial begin
   $dumpfile("dump.vcd");
      $dumpvars(1);
a=8'b00000000;
en=1'b1;
#10 a=8'b00000001;
#10 a=8'b00000010;
#10 a=8'b00000100;
#10 a=8'b00001000;
#10 a=8'b00010000;
#10 a=8'b00100000;
#10 a=8'b01000000;
#10 a=8'b10000000;
  #120 $finish;
end
always #80 en=~en;
initial
  $monitor("time=%0t INPUT VALUES: a=%b En=%b OUTPUT VALUES: o=%b",$time,a,en,o);
endmodule
