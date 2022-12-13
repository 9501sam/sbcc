CC = gcc
CFLAGS = -Wall
RM = rm -f
OBJS = sbcc.o scanner.o parser.o set.o
PROG = sbcc
TEST-OBJS = test-sbcc.o scanner.o parser.o set.o
TEST-PROG = test-sbcc

ALL: $(PROG)

sbcc.o: types.h scanner.h parser.h
scanner.o: types.h scanner.h
parser.o: types.h parser.h

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)

$(PROG): $(OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

$(TEST-PROG): $(TEST-OBJS)
	$(CC) -o $@ $^ $(CFLAGS)

test: $(TEST-PROG)
	./$(TEST-PROG)

clean:
	$(RM) $(PROG) $(OBJS) $(TEST-PROG) $(TEST-OBJS)
