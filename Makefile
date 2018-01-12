SRCDIRS = src/core src/read src/swig src/icde

all:
	@echo --- making main programs
	for dir in ${SRCDIRS}; do \
		(cd $$dir && make all); done
	g++ -o bin/icde src/*/*.o -ltk -ltcl 

checkin: clean
	rm -f bin/icde

clean:
	@echo --- making main programs
	for dir in ${SRCDIRS}; do \
		(cd $$dir && make clean); done

