module comps_tb;

reg a, b1, b2, c1, c2;
wire w, x, y;

comps uut(
.a(a),
.w(w),
.b1(b1),
.b2(b2),
.x(x),
.c1(c1),
.c2(c2),
.y(y)
);

initial begin
    $dumpfile("comps.vcd");
    $dumpvars(0,comps_tb);

    a = 0;
    b1 = 0;
    b2 = 0;
    c1 = 0;
    c2 = 0;		
    #10
    a = 1;
    b1 = 1;
    b2 = 0;
    c1 = 1;
    c2 = 0;		
    #10 
    a = 0;
    b1 = 0;
    b2 = 1;
    c1 = 0;
    c2 = 1;		
    #10
    a = 1;
    b1 = 1;
    b2 = 1;
    c1 = 1;
    c2 = 1;		
    #10
    $finish();
end


endmodule