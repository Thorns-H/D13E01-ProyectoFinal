`timescale 1ns/1ns

module mux2_1_5(
    input [4:0]mux_in1,
    input [4:0]mux_in2,
    input mux_s,
    output reg[4:0]mux_out

);

always @* 
begin
    case(mux_s)
      1'b0:
      begin
        mux_out <= mux_in2;
      end
      1'b1:
      begin
        mux_out <= mux_in1;
      end
    endcase
end

endmodule
