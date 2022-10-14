`timescale 1us/1fs

module mealy_tb
    // state encodings
    #(parameter white_state = 2'b00,
      parameter red_state = 2'b01,
      parameter green_state = 2'b10,
      parameter blue_state = 2'b11)
    ();

    // TB values
    integer tb_cycle_number = 1;
    integer total_errors = 0;  // tracking total errors in assertions
    integer error_count = 0;

    real delay = 0.1;

    // Input registers to drive wires
    reg clk, reset;
    reg red, green, blue;

    // Output wires for registered FSM ports
    wire mealy_out; // main output, dubbed mealy_out/moore_out inside the FSM modules
    wire [1:0] current_state, next_state;

    // Events
    // Increment TB cycle number
    event tb_cycle_update;
    initial begin 
        forever @(tb_cycle_update) begin
            tb_cycle_number <= tb_cycle_number + 1;
        end
    end

    task error_print_task();
    begin
        @ (posedge clk) begin
            if (error_count == 0) $display("Case Passed:", error_count, " error(s)");
            else $display("Case Failed:", error_count, " error(s)");
            total_errors = total_errors + error_count;
        end
    end
    endtask

    // Watchdog - used for exiting and reports error monitor
    event watchdog;
    initial begin
        forever @(watchdog) begin
            #(delay * 2);
            $display("\nTotal Error Count: ", total_errors);
            $finish;
        end
    end

    event reset_fsm;
    initial begin
        forever @(reset_fsm) begin
            red <= 1'b0;
            green <= 1'b0;
            blue <= 1'b0;
            reset <= 1'b1;
            #(delay) reset <= 1'b0;
            -> tb_cycle_update;
        end
    end

    // Create the FSM
    mealy fsm(  
                .clk(clk),
                .reset(reset),
                .red(red), .green(green), .blue(blue),
                .mealy_out(mealy_out),
                .current_state(current_state), .next_state(next_state)
            );

    initial begin
        clk <= 1'b0;
        forever #delay clk <= ~clk; // 8 MHz clock
    end
    
    event state_loop;
    initial begin 
        forever @(state_loop) begin
            // Transition: 1XX / 1 (WhiteState)

            $display("\nTesting Transition: 1XX / 1 (WhiteState)");
            error_count = 0;
            if (mealy_out != 0) error_count = error_count + 1; // ensures that we start at steady state
            red <= 1;
            #(delay);

            if (mealy_out == 1'b0) error_count = error_count + 1; // FSM output will instantly be 1 (mealy)
            if (current_state != white_state) error_count = error_count + 1;
            if (next_state != red_state) error_count = error_count + 1; // testing for current & next states

            error_print_task;

            $display("\nTesting Transition: 1XX / 0 (RedState)");
            #(delay);
            error_count = 0;
            if (mealy_out != 1'b0) error_count = error_count + 1;
            if (current_state != red_state)  error_count = error_count + 1;
            if (next_state != red_state) error_count = error_count + 1;

            error_print_task;

            $display("\nTesting Transition: 000 / 0 (RedState)");
            error_count = 0;
            red <= 0;
            #(delay);

            if (mealy_out == 1'b1) error_count = error_count + 1; // FSM output will instantly be 1 (mealy)
            if (current_state != red_state) error_count = error_count + 1;
            if (next_state != white_state) error_count = error_count + 1; // testing for current & next states

            error_print_task;

            $display("\nTesting Transition: 000 / 0 (WhiteState)");
            #(delay);
            error_count = 0;
            if (mealy_out != 1'b0) error_count = error_count + 1;
            if (current_state != white_state)  error_count = error_count + 1;
            if (next_state != white_state) error_count = error_count + 1;

            error_print_task;

            $display("\nTesting Transition: 01X / 0 (WhiteState)");
            red <= 0;
            green <= 1;
            #(delay);

            if (mealy_out == 1'b0) error_count = error_count + 1; // FSM output will instantly be 1 (mealy)
            if (current_state != white_state) error_count = error_count + 1;
            if (next_state != green_state) error_count = error_count + 1; // testing for current & next states

            error_print_task;

            $display("\nTesting Transition: X1X / 0 (GreenState)");
            #(delay);
            error_count = 0;
            if (mealy_out != 1'b0) error_count = error_count + 1;
            if (current_state != green_state)  error_count = error_count + 1;
            if (next_state != green_state) error_count = error_count + 1;

            error_print_task;

            $display("\nTesting Transition: 000 / 0 (GreenState)");
            error_count = 0;
            red <= 0;
            green <= 0;
            #(delay);

            if (mealy_out == 1'b1) error_count = error_count + 1; // FSM output will instantly be 1 (mealy)
            if (current_state != green_state) error_count = error_count + 1;
            if (next_state != white_state) error_count = error_count + 1; // testing for current & next states

            error_print_task;

            $display("\nTesting Transition: 001 / 1 (WhiteState)");
            red <= 0;
            green <= 0;
            blue <= 1;
            #(delay);

            if (mealy_out == 1'b0) error_count = error_count + 1; // FSM output will instantly be 1 (mealy)
            if (current_state != white_state) error_count = error_count + 1;
            if (next_state != blue_state) error_count = error_count + 1; // testing for current & next states

            error_print_task;

            $display("\nTesting Transition: XX1 / 0 (BlueState)");
            #(delay);
            error_count = 0;
            if (mealy_out != 1'b0) error_count = error_count + 1;
            if (current_state != blue_state)  error_count = error_count + 1;
            if (next_state != blue_state) error_count = error_count + 1;

            error_print_task;

            $display("\nTesting Transition: 000 / 0 (BlueState)");
            error_count = 0;
            red <= 0;
            green <= 0;
            blue <= 0;
            #(delay);

            if (mealy_out == 1'b1) error_count = error_count + 1; // FSM output will instantly be 1 (mealy)
            if (current_state != blue_state) error_count = error_count + 1;
            if (next_state != white_state) error_count = error_count + 1; // testing for current & next states

            error_print_task;

            -> tb_cycle_update;
        end
    end

    // Test Case Loop
    always @ (*) begin
        case(tb_cycle_number)
            1: -> reset_fsm;
            2: -> state_loop;
            default: -> watchdog;
        endcase
    end

    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("mealy.vcd");
        $dumpvars(0, mealy_tb);
    end

endmodule