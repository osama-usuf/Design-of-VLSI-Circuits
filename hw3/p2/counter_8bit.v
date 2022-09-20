/* 
A 8 bit up_counter, made up of two cascaded 4 bit counters with rco:

- negative edge-triggered synchronization
- synchronous load and reset
- parallel load of data
- active-low enabled counting.

*/

module counter_8bit (
    output [7:0] out,
    input clk, rst, load, enable,
    input [7:0] dataIn
);

    wire rco;
    wire [3:0] out1, out2;

    counter_4bit_rco counter1(
        .out(out1),
        .D(dataIn[3:0]), 
        .rco(rco),
        .clk(clk), 
        .rst(rst),
        .load(load), 
        .enable(enable));

    counter_4bit_rco counter2(
        .out(out2),
        .D(dataIn[7:4]), 
        .rco(),
        .clk(~rco),
        .rst(rst),
        .load(load), 
        .enable(enable));

    assign out = {out2, out1};

endmodule