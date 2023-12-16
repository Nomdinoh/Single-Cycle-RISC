`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 03:12:13 PM
// Design Name: 
// Module Name: mux_2x1
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


module mux_2x1(
input [31:0]PCPlus4F,
input [31:0]PCTargetE,
input PCSrcE,
output [31:0]PCF_bar
);

assign PCF_bar = (PCSrcE)? PCTargetE:PCPlus4F;

endmodule
