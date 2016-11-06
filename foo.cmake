include(bar.cmake)
include(bar_hidden.cmake)

unset(modules)
list(APPEND modules bar)
list(APPEND modules bar_hidden)

unset(objects)
foreach(obj IN LISTS modules)
	list(APPEND objects $<TARGET_OBJECTS:${obj}>)
endforeach(obj)

add_library(foo SHARED foo.cxx ${objects})

set_target_properties(foo PROPERTIES
	CXX_VISIBILITY_PRESET hidden	# Make global variables and functions HIDDEN by default.
)
