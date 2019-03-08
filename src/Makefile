
CC = gcc

ifdef OBJ_DIR
TGT_DIR = $(OBJ_DIR)
else
TGT_DIR = ./tgt
endif

ifdef INC
INCLUDE = $(INC)
else
INCLUDE = -I../include \
		-I./eat
endif

all: test.o

test.o: test.c
	$(CC) -c test.c $(INCLUDE) -o $(TGT_DIR)/$@

clean:
	rm $(TGT_DIR)/*.o
