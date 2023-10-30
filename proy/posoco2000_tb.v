module posoco2000_tb;
    reg clk=0;
    wire [9:0] sel;
    wire [7:0] segm;

    
    posoco2000 dut(
    .clk(clk),
    .sel(sel),
    .segm(segm)
    );

   
initial
begin 
 
$dumpfile("posoco2000.vcd");
$dumpvars(0,posoco2000_tb);
end 

initial 
repeat (200) begin	
    #10
    clk = ~clk; 

end

endmodule
