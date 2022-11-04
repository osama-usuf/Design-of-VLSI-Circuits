`timescale 1ns/1ps

module fifo
    #(parameter depth = 96,
      parameter ptr_size = $clog2(depth), // # of bits to completely address all depth entries of the FIFO array
      parameter width_in = 8,
      parameter width_out = 1 * width_in) // TODO

    // inputs
    (input  clk_read,
	        clk_write,
            rst,
            enable_read, 
            enable_write,
    input [width_in-1:0] data_in,

    // outputs
    output reg [width_out-1:0] data_out,
    output reg empty, 
                full, 
                half_full, 
    output reg [ptr_size:0] counter); // counts the number of elements inside the FIFO array

    reg[ptr_size-1:0]  ptr_read, ptr_write;           // pointer to read and write addresses  
    reg [width_in-1:0] fifo_mem[depth-1:0];     // actual 2D memory array 

	integer i; // loop variable
    
    always @ (counter) begin
        empty = (counter == 0);
        full = (counter == depth);
        half_full = (counter == (depth >> 1)); // 96 in binary is 1100000, half of 96 = 48 is 110000, equivalent to a shift right operation
    end

    always @ (*) begin
        // asynchronous reset of the memory
        if (rst) begin
            empty <= 1'b1;
            full <= 1'b0;
            half_full <= 1'b0;
            counter <= 0;
            ptr_write <= 0;
            ptr_read <= 0;
            data_out <= 0;
            for (i=0; i < depth; i=i+1) begin
                fifo_mem[i] <= {width_in{1'b0}}; // write 0's to all memory when resetting
            end
        end
        // read logic
        else if (clk_read && enable_read && !empty) begin
            // read data from fifo, increment read pointer and decrement counter
            // TODO: Make this generic based on multiple read ports
            data_out <= fifo_mem[ptr_read];
            ptr_read <= ptr_read + 1;
            counter <= counter - 1;
        end
        // write logic
        else if (clk_write && enable_write && !full) begin
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
