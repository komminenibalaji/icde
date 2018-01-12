all: layer.o library.o object.o shape.o  via.o viadef.o technology.o port.o pin.o instance.o net.o cell.o

%.o : %.cpp
	g++ -c -I. -I../core -I../../include $<

clean:
	rm -rf *.o *~ 

