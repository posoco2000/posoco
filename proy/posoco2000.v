

module posoco2000(
    input clk,
    output reg [9:0] sel,
    output reg [7:0] segm
    );
wire [3:0] cont;
contador dut(
.clk(clk),
.count(cont)
);

always@(posedge clk)
begin
    if(cont==4'b0000)
    begin
    //p
        sel=10'b0000000001;
        segm=8'b11001110;
    end

    if(cont==4'b0001)
    begin
    //o    
        sel=10'b0000000010;
        segm=8'b11111100;
    end

    if(cont==4'b0010)
    begin
    //s    
        sel=10'b0000000100;
        segm=8'b10110110;
    end

    if(cont==4'b0011)
    begin
    //o    
        sel=10'b0000001000;
        segm=8'b11111100;
    end

    if(cont==4'b0100)
    begin
    //c    
        sel=10'b0000010000;
        segm=8'b10011100;
    end

    if(cont==4'b0101)
    begin
    //o    
        sel=10'b0000100000;
        segm=8'b11111100;
    end

    if(cont==4'b0110)
    begin
    //2    
        sel=10'b0001000000;
        segm=8'b11011010;
    end 

    if(cont==4'b0111)
    begin
    //0    
        sel=10'b0010000000;
        segm=8'b11111100;
    end 

    if(cont==4'b1000)
    begin
    //0    
        sel=10'b0100000000;
        segm=8'b11111100;
    end

    if(cont==4'b1001)
    begin
    //0    
        sel=10'b1000000000;
        segm=8'b11111100;
    end
end
endmodule

module contador(count,clk);
    output [3:0] count;
    input  clk;
    
    reg [3:0] count=0;
    always @(posedge clk)
        if(count==4'd9)
            count<=4'b0;
        else
        count <= count + 1'b1;
endmodule
