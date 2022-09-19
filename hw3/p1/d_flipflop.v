/* 
A rising edge D flip flop with synchronous reset
*/

module d_flipflop (
    output reg Q,
    input D, clk, rst  
);

    always @(posedge clk) begin
        if (rst == 1'b1) Q <= 0;
        else begin
            Q <= D; 
        end 
    end
endmodule