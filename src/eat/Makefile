
CC = gcc
INCLUDE = $(INC)
ifdef INC
INCLUDE = $(INC)
else
INCLUDE = -I./
endif

ifdef OBJ_DIR
TGT_DIR = $(OBJ_DIR)
else
TGT_DIR = ./tgt
endif

all: eat.o

eat.o: eat.c
	$(CC) $(INCLUDE) -c eat.c -o $(TGT_DIR)/$@

clean:
	rm $(TGT_DIR)/* -rf
