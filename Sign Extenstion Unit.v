`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 02:01:17 PM
// Design Name: 
// Module Name: Sign_Extenstion
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


module Sign_Extenstion(
input [31:7] Instr,
input [1:0] ImmSrc,
output reg [31:0] ImmExt
    );
    
    always @(*)
    begin
        case(ImmSrc)
            2'b00: ImmExt = {{20{Instr[31]}},Instr[31:20]};   // 00 => I type
            2'b01: ImmExt = {{21{Instr[31]}},Instr[31:25],Instr[11:7]};   // 01 => S type
            2'b10: ImmExt = {{20{Instr[31]}},Instr[7],Instr[30:25],Instr[11-8],1'b0};  // 10 => B 
            2'b11: ImmExt = {{12{Instr[31]}},Instr[19:12],Instr[20],Instr[30:21],1'b0};  // 11 => J
        endcase
    end
    
endmodule
