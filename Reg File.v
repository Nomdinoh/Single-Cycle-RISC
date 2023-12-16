`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/03/2023 11:21:31 AM
// Design Name: 
// Module Name: Reg File
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


module RegFile(
input clk,
input reset,
input [3:0] rs1_add,
input [3:0] rs2_add,
input [3:0] rd_add,
input regf_write_CS,
input [31:0] write_data,
output [31:0] rs1_data,
output [31:0] rs2_data
    );
    
    integer i;
    reg [31:0] Registers [31:0];
    
    //Read Data
    assign rs1_data = Registers[rs1_add];
    assign rs2_data = Registers[rs2_add];
        
    // Write Data
    always @(posedge clk,posedge reset)
    begin
        if(reset)
        begin
            for(i=0;i<32;i=i+1)
                Registers[i] <= 32'b0;
        end
        else if(regf_write_CS)
        begin
            Registers[rd_add] <= write_data;
            Registers[0] <= 32'b0;
        end
        else begin
            for(i=0;i<32;i=i+1)
                Registers[i] <= Registers[i];
        end
    end
    
endmodule
