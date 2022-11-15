module fifo
    #(parameter depth = 4,
      parameter ptr_size = $clog2(depth), // # of bits to completely address all depth entries of the FIFO array
      parameter width_in = 2,
      parameter width_out = 1 * width_in) // TODO

    // inputs
    (input  clk,
            reset,
            enable_read, 
            enable_write,
    input [width_in-1:0] data_in,

    // outputs
    output reg [width_out-1:0] data_out,
    output reg empty, 
                full, 
                half_full, 
    output reg [ptr_size:0] counter); // counts the number of elements inside the FIFO array

    reg [ptr_size-1:0] ptr_read, ptr_write;           // pointer to read and write addresses  
    reg [width_in-1:0] fifo_mem[depth-1:0];     // actual 2D memory array 


	integer i; // loop variable
    
    always @ (counter) begin
        empty = (counter == 0);
        full = (counter == depth);
        half_full = (counter == (depth >> 1));
    end

    always @ (posedge clk or posedge reset) begin
        // asynchronous reset of the memory
        if (reset) begin
            counter <= 0;
            ptr_write <= 0;
            ptr_read <= 0;
            data_out <= 0;
            for (i=0; i < depth; i=i+1) begin
                fifo_mem[i] <= {width_in{1'b0}}; // write 0's to all memory when resetting
            end
        end
        // read logic
        else if (clk && enable_read && !empty) begin
            // read data from fifo, increment read pointer and decrement counter
            // TODO: Make this generic based on multiple read ports
            data_out <= fifo_mem[ptr_read];
            ptr_read <= ptr_read + 1;
            counter <= counter - 1;
        end
        // write logic
        else if (clk && enable_write && !full) begin
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
