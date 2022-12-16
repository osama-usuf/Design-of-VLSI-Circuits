`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: The George washington Univerity
// Engineer: Joseph Riem
// 
// Create Date: 10/25/2022 10:15:14 AM
// Design Name: Integer Matrix Multiplication
// Module Name: MMinteger
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Parameter 18X18 matrix multiplication
// 
// Steps
// 1. Load A and B into registers
// 2. Preform Matrix Multiplication on i for the lower WIDTH-1 bits N times
// 	  Load calculated data into tempmult register
// 3. Calculate Sign and Carry for Matrix Multiiplcaiton, place result in tempadd array in 2's compliment
// 4. Sum tempadd array
// 5. Determine overflow
// 6. Go to step 2 if matrix not finished
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

// 18 * 18 * 16 = 5184
// 18 * 16 = 287

module top #(
	parameter M1 = 324,
	parameter N1 = 10,
	parameter M2 = 10,
	parameter N2 = 10,
	parameter WIDTH = 16
)(
	input clk,
	input resetn,
	input [(M1 * N1 * WIDTH)-1:0] A,
	input [(M1-1):0] B,
	input valid_in,
	input last_in,
	output reg valid_out,
	output reg last_out,
	output reg[3:0] label_out
);
	bit b;					//Temp for holding b
	real strd;				//Temp for holding file value
	integer i, j, f1, f2, fw, image;	
	shortint convfromfile;	//Temp to cast to 16-bits
	//For MM
	reg [(M1 * N1 * WIDTH)-1:0] mm_a1;	//Matrix Multiplication in
	reg [(M2 * N2 * WIDTH)-1:0] mm_a2;	//Matrix Multiplication in
	reg [M1-1:0] mm_b;		//Matrix Multiplication in
	reg [M1-1:0] mm_b_temp;		//Matrix Multiplication in
	reg [N1-1:0] mm_ovr1;				//Matrix Multilcation overflow
	reg [N2-1:0] mm_ovr2;				//Matrix Multilcation overflow
	reg [(N1 * WIDTH)-1:0] mm_act;	//Matrix Multiplication out | activation in
	reg [(N2 * WIDTH)-1:0] act_out;	//Activation out
	reg [(N2 * WIDTH)-1:0] mm2_out;	//Activation out
	
	MM1 UUT1(A, B, mm_act, mm_ovr1);
	fullReLU UUT2(mm_act, act_out);
	MM2 UUT3(mm_a2, act_out, mm2_out);
	label UUT4(mm2_out, label_out);
	
	always @(negedge resetn, posedge clk) begin
	if(~resetn)
	    label_out <= 1'b0;
	else 
	    if(clk) begin
	        valid_out <= valid_in;
	        last_out <= last_in;
	    end
	end
endmodule

module MM1 #(
	parameter M1 = 324,
	parameter N1 = 10,
	parameter WIDTH = 16
)(
	input [(M1 * N1 * WIDTH)-1:0] A,
	input [(M1-1):0] B,
	output reg [(N1 * WIDTH)-1:0] C,
	output reg [N1-1:0] ovr

);

//Temporary registers
reg signed [WIDTH-1:0] matA [N1-1:0][M1-1:0];	//NXN array
reg signed matB [M1-1:0];		//Column array
reg signed [WIDTH-1:0] matC [N1-1:0];		//Results

reg signed [WIDTH-1:0] tempmult [M1-1:0];//Register that hold multiplcation vector to be added
integer i,j,fw,log;								//counters
reg tsign;									//Temp sign for con
reg multover;								//Multiplcation overflow
reg sumsign;								//Sum sign
reg signed [WIDTH-1:0] temp = 16'd0;			//Temp registor for multiplication
reg signed [WIDTH-1:0] temppre = 16'd0;			//Temp registor for multiplication


always @(A or B)
begin
	//Fill data
	for (i=0; i<=N1-1; i=i+1) begin				//Main loop(Loop through rows of matrix)
		temp = 0;
		temppre = 0;

		for (j=0; j<=M1-1; j=j+1)begin			//Secondary Loop (Loop through columns) 
			matB[j] = B[j];				//Load ith entry of B reg
			matA[i][j] = A[(i*M1+j)*16+:16];		//Load ijth entry of A reg

			tempmult[j] = (matA[i][j][15:0] * matB[j]); //Multiply lower 15, store in array length 30

			temppre = temp;
			temp = temp + tempmult[j];				//Do addition
			if((~(temppre[15] ^ tempmult[j][15])) && (temppre[15] ^ temp[15]))begin		//Check for oveflow
				temp = temp[15] == 1 ? 16'h7FFF : 16'h8000; 
			end
		end

		C[(i*16)+:16] = temp;		//Concatenation
		matC[i] = temp;
	end
end
endmodule

module fullReLU #(
	parameter N1 = 10,
	parameter WIDTH = 16
)(
	input [(N1 * WIDTH)-1:0] Pre,
	output reg [(N1 * WIDTH)-1:0] Post
);
integer i;
reg signed PreRegComp [N1-1:0];				//TB variable, easily see Most Significant Bit
reg signed [WIDTH-1:0] PreReg [N1-1:0];		//TB variable, easily see split up input
reg signed [WIDTH-1:0] PostReg [N1-1:0];		//See split up output
always @(Pre) begin
	begin
		for(i=0; i<=N1-1; i=i+1)begin
			PreReg[i] = Pre[((i*16))+:16];			//
			PreRegComp[i] = Pre[((i+1)*16)-1];
			PostReg[i] = (Pre[((i+1)*16)-1] == 0 ? Pre[((i*16))+:16] : 16'h0000);
			Post[((i*16))+:16] = PostReg[i];
		end
	end
end
endmodule

module MM2 #(
	parameter M2 = 10,
	parameter N2 = 10,
	parameter WIDTH = 16,
	parameter FRAC = 8
)(
	input [(M2 * N2 * WIDTH)-1:0] A,
	input [(N2 * WIDTH)-1:0] B,
	output reg [(N2 * WIDTH)-1:0] C
	//output reg [N2-1:0] ovr
);

//Temporary registers
reg signed [WIDTH-1:0] matA [N2-1:0][M2-1:0];	//NXN array
reg signed [WIDTH-1:0] matB [M2-1:0];		//Column array
reg signed [WIDTH-1:0] matC [N2-1:0];		//Results

reg signed [2*WIDTH-1:0] tempmult [M2-1:0];//Register that hold multiplcation vector to be added
integer i,j,fw,log;								//counters
reg tsign;									//Temp sign for con
reg multover;								//Multiplcation overflow
reg sumsign;								//Sum sign
reg signed [WIDTH-1:0] temp = 16'd0;			//Temp registor for multiplication
reg signed [WIDTH-1:0] temppre = 16'd0;			//Temp registor for multiplication
reg signed [WIDTH-1:0] quantized_result, quantized_result_2cmp = 16'd0;
reg signed [WIDTH-1:0] quantizedtemp = 16'd0;
reg [WIDTH-1:0] multiplicand;
reg [WIDTH-1:0] multiplier;

always @(A or B)
begin
	//$display(B);
	//Fill data
	for (i=0; i<=N2-1; i=i+1) begin				//Main loop(Loop through rows of matrix)
		temp = 0;
		temppre = 0;
		quantized_result = 0;

		for (j=0; j<=M2-1; j=j+1)begin			//Secondary Loop (Loop through columns) 
			matB[j] = B[(j*16)+:16];				//Load ith entry of B reg		
			matA[i][j] = A[(i*M2+j)*16+:16];		//Load ijth entry of A reg

			multiplicand = (matA[i][j][WIDTH-1]) ? {~matA[i][j][WIDTH-1], ~matA[i][j][WIDTH-2:0]+ 1'b1} : matA[i][j];
		
			multiplier = matB[j];	
			tempmult[j] = multiplicand[WIDTH-2:0] * multiplier[WIDTH-2:0];
			quantizedtemp[WIDTH-1] = (tempmult[j][WIDTH-2+FRAC:FRAC] == 16'd0) ? 1'b0 : (matA[i][j][WIDTH-1] ^ matB[j][WIDTH-1]);		//Caclualte signed bit
			
			quantized_result = tempmult[j][WIDTH-2+FRAC:FRAC];
			quantized_result_2cmp = ~quantized_result[WIDTH-2:0] + 1'b1;

			quantizedtemp[WIDTH-2:0] = (matA[i][j][WIDTH-1] ^ matB[j][WIDTH-1]) ? quantized_result_2cmp : quantized_result;

			tsign = (tempmult[j][2*WIDTH-2:WIDTH-1+FRAC] > 0) ? 1'b1 : 1'b0;

			temppre = temp;
			temp = temp + quantizedtemp;				//Do addition
			if((~(temppre[15] ^ quantizedtemp[15])) && (temppre[15] ^ temp[15]))begin		//Check for oveflow
				temp = temp[15] == 1 ? 16'h7FFF : 16'h8000; 
			end
		end
		C[(i*16)+:16] = temp;		//Concatenation
		matC[i] = temp;
	end
end
endmodule

module label #(
	parameter M2 = 10,
	parameter N2 = 10,
	parameter WIDTH = 16
)(
	input [N2*WIDTH-1:0] prediction,
	output reg[3:0] descision
);
reg signed [WIDTH-1:0] pred [M2-1:0];		//Column array
reg signed [WIDTH-1:0] des = 1'b0;
reg signed [WIDTH-1:0] temp;
integer i, flabel;
always @(prediction) begin
	temp = 16'h0000;
	for(i = 0; i < M2; i=i+1)begin
		pred[i] = prediction[(i*16)+:16];
		if(pred[i] > temp)begin
			temp = pred[i];
			des = i;
			descision = des;		//Outout
		end
	end
end
endmodule