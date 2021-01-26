filename=main

all: ${filename}.cpp
	g++ ${filename}.cpp -o ${filename}.o
	./${filename}.o

run: ${filename}.o
	./${filename}.o

clean:
	rm *.o
	rm *.out
