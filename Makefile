#makefile format from 
#http://stackoverflow.com/questions/8440790/how-should-i-link-to-llvm-libraries
CC = g++

CPPFLAGS = `llvm-config --cppflags `
LDFLAGS = `llvm-config --ldflags `
LIBS = `llvm-config --libs `

all:
	$(CC) main.cpp -std=c++11   $(CPPFLAGS) $(LDFLAGS)  $(LIBS) -lpthread -ltinfo -ldl -o reg_pressure 
