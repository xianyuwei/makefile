
CC = gcc

ifdef OBJ_DIR
TGT_DIR = $(OBJ_DIR)
else
TGT_DIR = ./tgt
endif

ifdef INC
INCLUDE = $(INC)
else
INCLUDE = -I../include
endif


all: main.o

main.o: main.c
	$(CC) $(INCLUDE) -c main.c -o $(TGT_DIR)/$@

clean:
	rm *.o $(TGT_DIR)/* -rf
