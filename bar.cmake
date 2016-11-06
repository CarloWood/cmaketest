add_library(bar OBJECT bar1.cxx bar2.cxx)

set_target_properties(bar PROPERTIES
	CXX_VISIBILITY_PRESET hidden	# Make global variables and functions HIDDEN by default.
	POSITION_INDEPENDENT_CODE ON	# Compile this object code position independent.
)
