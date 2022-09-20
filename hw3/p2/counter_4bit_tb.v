module counter_4bit_tb ();
    // note to self
    // in TB: inputs are reg, outputs are wires
    // in module: inputs are wires, outputs are reg
    wire [3:0] out;
    reg clk, rst, load, enable;
    reg [3:0] D;

    counter_4bit c4b(
        .out(out), 
        .D(D), 
        .clk(clk), 
        .rst(rst),
        .load(load), 
        .enable(enable));

    // clk
    initial clk=1'b1;
    always #10 clk=~clk;

    // D - input data for loading
    initial D = 4'b1101;

    // reset
    initial begin
        #0 rst = 1'b0;
        #20 rst = 1'b1;
        #15 rst = 1'b0;
    end

    // enable
    initial begin
        #0 enable = 1'b1;
        #50 enable = 1'b0; // set enable pin after reset, helps checking active low-enabled counting
    end

    // load
    initial begin
        #0 load = 1'b0;
        #360 load = 1'b1;
        #20 load = 1'b0;
    end

    // log details in text format
	initial begin
        $display ("time\t clk\t reset\t enable\t load \t dataIn \t out\t");
        $monitor ("%g\t %b\t %b\t %b\t %b\t %b\t %b\t", $time, clk, rst, enable, load, D, out);
        #450 $finish;
    end

    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("counter_4bit_vcd.vcd");
        $dumpvars(0, counter_4bit_tb);
    end

endmodule