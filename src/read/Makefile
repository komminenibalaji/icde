all : lef.y.o lef.l.o def.y.o def.l.o verilog.y.o verilog.l.o

%.o: %.cc
	g++ -c -DYYDEBUG=1 -I. -I../core -I../../include $*.cc

lef.l.cc : lef.l lef.y
	flex -P lef_ -o lef.l.cc lef.l

lef.y.cc : lef.y
	bison -p lef_ -d -t lef.y -o lef.y.cc

def.l.cc : def.l def.y
	flex -P def_ -o def.l.cc def.l

def.y.cc : def.y
	bison -p def_ -d -t def.y -o def.y.cc

verilog.l.cc : verilog.l verilog.y
	flex -P verilog_ -o verilog.l.cc verilog.l

verilog.y.cc : verilog.y
	bison -p verilog_ -d -t verilog.y -o verilog.y.cc

clean :
	rm -rf *~ *.c *.hh *.cc *.o read

read: core lef.y.o lef.l.o def.y.o def.l.o verilog.y.o verilog.l.o read.cpp 
	g++ -I. -I../../include -I../core -o read *.o ../core/*.cpp read.cpp
	./read -f verilog -i /home/balaji/projects/uart/synth/uart.vSyn

core:
	cd ../core/ && make all

