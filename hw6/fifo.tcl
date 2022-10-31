remove_design -all
analyze -library WORK -format verilog {/home/ead/osamayousuf/6213/hw6/stg_moore_fsm.v}
elaborate stg_moore_fsm -architecture verilog -library DEFAULT
link

create_clock clk -period 40 -waveform {0 20}

set_clock_latency  0.3 clk
set_clock_uncertainty 0.4 clk

set_input_delay 2.0 -clock clk [all_inputs]

set_output_delay 1.65 -clock clk [all_outputs]

set_load 0.1 [all_outputs]
set_max_fanout 1  [all_inputs]
set_fanout_load 8 [all_outputs]

report_port 

set_max_area 1

uplevel #0 check_design

check_design > ./stg.check

compile -exact_map

write -f verilog -output stg.vh
write -hier -output stg.db

change_selection -name global -replace [get_timing_paths -delay_type max -nworst 1 -max_paths 1 -include_hierarchical_pins]

check_design >> ./stg_design.check
check_timing >> ./stg_timing.check

# Reports
report_timing > ./stg.timing
report_area > ./stg.area
report_cell > ./stg.cell
report_constraint > ./stg.constraint