/* 
A 4bit up_counter with:

- negative edge-triggered synchronization
- synchronous load and reset
- parallel load of data
- active-low enabled counting.

*/

module counter_4bit (
    output reg[3:0] out,
    input clk, rst, load, enable,
    input wire[3:0] D
);


always @(negedge clk)

    if (rst) out <= 4'b0000; // if reset, output 0

    else if (~enable & ~load) out <= out + 1; // low-enabled, load is 0, up-count

    // low-enabled, with data to load
    else if (~enable & load)  out <= D; // parallel-load of data

endmodule