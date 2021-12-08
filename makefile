all: 3-4 3-4.o 3-1 3-1.o 3-3 3-3.o 3-2 3-2.o

3-4.o: 3-4.s
	as -g -o 3-4.o 3-4.s
3-2.o: 3-2.s
	as -g -o 3-2.o 3-2.s
3-1.o: 3-1.s
	as -g -o 3-1.o 3-1.s
3-3.o: 3-3.s
	as -g -o 3-3.o 3-3.s
3-4: 3-4.o
	g++ -nostartfiles -o 3-4 3-4.o
3-3: 3-3.o
	g++ -nostartfiles -o 3-3 3-3.o
3-1: 3-1.o
	g++ -nostartfiles -o 3-1 3-1.o
3-2: 3-2.o
	g++ -nostartfiles -o 3-2 3-2.o
clean:
	rm 3-4 3-4.o 3-1 3-1.o 3-3 3-3.o 3-2 3-2.o




























