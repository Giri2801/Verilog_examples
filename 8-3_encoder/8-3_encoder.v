module encoder83(o,a,en);
  input [7:0] a;
  input en;
  output [2:0] o;
  reg [2:0] o;
  always @ (a,en) 
    begin
      if(en==1'b1)
        case(a)
          8'b00000001 : o=3'b000;
		  8'b00000010 : o=3'b001;
		  8'b00000100 : o=3'b010;
		  8'b00001000 : o=3'b011;
		  8'b00010000 : o=3'b100;
		  8'b00100000 : o=3'b101;	
		  8'b01000000 : o=3'b110;
		  8'b10000000 : o=3'b111;
        endcase
      else
        o=3'bzzz;
    end
endmodule