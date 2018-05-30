##

sources=basic.pl minmax.pl delete.pl index.pl total.pl stack.pl queue.pl


all: run

run:
	prolog ${sources}
