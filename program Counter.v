`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 03:13:04 PM
// Design Name: 
// Module Name: ProgramCounter
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


module ProgramCounter(
input [31:0]PCF_bar,
input reset,
input clk,
input stall, 
output reg [31:0]PCF);

always @(posedge clk,posedge reset)
begin
	if(reset)
		PCF <= 32'b0;
	else if (stall)
		PCF <= PCF;
	else begin
		PCF <= PCF_bar;
	end
end
endmodule
