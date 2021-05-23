`timescale 1ns/1ns

module UnidadDeControl(
    input [5:0]op,
    output reg MemToReg,
    output reg MemToWrite,
    output reg [2:0]AluOp,
    output reg RegWrite

);

always @* 
begin
    case(op)
      6'b000000:
      begin
        MemToReg = 0;
        MemToWrite = 0;
        AluOp = 001;
        RegWrite = 1;
      end
      
    endcase
end

endmodule
