CC = gcc
CFLAGS = -W -Wall -pedantic -g
LDFLAGS = 
EXEC = main
SRC = $(wildcard src/*.c) #définit la liste des .c du dossier
OBJ = $(SRC:.c=.o) #définit la liste des .o grâce aux .c dans le dossier

all : $(EXEC)

main: $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS) 

%.o: %.c   #de base va toujours construire un .o avec sa première dépendance .c
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	rm -rf src/*.o

cleanall: clean
	rm -rf $(EXEC)
