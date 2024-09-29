//3:8 Decoder
module decoder(input [2:0] d, input E, output [7:0] y);
  assign y=E?1<<d:0;
endmodule