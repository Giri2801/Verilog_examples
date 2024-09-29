module BCDupdown(Clk, reset, UpOrDown, Count ); 
input Clk,reset,UpOrDown;
    output [3 : 0] Count;
    reg [3 : 0] Count = 0;  
    
     always @(posedge(Clk),UpOrDown)
     begin
        if(reset == 1) 
            Count <= 0;
        else
            begin
            if(UpOrDown == 1)   // High for Up Counter and Low for Down Counter
                begin
                if(Count == 15)
                    Count <= 0;
                else
                    Count <= Count + 1;
                end
            else
                begin
                if(Count == 0)
                    Count <= 15;
                else
                    Count <= Count - 1;
                end
            end
     end    
    
endmodule
