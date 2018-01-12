all: main.o icde.o 

%.o : %.cpp 
	g++ -c $*.cpp -I. -I/usr/include/tk -I../../include -I../core -I../read -I../swig

clean:
	rm -rf *.o *~

