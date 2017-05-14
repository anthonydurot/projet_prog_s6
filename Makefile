CC = gcc
CFLAGS = -W -Wall -pedantic -g
LDFLAGS = 
EXEC = read_data
SRC = $(wildcard *.c) #définit la liste des .o du dossier
OBJ = $(SRC:.c=.o) #définit la liste des .o grâce aux .c dans le dossier

all : $(EXEC)

read_data: $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS) 

%.o: %.c   #de base va toujours construire un .o avec sa première dépendance .c
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	rm -rf *.o

cleanall: clean
	rm -rf $(EXEC)
