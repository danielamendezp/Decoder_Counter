`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2022 18:51:44
// Design Name: 
// Module Name: Decodificador2a4
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


module Decodificador2a4(
    input [1:0] A,
    output reg [3:0] B
    );

always @(A)
    
    case (A)
            2'b00: B = 4'b0001;
            2'b01: B = 4'b0010;
            2'b10: B = 4'b0100;
            2'b11: B = 4'b1000;   
     endcase                
            
endmodule
