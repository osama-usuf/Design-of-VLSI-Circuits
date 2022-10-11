`timescale 1us/1fs

module mealy_tb
    #(parameter resolution = 0.05) // parameter to control the accuracy of the baud rate pair generation, higher-res means higher accuracy of the frequency
();

    integer delay = 500000 * resolution;
    integer tb_cycle_number = 1;
    integer total_errors = 0;  // tracking total errors in assertions
    real Clock_counter = 0;
    real Sample_Clock_counter = 0; 

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
            tb_cycle_number <= tb_cycle_number + 1;
        end
    end

    // Increment error variable for error monitor
    event error;
    initial begin 
        forever @(error) begin
            total_errors <= total_errors + 1;
        end
    end

    // Watchdog - used for exiting and reports error monitor
    event watchdog;
    initial begin
        forever @(watchdog) begin
            $display("Total Error Count: ", total_errors);
            $finish;
        end
    end

    initial begin
        forever @ (Clock) begin
            Clock_counter <= Clock_counter + 1;
        end
    end

    initial begin
        forever @ (Sample_clock) begin
            Sample_Clock_counter <= Sample_Clock_counter + 1;
        end
    end

    // Create the dvt
    uart_clk_gen dvt(// Outputs
                     .Clock(Clock),
                     .Sample_clock(Sample_clock),
                     // Inputs
                     .Sys_clock(Sys_clock),
                     .reset(reset),
                     .Sel_Baud_Rate(Sel_Baud_Rate));
    
    initial begin
        Sys_clock <= 1'b0;
        forever #0.0625 Sys_clock <= ~Sys_clock; // 8 MHz clock
    end

    event case_1;
    initial begin 
        forever @(case_1) begin
            $display("\nResolution is %0.5f, Baud Rate Pairs will be extrapolated from ~%0.0f useconds", resolution, delay);
            $display("\nSel_Baud_Rate\tClock\t\tSample_Clock");
            Sel_Baud_Rate = 3'b000;
            // Reset the generator + counts
            reset <= 1'b0;
            #1 reset <= 1'b1;
            Clock_counter <= 0;
            Sample_Clock_counter <= 0;
            // since we have to count the frequency / second, we ensure the sim runs for a complete second first
            #(delay); 
            $display("\t%b\t%7.1f\t\t%7.1f", Sel_Baud_Rate, Clock_counter / resolution, Sample_Clock_counter / resolution);
            -> tb_cycle_update;
        end
    end

    event case_2;
    initial begin 
        forever @(case_2) begin
            Sel_Baud_Rate <= Sel_Baud_Rate + 1;
            Clock_counter <= 0;
            Sample_Clock_counter <= 0;
            // since we have to count the frequency / second, we ensure the sim runs for a complete second first
            #(delay); 
            $display("\t%b\t%7.1f\t\t%7.1f", Sel_Baud_Rate, Clock_counter / resolution, Sample_Clock_counter / resolution);
            -> tb_cycle_update;
        end
    end

    // Test Case Loop
    always @ (*) begin
        case(tb_cycle_number)
            1: -> case_1;
            2, 3, 4, 5, 6, 7, 8: -> case_2;
            default: -> watchdog;
        endcase
    end

    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("uart_clk_gen.vcd");
        $dumpvars(0, uart_clk_gen_tb);
    end

endmodule