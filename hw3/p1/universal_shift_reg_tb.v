/* 

From book - example 5.46

I have assumed a word size of 4 bits, because I was running into compilation errors

*/

module universal_shift_reg_tb ();
    wire [3:0] data_out;
    wire msb_out, lsb_out;
    reg  [3:0] data_in;
    reg msb_in, lsb_in;
    reg  s1, s0, clk, rst;

    universal_shift_reg usr(
        .data_out(data_out), 
        .msb_out(msb_out), 
        .lsb_out(lsb_out),
        .data_in(data_in), 
        .msb_in(msb_in), 
        .lsb_in(lsb_in),
        .s1(s1), 
        .s0(s0), 
        .clk(clk), 
        .rst(rst));

    // choosing inputs to match waveforms from the book
    // rst
    initial begin
        #0   rst=1'b1;
        #22  rst=1'b0;
        #121  rst=1'b1;
        #22  rst=1'b0;
        #99  rst=1'b1;
        #22  rst=1'b0;
        #330 rst=1'b1;
        #22  rst=1'b0;
        #220  $finish;
    end
    // clk
    initial clk=1'b0;
    always #11 clk=~clk;
    // s0
    initial begin
        #0    s0=1'b0;
        #44   s0=1'b1;
        #88   s0=1'b0;
        #121  s0=1'b1;
        #209  s0=1'b0;
    end
    // s1
    initial begin
        #0    s1=1'b0;
        #154  s1=1'b1;
        #88   s1=1'b0;
        #22   s1=1'b1;
        #198  s1=1'b0;
    end
    // lsb_in
    initial lsb_in=1'b1;
    // msb_in
    initial msb_in=1'b1;
    // data_in
    initial data_in=4'b1111;
    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("universal_shift_reg_vcd.vcd");
        $dumpvars(0, universal_shift_reg_tb);
    end

endmodule