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

    // Declarations + definitions for events
    event rst_low;
    event rst_high;
    initial begin
        // sync rst, active high
        forever @(rst_low) rst = 1'b0;
    end

    initial begin
        // sync rst, active high
        forever @(rst_high) rst = 1'b0;
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
        $display("enqueue called");
        if (full)
            $display("Warning: Cannot enqueue: FIFO is full.");
        else
            begin
            $display("Pushed ", data, empty);
            data_in = data;
            enable_write = 1'b1;
            @(posedge clk_write);
                #1 enable_write = 1'b0;
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

    // append elements until full
    integer i;
    initial begin
        for (i=0; i < 500; i=i+1)
        begin
            enqueue(i);
        end
    end

// TODO: RESET FIFO TO BEGIN


    initial begin
    #5000 $finish;
    end

endmodule