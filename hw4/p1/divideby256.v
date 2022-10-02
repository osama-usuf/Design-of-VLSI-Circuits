module divideby256(output wire clock_by_256,
                   output wire [7:0] counter256,
                   input wire clock, reset);
    reg [7:0] counter;
    assign counter256 = counter;
    assign clock_by_256 = (counter == 255);
    always @ (posedge clock, negedge reset) begin
        if (reset == 0) counter <= 8'd0;
        else if (counter == 8'd255) counter <= 8'd0;
        else counter <= counter + 1;
    end
endmodule