`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2022 06:28:12 AM
// Design Name: 
// Module Name: inference_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

/*
parameter M1 = 324;
parameter N1 = 10;
parameter M2 = 10;
parameter N2 = 10;

parameter WIDTH = 16;
parameter FRAC = 14;
*/

module inference_tb();
bit b;					//Temp for holding b
real strd;				//Temp for holding file value
integer i, f1, f2, fw, flabel, image;	
shortint convfromfile;	//Temp to cast to 16-bits
string tibfile, str = "";
//For MM
reg [(M1 * N1 * WIDTH)-1:0] mm_a1;	//Matrix Multiplication in
reg [(M2 * N2 * WIDTH)-1:0] mm_a2;	//Matrix Multiplication in
reg [M1-1:0] mm_b;		//Matrix Multiplication in
reg [M1-1:0] mm_b_temp;		//Matrix Multiplication in
//reg [N1-1:0] mm_ovr1;				//Matrix Multilcation overflow
//reg [N2-1:0] mm_ovr2;				//Matrix Multilcation overflow
reg [(N1 * WIDTH)-1:0] mm_act;	//Matrix Multiplication out | activation in
reg [(N2 * WIDTH)-1:0] act_out;	//Activation out
reg [(N2 * WIDTH)-1:0] mm2_out;	//Activation out

wire [3:0] label_out;

MM1 UUT1(mm_a1, mm_b, mm_act);
fullReLU UUT2(mm_act, act_out);
MM2 UUT3(mm_a2, act_out, mm2_out);
label UUT4(mm2_out, label_out);

//MMinteger UUT3(mm_a2, act_out, inf_out, mm_ovr2);

//Random  B matrix for now
initial begin
	f1 = $fopen("N:\\Electronic_Projects\\ECE6213\\MM\\fc1_weight.txt", "r");
	f2 = $fopen("N:\\Electronic_Projects\\ECE6213\\MM\\fc2_weight.txt", "r");
	flabel = $fopen("N:\\Electronic_Projects\\ECE6213\\MM\\testprediciton\\label_v.txt", "w");
	$fclose(flabel);
	
	i = 0;
	do begin
		$fscanf(f1, "%f", strd);
		//$display(strd);
		mm_a1[((i*16))+:16] = shortint'(strd * (2**FRAC));
		i = i + 1;
	end while (i < (M1*N1));
	i = 0;
	do begin
		$fscanf(f2, "%f", strd);
		mm_a2[((i*16))+:16] = shortint'(strd * (2**FRAC));
		i = i + 1;
	end while (i < (M2*N2));
		
	image = 0;
	do begin
		str.itoa(image);
		//str = "2";
		tibfile = {"N:\\Electronic_Projects\\ECE6213\\MM\\testimages\\image_", str, ".txt"};
		//$display(str);
		$display(tibfile);
		fw = $fopen(tibfile, "r");
		i = 0;
		do begin
			$fscanf(fw, "%b", b);
			mm_b_temp[i] = b;
			i = i + 1;
		end while (i < M1);
		mm_b = mm_b_temp;
		$fclose(fw);
		image = image + 1;
		#10;
	end while(image < 10000);
	$fclose(f1);
	$fclose(f2);
end
endmodule