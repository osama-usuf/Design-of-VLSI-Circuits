# Remove existing designs, load our FIFO design

remove_design -all
analyze -library WORK -format verilog {/home/ead/osamayousuf/6213/hw6/fifo.v}
elaborate fifo -architecture verilog -library DEFAULT
link

# Create reader clock, period of 40 units (ns by default)
create_clock clk_read -period 40 -waveform {0 20}

# Clock parameters for realistic STA
set_clock_latency 0.3 clk_read 
set_clock_uncertainty 0.4 clk_read 

# Setting input and output delays for all inputs + outputs 
# (specified individually since writer's clock has to be excluded)
set_input_delay 2.0 -clock clk_read {rst enable_read enable_write data_in}
set_output_delay 1.65 -clock clk_read {data_out empty full half_full counter}

# Create reader clock, period of 40 units (ns by default)
create_clock clk_write -period 50 -waveform {0 20}

# Clock parameters for realistic STA
set_clock_latency 0.3 clk_write 
set_clock_uncertainty 0.4 clk_write 

# Setting input and output delays for all inputs + outputs 
# (specified individually since writer's clock has to be excluded)
set_input_delay 2.0 -clock clk_write {rst enable_read enable_write data_in}
set_output_delay 1.65 -clock clk_write {data_out empty full half_full counter}

# Misc. STA parameters
set_load 0.1 [all_outputs]
set_max_fanout 1  [all_inputs]
set_fanout_load 8 [all_outputs]

# DC to minimize the area as much as possible
set_max_area 0
uplevel #0 check_design

# Final Synthesis + Report Generation
compile -exact_map

write -f verilog -output fifo.vh
write -hier -output fifo.db

change_selection -name global -replace [get_timing_paths -delay_type max -nworst 1 -max_paths 1 -include_hierarchical_pins]

check_design >> ./fifo_design.check
check_timing >> ./fifo_timing.check

report_timing > ./fifo.timing
report_area > ./fifo.area
report_cell > ./fifo.cell
report_constraint > ./fifo.constraint
report_port > ./fifo.port