CFLAGS=-std=c11 -g -static
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)

nekocc: $(OBJS)
					$(CC) -o $@ $(OBJS) $(LDFLAGS)

$(OBJS): nekocc.h

test: nekocc
				./test.sh

clean:
	rm -f nekocc *.o *~ tmp*

.PHONY: test clean
