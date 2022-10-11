module mux81(out, D0, D1, D2, D3, D4, D5, D6, D7, Sel_Baud_Rate);
    input wire D0, D1, D2, D3, D4, D5, D6, D7;
    input wire[2:0] Sel_Baud_Rate;
    output reg out;
    // TODO: based on select pin, program corresponding divide by X
    always@(*) begin
        case(Sel_Baud_Rate)   // div by N
            3'b000: out<=D0;  // 2
            3'b001: out<=D1;  // 4
            3'b010: out<=D2;  // 8
            3'b011: out<=D3;  // 16
            3'b100: out<=D4;  // 34
            3'b101: out<=D5;  // 64
            3'b110: out<=D6;  // 128
            3'b111: out<=D7;  // 255
            default: out<=1'b0;
        endcase
    end
endmodule