EXECS=main
MPICC?=mpicc

all: ${EXECS}

main: main.cpp
	${MPICC} -o ${EXECS} ${EXECS}.cpp -lm

run:
	mpirun -np 4 ./${EXECS}

clean:
	rm ${EXECS}