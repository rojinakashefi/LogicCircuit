`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:51:10 12/05/2020 
// Design Name: 
// Module Name:    alu 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
	input [1:0] A ,
	input [1:0] B ,
	input [1:0]	sel ,
	output [3:0]Y
);
	wire [3:0] Add ;
	wire [3:0] Not ;
	wire [3:0] Nand ;
	wire [3:0] Multiply; 
	
	assign  Add = {1'b0,{1'b0,A} +{1'b0,B}} ;
	assign  Not = {A, ~A } ;
	assign  Nand = {1'b0,1'b0,~ ( A & B ) } ;
	assign  Multiply = {{1'b0,1'b0,A}*{1'b0,1'b0,B }};
	
	multiplexer mux( Multiply ,  Add ,  Nand  , Not  , sel , Y );
endmodule