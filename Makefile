###############################################################################
## Makefile                                                
##
## Abstract: Nearly Universal Makefile
## started by Mark Butler 
## Adapted by Jim Black
###############################################################################

.PHONY: clean
GCC_PATH=/usr/bin
CC=$(GCC_PATH)/g++

C++FLAGS+= -Wall

OUT = buffer
PRJ_SRC = $(wildcard *.c)
PRJ_OBJ = $(patsubst %.c, %.o, $(PRJ_SRC))
PRJ_DEP = $(patsubst %.c, %.%.d, $(PRJ_SRC)))
# LIBS    = -lsocket -lnsl -lpthread
LIBS    = 
OUT_OBJ = $(PRJ_OBJ)
OUT_DEP = $(PRJ_DEP)

CLEAN = $(DEP) $(OUT_OBJ) $(OUT)

default : $(PRJ_OBJ) 
	$(CC) -o $(OUT) $(PRJ_OBJ) $(LIBS)

$(PRJ_OBJ):$(PRJ_SRC)
	$(CC) $(C++FLAGS) -c $(PRJ_SRC) 

clean:
	rm -f *.o
	rm -f *.d
	rm -f $(OUT)
