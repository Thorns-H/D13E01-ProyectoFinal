`timescale 1ns/1ns

module Mem(
    input Ewr,
    input [31:0]Adress,
    input [31:0]WriteD,
    output reg[31:0]Rdata

);

reg [31:0] T [0:31];

always @* begin
    T[Adress] <= WriteD;
    
  if (Ewr == 1) 
    begin
      Rdata <= T[Adress]; 
    end

      
end

endmodule

