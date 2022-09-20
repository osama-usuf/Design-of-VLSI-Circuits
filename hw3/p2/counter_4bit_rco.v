/* 
A 4bit up_counter with:

- negative edge-triggered synchronization
- parallel load of data
- active-low enabled counting
- asynchronous load + reset (just for simplicity)
- rco output - ripple carry output, indicating 

On top, the rco output is asserted when the output is at its max value i.e., 1111 (F in hex)

*/

module counter_4bit_rco (
    output reg[3:0] out,
    output reg rco,
    input clk, rst, load, enable,
    input wire[3:0] D
);


always @ (negedge clk or posedge rst or posedge load) begin

    if (rst) out <= 4'b0000; // if reset, output 0

    else if (~enable & ~load) out <= out + 1; // low-enabled, load is 0, up-count

    // low-enabled, with data to load
    else if (~enable & load)  out <= D; // parallel-load of data

    // rco - carry output indication if out = 4'b1111
    if (out == 4'b1111) rco <= 1'b1;
    else rco <= 1'b0;

end
endmodule