module comps(
`ifdef USE_POWER_PINS
    inout vccd1,	// User area 1 1.8V supply
    inout vssd1,	// User area 1 digital ground
`endif

    input wire a, b1, b2, c1, c2,
    output w, x, y
);

assign w = !a;
assign x = b1 & b2;
assign y = c1 | c2;

endmodule