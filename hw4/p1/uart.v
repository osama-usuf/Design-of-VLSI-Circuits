module uart_clk_gen(output wire Clock, Sample_clock, 
                  input wire Sys_clock, reset,
                  input [2:0] Sel_Baud_Rate);
    
    wire sys_clock_by_13;
    wire clock_by_256;
    wire [7:0] counter256;

    // Divide_By_13
    divideby13 Divide_By_13(.sys_clock_by_13(sys_clock_by_13),
                   .sys_clock(Sys_clock),
                   .reset(reset));

    // Divide_By_256
    divideby256 Divide_By_256(.clock_by_256(clock_by_256),
                    .counter256(counter256),
                   .clock(sys_clock_by_13),
                   .reset(reset));

    // 8:1 multiplexer
    mux81 Mux_For_Clocks(
            .out(Clock),
            .D0(counter256[0]), 
            .D1(counter256[1]), 
            .D2(counter256[2]), 
            .D3(counter256[3]), 
            .D4(counter256[4]), 
            .D5(counter256[5]), 
            .D6(counter256[6]), 
            .D7(counter256[7]),
            .Sel_Baud_Rate(Sel_Baud_Rate));

    // Divide_By_8
    divideby8 Divide_By_8(.clock_by_8(Sample_clock),
                  .clock(Clock),
                  .reset(reset));

endmodule