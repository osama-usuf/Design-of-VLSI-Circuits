module mux81_tb ();
    reg clk_read,
        clk_write, 
        rst,
        enable_read, 
        enable_write;

    reg D0, D1, D2, D3, D4, D5, D6, D7;
    reg[2:0] Sel_Baud_Rate;
    wire out;


    integer tb_cycle_number = 1;
    integer total_errors = 0;  // tracking total errors in assertions
    integer i; // loop variable

    //////////// EVENTS //////////////

    // Increment TB cycle number
    event tb_cycle_update;
    initial begin 
        forever @(tb_cycle_update) begin
            tb_cycle_number = tb_cycle_number + 1;
        end
    end

    // Increment error variable for error monitor
    event error;
    initial begin 
        forever @(error) begin
            total_errors = total_errors + 1;
        end
    end

    // Error Monitor
    initial  begin
        $display("\t\tTime, TB Cycle Number,\terror count"); 
        $monitor("\t%d,\t%d", $time, tb_cycle_number, total_errors); 
    end 

    // Watchdog - used for exiting and reports error monitor
    event watchdog;
    initial begin
        forever @(watchdog) begin
            #10 $display("Total Error Count: ", total_errors);
            $finish;
        end
    end

    // Create the 8:1 multiplexer
    mux81 mux_for_clocks(
            .out(out),
            .D0(D0), 
            .D1(D1), 
            .D2(D2), 
            .D3(D3), 
            .D4(D4), 
            .D5(D5), 
            .D6(D6), 
            .D7(D7),
            .Sel_Baud_Rate(Sel_Baud_Rate));


    event randomize_inputs;
    initial begin 
        forever @(randomize_inputs) begin
            D0 = {$random} % 2;
            D1 = {$random} % 2;
            D2 = {$random} % 2;
            D3 = {$random} % 2;
            D4 = {$random} % 2;
            D5 = {$random} % 2;
            D6 = {$random} % 2;
            D7 = {$random} % 2;
            -> tb_cycle_update;
        end
    end


    event cycle_select;
    initial begin 
        forever @(cycle_select) begin
            $display(out);
            Sel_Baud_Rate = 3'b0;
            if (out != D0) -> error;
            #5 Sel_Baud_Rate = Sel_Baud_Rate + 1;
            #5 if (out != D1) -> error;
            #5 Sel_Baud_Rate = Sel_Baud_Rate + 1;
            #5 if (out != D2) -> error;
            #5 Sel_Baud_Rate = Sel_Baud_Rate + 1;
            #5 if (out != D3) -> error;
            #5 Sel_Baud_Rate = Sel_Baud_Rate + 1;
            #5 if (out != D4) -> error;
            #5 Sel_Baud_Rate = Sel_Baud_Rate + 1;
            #5 if (out != D5) -> error;
            #5 Sel_Baud_Rate = Sel_Baud_Rate + 1;
            #5 if (out != D6) -> error;       
            #5 Sel_Baud_Rate = Sel_Baud_Rate + 1;
            #5 if (out != D7) -> error;
            -> tb_cycle_update;
        end
    end

    // Test Case Loop
    always @ (*) begin
        case(tb_cycle_number)
            1: -> randomize_inputs;
            2: -> cycle_select;
            default: -> watchdog;
        endcase
    end

    // Log *vcd file for vieweing in gtkWave
    initial begin
        $dumpfile("8to1mux.vcd");
        $dumpvars(0, mux81_tb);
    end

endmodule