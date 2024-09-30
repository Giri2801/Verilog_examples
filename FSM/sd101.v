module sd101(input clk,
                   input reset,
                   input din,
                   output reg dout);

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;

reg [1:0]state;

  always @(posedge clk or posedge reset) begin
    if(reset) begin
      dout <= 1'b0;
      state <= S0;
    end
    else begin
      case(state)
        S0: begin
          dout <=1'b0;
          if(din)
            state <= S1;
          else
            state <= S0;
        end
        S1: begin
          dout <= 1'b0;
          if(~din)
            state <= S2;
        end
        S2: begin
          
          if(din) begin
            state <= S3;
            dout <= 1'b1;
          end
          else begin
            state <= S0;
            dout <= 1'b0;
          end
        end
        S3: begin
          dout <= 1'b0;
          if(din)
            state <= S1;
          else
            state <= S2;
        end
      endcase
    end
  end


endmodule
