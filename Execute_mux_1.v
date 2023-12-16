`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 02:34:52 PM
// Design Name: 
// Module Name: Execute_mux_1
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


module Execute_mux_1(
input [31:0] rs1_data,
input [31:0] Result,
input [31:0] AddResult,
input [1:0] Forward_AE,
output [31:0] SrcAR
    );
    
    assign SrcAR =  (Forward_AE==2'b00)?rs1_data:
                    (Forward_AE==2'b01)?Result:
                    (Forward_AE==2'b10)?AddResult:rs1_data;
    
endmodule
