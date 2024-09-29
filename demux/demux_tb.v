module testbench;
    reg [2:0]S;
    reg in;
    wire [7:0]Y;
    demux_1_8 mydemux(.y(Y), .in(in), .s(S));

    initial begin
        in=1;
        S=3'd0;
        #5;
        S=3'd1;
        #5;
        S=3'd2;
        #5;
        S=3'd3;
        #5;
        S=3'd4;
        #5;
        S=3'd5;
        #5;
        S=3'd6;
        #5;
        S=3'd7;
        #5;
    end
    
    initial begin
        $monitor("time:%0d,s:%0d,in:%0d,y:%b",$time,S,in,Y);
    end
endmodule