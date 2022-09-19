`timescale 1ns/1ps
module tb_mealy();
reg clk, rst, in;
wire out_non_overlapping;
initial begin
	clk = 0;
	rst = 1;
	in = 0;
	repeat (10)	rst = 0; 
end
always #1 clk = ~clk;
always #15 in = $random;
non_overlapping_mealy u_non_overlapping_mealy (.in(in), .rst(rst), .clk(clk), .out(out_non_overlapping));
initial begin
#1;
$finish;
end

initial
 begin
    $dumpfile("test.vcd");
    $dumpvars(0,tb_mealy);
 end

endmodule