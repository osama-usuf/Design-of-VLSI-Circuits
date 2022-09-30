`timescale 1ns/1ps
// depth is the total size of the FIFO memory, i.e. the total number of elements
// that can be stored inside the memory

// ptr_size is simply the number of bits required to index all elements of the array
// 2**ptr_size = depth

// width_in = width of the data that is read from/written into the FIFO array

module fifo
    #(parameter depth = 96,
      parameter ptr_size = $clog2(depth), // # of bits to completely address all depth entries of the FIFO array
      parameter width_in = 8,
      parameter width_out = 1 * width_in) // TODO

    // inputs
    (input clk_read,
            clk_write, 
            rst,
            enable_read, 
            enable_write,
    input [width_in-1:0] data_in,

    // outputs
    output reg [width_out-1:0] data_out,
    output reg  empty, 
                full, 
                half_full, 
    output reg [ptr_size:0] counter); // counts the number of elements inside the FIFO array

    reg[ptr_size-1:0] ptr_read, ptr_write;           // pointer to read and write addresses  
    reg [width_in-1:0] fifo_mem[depth-1:0];     // actual 2D memory array  

    // loop counter
    integer i;
    // logic for full, empty, and half-full
    // directly use the counter information to determine this
    always @ (counter) begin
        empty = (counter == 0);
        full = (counter == depth);
        half_full = (counter == (depth >> 1)); // 96 in binary is 1100000, half of 96 = 48 is 110000, equivalent to a shift right operation
    end

    // asynchronous reset of the memory
    always @ (posedge rst) begin
        counter <= 0;
        ptr_write <= 0;
        ptr_read <= 0;
        data_out <= 0;
        empty <= 1'b1; // on reset, memory gets emptied
        full <= 1'b0;
        half_full <= 1'b0;
        for (i=0; i < depth; i=i+1) begin
            fifo_mem[i] <= {width_in{1'b0}}; // write 0's to all memory when resetting
        end
    end

    // read logic
    always @ (posedge clk_read) begin
        if (enable_read && !empty) begin
            // read data from fifo, increment read pointer and decrement counter
            // TODO: Make this generic based on multiple read ports
            data_out <= fifo_mem[ptr_read];
            ptr_read <= ptr_read + 1;
            counter <= counter - 1;
        end
        else begin
            // do nothing, latch onto previous values
            data_out <= data_out;
            ptr_read <= ptr_read;
            counter <= counter;
        end
    end

    // write logic
    always @ (posedge clk_write) begin
        if (enable_write && !full) begin
            // write data from fifo, increment write pointer and counter
            fifo_mem[ptr_write] <= data_in;
            ptr_write <= ptr_write + 1;
            counter <= counter + 1;
        end
        else begin
            // do nothing, latch onto previous values
            fifo_mem[ptr_write] <= fifo_mem[ptr_write];
            ptr_write <= ptr_write;
            counter <= counter;
        end
    end



endmodule