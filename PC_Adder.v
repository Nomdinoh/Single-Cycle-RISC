`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 02:53:00 PM
// Design Name: 
// Module Name: PC_Adder
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


module PC_Adder(
input [31:0] PCF,
input [31:0] ImmExt,
output [31:0] PCTargetE
    );
    
    assign PCTargetE = PCF + ImmExt;
    
endmodule
