remove_design -all
analyze -library WORK -format verilog {/home/ead/osamayousuf/6213/hw6/stg_moore_fsm.v}
elaborate stg_moore_fsm -architecture verilog -library DEFAULT
link

check_design > ./stg.check

# For FULL area optimization
set_max_area 0

compile -exact_map -area_effort high

write -f verilog -output stg_optimized.vh
write -hier -output stg_optimized.db

check_design >> ./stg_optimized_design.check

# Reports
report_timing > ./stg_optimized.timing
report_area > ./stg_optimized.area
report_cell > ./stg_optimized.cell
report_constraint > ./stg_optimized.constraint
