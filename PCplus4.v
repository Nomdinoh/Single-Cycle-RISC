`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 03:14:00 PM
// Design Name: 
// Module Name: Adder4orbranch
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


module Adder4orbranch(
input [31:0]PCF,
output [31:0]PCPlus4F
);

assign PCPlus4F = PCF + 3'b100;

endmodule
