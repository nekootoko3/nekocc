CFLAGS=-std=c11 -g -static

nekocc: nekocc.c

test: nekocc
				./test.sh

clean:
	rm -f nekocc *.o *~ tmp*

.PHONY: test clean
