module divideby8_tb();

    wire clock_by_8;
    reg clock, reset;

    integer tb_cycle_number = 1;
    integer total_errors = 0;  // tracking total errors in assertions
    integer i; // loop variable

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
    initial #300 -> watchdog;

    // Create the div8 dvt
    divideby8 dvt(.clock_by_8(clock_by_8),
                   .clock(clock),
                   .reset(reset));
    
    // set clock frequencies, reader is independent of writer
    initial begin
        clock = 1'b0;
        forever #5 clock = ~clock;
    end

    event reset_divby8;
    initial begin 
        forever @(reset_divby8) begin
            reset = 1'b0;
            #10 reset = 1'b1;
            -> tb_cycle_update;
        end
    end


    event case_2;
    initial begin 
        forever @(case_2) begin
            -> tb_cycle_update;
        end
    end

    // Test Case Loop
    always @ (*) begin
        case(tb_cycle_number)
            1: -> reset_divby8;
            //default: -> watchdog;
        endcase
    end

    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("divideby8.vcd");
        $dumpvars(0, divideby8_tb);
    end

endmodule