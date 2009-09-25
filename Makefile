EXEC = innocuousd 
CC = gcc
CFLAGS = -c -Wall

# $(EXEC) has the value of shell variable EXEC, which is run.
# run depends on the files main.o util.o heap.o
$(EXEC)	:main.o
# run is created by the command gcc -o run main.o util.o heap.o
# note that the TAB before $(CC) is REQUIRED...
	$(CC) -o $(EXEC) main.o
	
# main.o depends on the files main.h main.c
main.o	:main.h main.c
# main.o is created by the command gcc -c -Wall main.c
# note that the TAB before $(CC) is REQUIRED...
	$(CC) $(CFLAGS) main.c	
	
clean	:
	rm *.o
