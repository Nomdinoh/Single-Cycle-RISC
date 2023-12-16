`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 02:44:59 PM
// Design Name: 
// Module Name: Execute_mux_2
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


module Execute_mux_2(
input [31:0] rs2_data,
input [31:0] Result,
input [31:0] AddResult,
input [1:0] Forward_BE,
output [31:0] WriteDataE
    );
    
    assign WriteDataE =  (Forward_BE==2'b00)?rs2_data:
                         (Forward_BE==2'b01)?Result:
                         (Forward_BE==2'b10)?AddResult:rs2_data;
endmodule
