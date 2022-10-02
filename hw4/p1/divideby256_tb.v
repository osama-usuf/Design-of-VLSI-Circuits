module divideby256_tb();

    wire clock_by_256;
    wire [7:0] counter256;
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
    initial #5000 -> watchdog;

    // Create the div256 dvt
    divideby256 dvt(.clock_by_256(clock_by_256),
                    .counter256(counter256),
                   .clock(clock),
                   .reset(reset));
    
    // set clock frequencies, reader is independent of writer
    initial begin
        clock = 1'b0;
        forever #5 clock = ~clock;
    end

    event reset_divby256;
    initial begin 
        forever @(reset_divby256) begin
            reset = 1'b0;
            #10 reset = 1'b1;
            -> tb_cycle_update;
        end
    end

    // Test Case Loop
    always @ (*) begin
        case(tb_cycle_number)
            1: -> reset_divby256;
        endcase
    end

    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("divideby256.vcd");
        $dumpvars(0, divideby256_tb);
    end

endmodule