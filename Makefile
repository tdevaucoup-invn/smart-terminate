# makefile for unix system
ifneq ($(shell uname), Linux)
$(error Must be run under Linux system)
endif

# particular targets
.PHONY: clean

# param
CXXFLAGS = -g -no-pie -Os -Wall -I. -rdynamic
CXX = g++

# application
app = out
srcApp = main.cpp

# targets
all: $(app)

# executable
$(app): $(obj) $(srcApp)
	$(CXX) $(CXXFLAGS) -o $@ $^

# run the project
run:
	./$(app) 2>&1 | c++filt

# clean objects
clean:
	rm $(app)
