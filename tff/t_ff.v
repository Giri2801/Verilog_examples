module t_ff(clk,clear,enable,t,q); 
input t; 
input clk,clear,enable; 
output reg q; 

always @(posedge clk) 
    if(enable)begin 
        if(clear) 
            q <= 0; 
        else  
            q <= ~t; 
    end 
endmodule
