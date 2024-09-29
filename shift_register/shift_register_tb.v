`timescale 1ns/1ns
module testbench;
  reg clk=1;
  reg D=0;
  wire [3:0] Q;
  wire Q0,Q1,Q2,Q3;
  
  assign Q0=Q[0];
  assign Q1=Q[1];
  assign Q2=Q[2];
  assign Q3=Q[3];
  
  // Instantiate shift register
  shift s1(
    .clk(clk),
    .D(D),
    .Q(Q));

  initial begin
    // Provide some input bits
    #10 D=1;    // t=11
    #10 D=0;    // t=21
    #10 D=1;    // t=61
    #10 D=0;    // t=71
    #10 D=1;    // T=81
    #10 D=0;    // T=91
    #200 $finish;
  end
  
  always
    #5 clk = ~clk;   
  
  initial
    $monitor("Time=%0t,D=%b,Q=%b",$time,D,Q);
  
endmodule