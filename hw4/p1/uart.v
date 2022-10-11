module uart_clk_gen(output wire Clock, Sample_clock, 
                  input wire Sys_clock, reset,
                  input [2:0] Sel_Baud_Rate);
    
    wire sys_clock_by_13;
    wire clock_by_256;
    wire [7:0] counter256;
    wire D0, D1, D2, D3, D4, D5, D6, D7;

    dividebyn Divide_By_13 (.clock(Sys_clock),
                            .reset(reset),
                            .clock_by_n(sys_clock_by_13));
    defparam Divide_By_13.DIVISOR = 13;
    
    // instantiate dividers for multiplexing - divisor values have been extracted from Table P7-2 from the book
    dividebyn Divide_By_2 (.clock(sys_clock_by_13),
                            .reset(reset),
                            .clock_by_n(D0));
    defparam Divide_By_2.DIVISOR = 2;

    dividebyn Divide_By_4 (.clock(sys_clock_by_13),
                            .reset(reset),
                            .clock_by_n(D1));
    defparam Divide_By_4.DIVISOR = 4;

    dividebyn Divide_By_8 (.clock(sys_clock_by_13),
                            .reset(reset),
                            .clock_by_n(D2));
    defparam Divide_By_8.DIVISOR = 8;

    dividebyn Divide_By_16 (.clock(sys_clock_by_13),
                            .reset(reset),
                            .clock_by_n(D3));
    defparam Divide_By_16.DIVISOR = 16;
   
    dividebyn Divide_By_34 (.clock(sys_clock_by_13),
                            .reset(reset),
                            .clock_by_n(D4));
    defparam Divide_By_34.DIVISOR = 34;

    dividebyn Divide_By_64 (.clock(sys_clock_by_13),
                            .reset(reset),
                            .clock_by_n(D5));
    defparam Divide_By_64.DIVISOR = 64;

    dividebyn Divide_By_128 (.clock(sys_clock_by_13),
                            .reset(reset),
                            .clock_by_n(D6));
    defparam Divide_By_128.DIVISOR = 128;

    dividebyn Divide_By_256 (.clock(sys_clock_by_13),
                            .reset(reset),
                            .clock_by_n(D7));
    defparam Divide_By_256.DIVISOR = 256;

    // 8:1 multiplexer
    mux81 Mux_For_Clocks(
            .out(Clock),
            .D0(D0), // divide by 2
            .D1(D1), // divide by 4
            .D2(D2), // divide by 8
            .D3(D3), // divide by 16
            .D4(D4), // divide by 34 - important - if this was 32, then we could've used an 8-bit counter directly
            .D5(D5), // divide by 64
            .D6(D6), // divide by 128
            .D7(D7), // divide by 256
            .Sel_Baud_Rate(Sel_Baud_Rate));

    // Divide_By_8
    dividebyn Divide_By_8_2 (.clock(Clock),
                            .reset(reset),
                            .clock_by_n(Sample_clock));
    defparam Divide_By_8_2.DIVISOR = 8;

endmodule