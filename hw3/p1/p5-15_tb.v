/* 

From book - example 5.46

I have assumed a word size of 4 bits, because I was running into compilation errors

*/

module p5_15_tb ();

    reg  D_in, clk, rst;
    output P_odd;

    p5_15 dvt(
        .P_odd(P_odd), 
        .D_in(D_in), 
        .clk(clk), 
        .rst(rst));

    initial clk=1'b0;
    always #10 clk=~clk;

    initial rst=1'b1;
    initial begin
        #20 rst = 1'b0;
        #400 rst = 1'b1;
        #20 rst = 1'b0;
    end

    initial D_in=1'b0;

    initial begin
        // alternate between 1 and 0, with a bigger gap in between
        #25 D_in=1'b1;
        #25 D_in=1'b0;
        #25 D_in=1'b1;
        #25 D_in=1'b0;
        #300 D_in=1'b1;
        #25 D_in=1'b0;
        #25 D_in=1'b1;
        #25 D_in=1'b0;
        #25 D_in=1'b1;
        #25 D_in=1'b0;
        #300 D_in=1'b1;
    end

    initial begin
        #1000 $finish;
    end

    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("p5_15_vcd.vcd");
        $dumpvars(0, p5_15_tb);
    end

endmodule