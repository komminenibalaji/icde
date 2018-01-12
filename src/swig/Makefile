all : icde.o  

icde.o : icde.cxx
	g++ -c -I/usr/include/tk -I../core -I../read -I../icde -I../../include icde.cxx

icde.cxx : icde.i cell.i shape.i port.i
	swig -v -Wall -nodefaultctor -nodefaultdtor -includeall -c++ -tcl8 -I../icde -I../core -I../read -o icde.cxx icde.i

clean:
	rm -f *.o *.cxx

checkin: clean

