A test case that shows how link a shared library.

The test case has two modules:
bar(.cmake) and bar_hidden(.cmake).
The first contains two source files (bar1.cxx and bar2.cxx).

The modules are included into a shared library libfoo.so,
along with a source file foo.cxx.

Finally, there is an executable main.cxx that links
with and uses libfoo.so.

To compile and run: cmake && make && ./main
