##

sources=basic.pl minmax.pl delete.pl index.pl total.pl stack.pl


all: run

run:
	prolog ${sources}
