module uart_clk_gen_tb();

    integer tb_cycle_number = 1;
    integer total_errors = 0;  // tracking total errors in assertions
    integer i; // loop variable

    // Inputs
    reg Sys_clock, reset;
    reg [2:0] Sel_Baud_Rate;
    // Outputs
    wire Clock, Sample_clock;
    //////////// EVENTS //////////////

    // Increment TB cycle number
    event tb_cycle_update;
    initial begin 
        forever @(tb_cycle_update) begin
            tb_cycle_number = tb_cycle_number + 1;
        end
    end

    // Increment error variable for error monitor
    event error;
    initial begin 
        forever @(error) begin
            total_errors = total_errors + 1;
        end
    end

    // Error Monitor
    initial  begin
        $display("\t\tTime, TB Cycle Number,\terror count"); 
        $monitor("\t%d,\t%d", $time, tb_cycle_number, total_errors); 
    end 

    // Watchdog - used for exiting and reports error monitor
    event watchdog;
    initial begin
        forever @(watchdog) begin
            $display("Total Error Count: ", total_errors);
            $finish;
        end
    end
    // absolute timed watchdog
    initial #5000 -> watchdog;

    // Create the dvt

    uart_clk_gen dvt(// Outputs
                     .Clock(Clock),
                     .Sample_clock(Sample_clock),
                     // Inputs
                     .Sys_clock(Sys_clock),
                     .reset(reset),
                     .Sel_Baud_Rate(Sel_Baud_Rate));
    
    initial begin
        Sys_clock = 1'b0;
        forever #5 Sys_clock = ~Sys_clock;
    end

    event reset_uart;
    initial begin 
        forever @(reset_uart) begin
            reset = 1'b0;
            #10 reset = 1'b1;
            Sel_Baud_Rate = 3'b000;
            -> tb_cycle_update;
        end
    end

    event init_baud;
    initial begin 
        forever @(init_baud) begin

            -> tb_cycle_update;
        end
    end

    // Test Case Loop
    always @ (*) begin
        case(tb_cycle_number)
            1: -> reset_uart;
            2: -> init_baud;
        endcase
    end

    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("uart_clk_gen.vcd");
        $dumpvars(0, uart_clk_gen_tb);
    end

endmodule