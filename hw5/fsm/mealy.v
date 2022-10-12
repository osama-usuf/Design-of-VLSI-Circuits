module mealy
    // state encodings
    #(parameter white_state = 2'b00,
      parameter red_state = 2'b01,
      parameter green_state = 2'b10,
      parameter blue_state = 2'b11)
     (input clk, 
      input reset, // asynchronous reset port
      input red, green, blue, // 3-bit input
      output reg mealy_out, // mealy output: 1 when a state change corresponds to a color change
      output reg[1:0] current_state, next_state // 4 possible states, so we require at least 2 bits
     );
    
    // Mealy FSM - output is a function of current state and input

    // next state combinational logic + output logic (combined)
    always @ (red or green or blue or current_state) begin
        case (current_state)

            red_state:
                if (red) begin
                    mealy_out = 0;
                    next_state = red_state;
                end
                else begin
                    if (green || blue) mealy_out = 1;
                    else mealy_out = 0;
                    next_state = white_state;
                end

            green_state:
                if (green) begin
                    mealy_out = 0;
                    next_state = green_state;
                end
                else begin
                    if (red || blue) mealy_out = 1;
                    else mealy_out = 0;
                    next_state = white_state;
                end

            blue_state:
                if (blue) begin
                    mealy_out = 0;
                    next_state = blue_state;
                end
                else begin
                    if (red || green) mealy_out = 1;
                    else mealy_out = 0;
                    next_state = white_state;
                end

            white_state:
                if (red) begin
                    mealy_out = 1;
                    next_state = red_state;
                end
                else if (green) begin
                    mealy_out = 1;
                    next_state = green_state;
                end
                else if (blue) begin
                    mealy_out = 1;
                    next_state = blue_state;
                end
                else begin
                    mealy_out = 0;
                    next_state = white_state;
                end

            default: next_state = white_state;
            
        endcase
    end

    // state registers, sequential logic
    always @ (posedge clk or posedge reset) begin
        if (reset) current_state = white_state; // asynchronous reset
        else current_state = next_state; // take the mealy output
    end

endmodule