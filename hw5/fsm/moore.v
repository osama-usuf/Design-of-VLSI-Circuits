module moore
    // state encodings
    #(parameter white_state = 2'b00,
      parameter red_state = 2'b01,
      parameter green_state = 2'b10,
      parameter blue_state = 2'b11)
     (input clk, 
      input reset, // asynchronous reset port
      input red, green, blue, // 3-bit input
      output reg moore_out, // moore output: 1 when a state change corresponds to a color change
      output reg [1:0] current_state, next_state // 4 possible states, so we require at least 2 bits
     );
    
    // moore FSM - output is a function of only current state

    // next state combinational logic + output logic (combined)
    always @ (red or green or blue or current_state) begin
        case (current_state)
            red_state: begin
                moore_out = 1;
                if (red) next_state = red_state;
                else next_state = white_state;
            end

            green_state: begin
                moore_out = 1;
                if (green) next_state = green_state;
                else next_state = white_state;
            end

            blue_state: begin
                moore_out = 1;
                if (blue) next_state = blue_state;
                else next_state = white_state;
            end

            white_state: begin
                moore_out = 0;
                if (red) next_state = red_state;
                else if (green) next_state = green_state;
                else if (blue) next_state = blue_state;
                else next_state = white_state;
            end
            
            default: next_state = white_state;

        endcase
    end

    // state registers, sequential logic
    always @ (posedge clk or posedge reset) begin
        if (reset) current_state = white_state; // asynchronous reset
        else current_state = next_state; // take the moore output
    end

endmodule