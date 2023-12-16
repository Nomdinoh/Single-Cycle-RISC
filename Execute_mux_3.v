`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 02:48:29 PM
// Design Name: 
// Module Name: Execute_mux_3
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


module Execute_mux_3(
input [31:0] WriteDataE,
input [31:0] ImmExt,
input ALUSrc,
output [31:0] SrcBE
    );
    
    assign SrcBE = (ALUSrc)?ImmExt:WriteDataE;
    
endmodule
