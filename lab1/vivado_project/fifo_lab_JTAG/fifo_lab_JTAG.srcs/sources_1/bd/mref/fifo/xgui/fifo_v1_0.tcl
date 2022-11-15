# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "depth" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ptr_size" -parent ${Page_0}
  ipgui::add_param $IPINST -name "width_in" -parent ${Page_0}
  ipgui::add_param $IPINST -name "width_out" -parent ${Page_0}


}

proc update_PARAM_VALUE.depth { PARAM_VALUE.depth } {
	# Procedure called to update depth when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.depth { PARAM_VALUE.depth } {
	# Procedure called to validate depth
	return true
}

proc update_PARAM_VALUE.ptr_size { PARAM_VALUE.ptr_size } {
	# Procedure called to update ptr_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ptr_size { PARAM_VALUE.ptr_size } {
	# Procedure called to validate ptr_size
	return true
}

proc update_PARAM_VALUE.width_in { PARAM_VALUE.width_in } {
	# Procedure called to update width_in when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.width_in { PARAM_VALUE.width_in } {
	# Procedure called to validate width_in
	return true
}

proc update_PARAM_VALUE.width_out { PARAM_VALUE.width_out } {
	# Procedure called to update width_out when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.width_out { PARAM_VALUE.width_out } {
	# Procedure called to validate width_out
	return true
}


proc update_MODELPARAM_VALUE.depth { MODELPARAM_VALUE.depth PARAM_VALUE.depth } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.depth}] ${MODELPARAM_VALUE.depth}
}

proc update_MODELPARAM_VALUE.ptr_size { MODELPARAM_VALUE.ptr_size PARAM_VALUE.ptr_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ptr_size}] ${MODELPARAM_VALUE.ptr_size}
}

proc update_MODELPARAM_VALUE.width_in { MODELPARAM_VALUE.width_in PARAM_VALUE.width_in } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.width_in}] ${MODELPARAM_VALUE.width_in}
}

proc update_MODELPARAM_VALUE.width_out { MODELPARAM_VALUE.width_out PARAM_VALUE.width_out } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.width_out}] ${MODELPARAM_VALUE.width_out}
}

