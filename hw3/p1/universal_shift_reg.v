/* 

From book - example 5.46

I have assumed a word size of 4 bits, because I was running into compilation errors

*/

module universal_shift_reg (
    output reg[3:0] data_out,
    output msb_out, lsb_out,
    input [3:0]  data_in,
    input msb_in, lsb_in,
    input s1, s0, clk, rst             
);

    assign msb_out = data_out[3];
    assign lsb_out = data_out[0];

    always @(posedge clk) begin
        if (rst == 1'b1) data_out <= 0;
        else case ({s1, s0})
            0: data_out <= data_out;                // hold
            1: data_out <= {msb_in, data_out[3:1]}; // serial shift from msb
            2: data_out <= {data_out[2:0], lsb_in}; // serial shift from lsb
            3: data_out <= data_in;                 // parallel load
        endcase
    end
endmodule