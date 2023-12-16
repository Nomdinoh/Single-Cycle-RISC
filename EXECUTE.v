`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 02:56:08 PM
// Design Name: 
// Module Name: EXECUTE
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


module EXECUTE(
input [31:0] rs1_add,
input [31:0] rs2_add
    );
    
Execute_mux_1 m1(
        .rs1_data(rs1_add),
        .Result(),
        .AddResult(),
        .Forward_AE(),
        .SrcAR()
        );
Execute_mux_2 m2(
        .rs2_data(rs2_add),
        .Result(),
        .AddResult(),
        .Forward_BE(),
        .WriteDataE()
            );    
Execute_mux_3 m3(
            .WriteDataE(),
            .ImmExt(),
            .ALUSrc(),
            .SrcBE()
                );            
endmodule
