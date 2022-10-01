`timescale 1ns/1ps
module fifo_tb
    // Todo: make sure it's consistent with the dvt
    #(parameter depth = 96,
      parameter ptr_size = $clog2(depth), // # of bits to completely address all depth entries of the FIFO array
      parameter width_in = 8,
      parameter width_out = 1 * width_in);

    // FIFO inputs
    reg clk_read,
        clk_write, 
        rst,
        enable_read, 
        enable_write;

    reg [width_in-1:0] data_in;

    // FIFO outputs
    wire [width_out-1:0] data_out;
    wire empty, full, half_full;
    wire [ptr_size:0] counter;

    integer tb_cycle_number = 1;
    integer total_errors = 0;  // tracking total errors in assertions
    integer temp = 9;          // temporary value, used in test cases
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

    // Asynchronous reset
    event rst_low;
    event rst_high;
    initial begin
        forever @(rst_low) rst = 1'b0;
    end

    initial begin
        forever @(rst_high) rst = 1'b1;
    end

    // Create the FIFO queue
    fifo queue(
            // Inputs
            .clk_read(clk_read),
            .clk_write(clk_write), 
            .rst(rst),
            .enable_read(enable_read), 
            .enable_write(enable_write),
            .data_in(data_in),
            // Outputs
            .data_out(data_out),
            .empty(empty), 
            .full(full), 
            .half_full(half_full), 
            .counter(counter));

    // Tasks
    task enqueue(input [width_in-1:0] data);
    begin
        // $display("enqueue called");
        if (full) $display("Warning: Cannot enqueue: FIFO is full.");
        else
            begin
            // $display("Pushed ", data, empty);
            data_in = data;
            enable_write = 1'b1;
            @(posedge clk_write);
                #1 enable_write = 1'b0;
            end
    end
    endtask

    task dequeue();
    begin
        // $display("enqueue called");
        if (empty) $display("Warning: Cannot dequeue: FIFO is empty.");
        else
            begin
            // $display("Pushed ", data, empty);
            enable_read = 1'b1;
            @(posedge clk_read) 
                #1 enable_read = 1'b0;
            end
    end
    endtask


    // set clock frequencies, reader is independent of writer
    initial begin
        clk_read = 1'b0;
        forever #2 clk_read = ~clk_read;
    end

    initial begin
        clk_write = 1'b0;
        forever #1.5 clk_write = ~clk_write;
    end

    // Test 1: Reset FIFO
    event tb_reset;
    initial begin
        forever @(tb_reset) begin
            #3 -> rst_high;
            #3 -> rst_low;
            if (empty != 1'b1) -> error;  // memory should be empty if it has been reset
            if (full != 1'b0) -> error;
            if (half_full != 1'b0) -> error;
            if (data_out != 0) -> error;  // reader read data when fifo is reset
            if (counter != 0) -> error;
            // update tb cycle, next test case is called manually (reset is used multiple times)
            -> tb_cycle_update;
        end
    end

    // Test 2: Write Until Full
    event tb_write_until_full;
    initial begin
        forever @(tb_write_until_full) begin
            // starting from empty, write elements until queue is full
            if (empty == 1'b0) -> error;
            if (full == 1'b1) -> error;
            // starting from empty, append elements until queue is full
            for (i=0; i < depth; i=i+1) begin
                if (full != 1'b0) -> error; // queue should not be full since it will have at most depth - 1 elements here in the loop
                enqueue(i);
                if (empty != 1'b0) -> error; // stuff is getting pushed, can't be empty
            end
            // queue is now full, if we push now, full boolean should be true, otherwise error
            enqueue(i);
            if (full != 1'b1) -> error;
            if (empty == 1'b1) -> error;

            // update tb cycle, jump to next test case
            -> tb_cycle_update;
            #5 -> tb_read_until_empty; 
        end
    end
    
    // Test 3: Read Until Empty
    event tb_read_until_empty;
    initial begin
        forever @(tb_read_until_empty) begin
            // starting from full, read elements until queue is empty
            if (empty == 1'b1) -> error;
            if (full == 1'b0) -> error;
            for (i=0; i < depth; i=i+1) begin
                dequeue();
                if (full == 1'b1) -> error;
            end
            dequeue();
            if (empty != 1'b1) -> error;
            if (full != 1'b0) -> error;
            // update tb cycle, jump to next test case
            -> tb_cycle_update;
            #5 -> tb_half_full_half_empty; 
        end
    end

    // Test 4: Half Full/Half Empty
    event tb_half_full_half_empty;
    initial begin
        forever @(tb_half_full_half_empty) begin
            // starting from empty, write elements until queue is half-full
            if (empty == 1'b0) -> error;
            if (full == 1'b1) -> error;
            if (half_full == 1'b1) -> error;
            // starting from empty, append elements until queue is full
            for (i=0; i < depth / 2; i=i+1) begin
                if (full != 1'b0) -> error; // queue should not be full since it will have at most depth - 1 elements here in the loop
                enqueue(i);
                if (empty != 1'b0) -> error; // stuff is getting pushed, can't be empty
            end
            // queue is now full, if we push now, full boolean should be true, otherwise error
            if (full == 1'b1) -> error;
            if (empty == 1'b1) -> error;
            if (half_full == 1'b0) -> error; // queue should be half full/half-empty, otherwise raise error
            // update tb cycle, jump to next test case
            -> tb_cycle_update;
            -> tb_reset;
            #10 -> tb_read_write_instantaneous;
        end
    end

    // Test 5: Half Full/Half Empty
    event tb_read_write_instantaneous;
    initial begin
        forever @(tb_read_write_instantaneous) begin
            // starting from empty, write and read at the same time
            if (empty == 1'b0) -> error;
            enqueue(temp);
            dequeue();
            if (temp != data_out) -> error;
            // simultaneous writing and reading, should read previously written value first, and second value second
            fork
                enqueue(temp+1);
                dequeue();
            join
            if (data_out != temp) -> error;
            dequeue();
            if (data_out != temp+1) -> error;
            // update tb cycle, trigger watchdog
            -> tb_cycle_update;
            #10 -> watchdog;
        end
    end

    initial begin
        // Start the test suite
        #0 -> tb_reset;
        #6 -> tb_write_until_full;
    end

    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("fifo.vcd");
        $dumpvars(0, fifo_tb);
    end

endmodule