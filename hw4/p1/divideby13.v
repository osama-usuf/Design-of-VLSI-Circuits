module divideby13(output wire sys_clock_by_13, 
                  input wire sys_clock, reset);
    reg [3:0] temp;
    assign sys_clock_by_13 = temp[3];
    wire clk_1 = (temp == 12);
    wire clk_2 = (temp > 6);
    always @ (posedge sys_clock, negedge reset) begin
        if (reset == 0) temp <= 4'b0000;
        else if (temp == 4'd12) temp <= 4'd0;
        else temp <= temp + 1;
    end
endmodule