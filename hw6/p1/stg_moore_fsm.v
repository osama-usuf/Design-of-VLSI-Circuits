module stg_moore_fsm
    // state encodings
    #(parameter s0 = 3'b000,
      parameter s1 = 3'b001,
      parameter s2 = 3'b010,
      parameter s3 = 3'b011,
      parameter s4 = 3'b100,
      parameter s5 = 3'b101,
      parameter s6 = 3'b110,
      parameter s7 = 3'b111)
     (input clk, reset, in,
      output reg out,
      output reg [2:0] current_state, next_state // 8 possible states, so we require 3 bits
     );

    // next state combinational logic + output logic (combined)
    always @ (s0 or s1 or s2 or s3 or s4 or s5 or s6 or s7) begin
        case (current_state)
            s0: begin
                out = 0;
                if (in) next_state = s2;
                else next_state = s4;
            end

            s1: begin
                out = 0;
                if (in) next_state = s3;
                else next_state = s7;
            end

            s2: begin
                out = 0;
                if (in) next_state = s6;
                else next_state = s3;
            end

            s3: begin
                out = 1;
                if (in) next_state = s4;
                else next_state = s7;
            end

            s4: begin
                out = 1;
                if (in) next_state = s3;
                else next_state = s5;
            end

            s5: begin
                out = 0;
                if (in) next_state = s4;
                else next_state = s1;
            end

            s6: begin
                out = 0;
                if (in) next_state = s0;
                else next_state = s4;
            end

            s7: begin
                out = 0;
                if (in) next_state = s3;
                else next_state = s5;
            end

            default: next_state = s0;

        endcase
    end

    // state registers, sequential logic
    always @ (posedge clk or posedge reset) begin
        if (reset) current_state = s0; // asynchronous reset
        else current_state = next_state;
    end

endmodule