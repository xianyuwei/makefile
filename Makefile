CC = gcc
TOP_DIR := $(shell pwd)
BIN_DIR := $(TOP_DIR)/bin
OBJ_DIR := $(TOP_DIR)/obj
INC := -I$(TOP_DIR)/include \
		-I$(TOP_DIR)/src/eat
BIN := test
SUB_DIR := main \
		src \
		src/eat

allsrc = $(foreach dir, $(SUB_DIR), $(wildcard, $(TOP_DIR)$(dir)/*.c))

export CC TOP_DIR BIN_DIR OBJ_DIR BIN SUB_DIR INC

.PHONY: clean

all:complie test 

test:$(OBJ_DIR)/*.o
	$(CC) -o $(BIN_DIR)/test $?

complie: CHECKDIR $(SUB_DIR)
	echo $(TOP_DIR)
	echo $(allsrc)

CHECKDIR:
	if [ ! -d $(BIN_DIR) ];then \
		mkdir -p $(BIN_DIR); \
	fi
	if [ ! -d $(OBJ_DIR) ];then \
		mkdir -p $(OBJ_DIR); \
	fi

$(SUB_DIR):ECHO
	make -C $@

ECHO:
	echo $(SUB_DIR)
	echo 'begin compile'

clean:
	rm -rf $(OBJ_DIR) $(BIN_DIR)
