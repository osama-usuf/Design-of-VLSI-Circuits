module divideby8(output wire clock_by_8, 
                  input wire clock, reset);
    reg [3:0] counter;
    assign clock_by_8 = (counter == 7);
    always @ (posedge clock, negedge reset) begin
        if (reset == 0) counter <= 4'b0000;
        else if (counter == 4'd7) counter <= 4'd0;
        else counter <= counter + 1;
    end
endmodule