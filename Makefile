CC=gcc
CXX=g++
CFLAGS+=-O3 -Wall
CXXFLAGS=$(CFLAGS)
LDFLAGS+=-lm

siddump.exe: siddump.o cpu.o
	$(CC) -o $@ $^ $(LDFLAGS)
	strip $@
