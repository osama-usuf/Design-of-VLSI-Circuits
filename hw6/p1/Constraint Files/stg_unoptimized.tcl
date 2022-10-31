remove_design -all
analyze -library WORK -format verilog {/home/ead/osamayousuf/6213/hw6/stg_moore_fsm.v}
elaborate stg_moore_fsm -architecture verilog -library DEFAULT
link

check_design > ./stg.check

# For MINIMAL area optimization
# set_max_area 0

compile -exact_map -area_effort low -only_hold_time

write -f verilog -output stg_unoptimized.vh
write -hier -output stgunoptimized.db

check_design >> ./stg_unoptimized_design.check

# Reports
report_timing > ./stg_unoptimized.timing
report_area > ./stg_unoptimized.area
report_cell > ./stg_unoptimized.cell
report_constraint > ./stg_unoptimized.constraint
