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

    reg [width_out-1:0] temp_data; // temporary data being read/dequeued from the FIFO mem array

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
        $display("\t\tTB Cycle Number,\terror count"); 
        $monitor("\t%d,\t%d", tb_cycle_number, total_errors); 
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

    // Handled in task for enqueue/dequeue
    // Enable/Disable events
    // event enable_reader;
    // event enable_writer;
    // event disable_reader;
    // event disable_writer;
    // initial begin
    //     forever @(enable_reader) enable_read = 1'b1;
    // end
    // initial begin
    //     forever @(enable_writer) enable_write = 1'b1;
    // end
    // initial begin
    //     forever @(disable_reader) enable_read = 1'b0;
    // end
    // initial begin
    //     forever @(disable_writer) enable_write = 1'b0;
    // end

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

    task dequeue(output [width_out-1:0] data);
    begin
        // $display("enqueue called");
        if (empty) $display("Warning: Cannot dequeue: FIFO is empty.");
        else
            begin
            // $display("Pushed ", data, empty);
            data = data_out;
            enable_read = 1'b1;
            @(posedge clk_read);
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
                dequeue(temp_data);
                if (full == 1'b1) -> error;
            end
            dequeue(temp_data);
            if (empty != 1'b1) -> error;
            if (full != 1'b0) -> error;
            -> tb_cycle_update;
        end
    end

    initial begin
        #0 -> tb_reset;
        #6 -> tb_write_until_full;
        //#1000 -> tb_read_until_empty;
    end

    initial begin
        // TODO: Make Watchdog event and Stop based on that
        //TODO: add cases for halffull/half empty, read and write at same time, etc.
        #5000 $display("Total Error Count: ", total_errors);
        $finish;
    end

    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("fifo.vcd");
        $dumpvars(0, fifo_tb);
    end

endmodule