CC=gcc
CFLAGS=-I.

create_bin : 
	mkdir -p obj bin

mutex : 
	$(CC) -pthread -o bin/mutex mutex.c $(CFLAGS)
	
factorial : 
	$(CC) -pthread -o bin/factorial factorial.c $(CFLAGS)

deadlock :
	$(CC) -pthread -o bin/deadlock deadlock.c $(CFLAGS)


clean :
	rm -rf bin obj

all : create_bin mutex factorial deadlock