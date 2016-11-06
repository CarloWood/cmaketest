add_library(bar_hidden OBJECT bar_hidden.cxx)

set_target_properties(bar_hidden PROPERTIES
	CXX_VISIBILITY_PRESET hidden	# Make global variables and functions HIDDEN by default.
	POSITION_INDEPENDENT_CODE ON	# Compile this object code position independent.
)
