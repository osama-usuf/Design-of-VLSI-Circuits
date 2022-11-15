########### Inputs ################


# Enable pins for the reader and writer <-> DIP Switch 1-2
set_property -dict {LOC C7 IOSTANDARD LVCMOS15} [get_ports { enable_read_0 }];
set_property -dict {LOC B7 IOSTANDARD LVCMOS15} [get_ports { enable_write_0 }];

# Clock for the reader and writer <-> On-board System Clock
# 200 MHz LVDS
set_property -dict {LOC G9 IOSTANDARD LVDS} [get_ports { clk_in1_n_0 }];
set_property -dict {LOC H9 IOSTANDARD LVDS} [get_ports { clk_in1_p_0 }];

# Reset for the entire FIFO module <-> DIP Switch 3
set_property -dict {LOC A7 IOSTANDARD LVCMOS15} [get_ports { reset_0 }];

# Data_in (2-bits) <-> DIP Switch 4-5
#set_property -dict {LOC B9 IOSTANDARD LVCMOS15} [get_ports { data_in_0[0] }];
#set_property -dict {LOC A8 IOSTANDARD LVCMOS15} [get_ports { data_in_0[1] }];


########### Outputs ################

# Output for empty, full, half_full <-> LEDs 1-3
set_property -dict {LOC C6 IOSTANDARD LVCMOS15} [get_ports { empty_0 }];
set_property -dict {LOC B6 IOSTANDARD LVCMOS15} [get_ports { half_full_0 }];
set_property -dict {LOC L9 IOSTANDARD LVCMOS15} [get_ports { full_0 }];

# Counter variable <-> LEDS 4-6
set_property -dict {LOC L10 IOSTANDARD LVCMOS15} [get_ports { counter_0[2] }]; # MSB
set_property -dict {LOC K10 IOSTANDARD LVCMOS15} [get_ports { counter_0[1] }];
set_property -dict {LOC K11 IOSTANDARD LVCMOS15} [get_ports { counter_0[0] }];

# Data Out <-> LEDS 7-8
set_property -dict {LOC L12 IOSTANDARD LVCMOS15} [get_ports { data_out_0[0] }];
set_property -dict {LOC K12 IOSTANDARD LVCMOS15} [get_ports { data_out_0[1] }];