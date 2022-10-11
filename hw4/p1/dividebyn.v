module dividebyn
#(parameter DIVISOR = 255)
(output wire clock_by_n,
input wire clock, reset);
    reg [7:0] counter;
    assign clock_by_n = (counter == DIVISOR - 1);
    always @ (posedge clock, negedge reset) begin
        if (reset == 0) counter <= 8'd0;
        else if (counter == DIVISOR - 1) counter <= 8'd0;
        else counter <= counter + 1;
    end
endmodule