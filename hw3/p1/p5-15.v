/* 

From book - Figure P5-15

This module instantiates a rising-edge synchronous reset D flipflop from d_flipflop.v 
*/

module p5_15 (
    output wire P_odd,
    input D_in, clk, rst       
);

    wire D;
    assign D = D_in ^ P_odd; // xor operator

    d_flipflop dff(
        .D(D),
        .Q(P_odd),
        .clk(clk), 
        .rst(rst));

endmodule