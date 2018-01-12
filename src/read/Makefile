all : lef.y.o lef.l.o def.y.o def.l.o 

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

clean :
	rm -rf *~ *.c *.hh *.cc *.o

read: core lef.y.o lef.l.o def.y.o def.l.o verilog.y.o verilog.l.o read.cpp 
	g++ -I. -I../../include -I../core -o read *.o ../core/*.cpp read.cpp

core:
	cd ../core/ && make all

