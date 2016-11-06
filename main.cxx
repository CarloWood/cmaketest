#include "foo.h"
#include "bar1.h"
#include "bar2.h"
#include <iostream>

// Try to hack our way in.
void bar_func_hidden();
extern int bar_var_hidden;

int main()
{
	foo_func();
	bar1_func();
	bar2_func();
	//bar_func_hidden();	// undefined reference to `bar_func_hidden()'
	//bar_var_hidden = 3;	// undefined reference to `bar_var_hidden'
	std::cout << "foo_var = " << foo_var << "; bar1_var = " << bar1_var << "; bar2_var = " << bar2_var << std::endl;
}
