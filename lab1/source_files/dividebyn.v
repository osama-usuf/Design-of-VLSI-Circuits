module dividebyn
#(parameter DIVISOR = 10000000)
(output wire clock_by_n,
input wire clock, reset);
    reg [31:0] counter;
    assign clock_by_n = (counter == DIVISOR - 1);
    always @ (posedge clock, posedge reset) begin
        if (reset == 1) counter <= 0;
        else if (counter == DIVISOR - 1) counter <= 0;
        else counter <= counter + 1;
    end
endmodule