#ifndef DISPLAY_H
#define DISPLAY_H

#include "structure.h"
void listeOeuvre(HashListeArtiste liste);
void displayOeuvre(Artiste * ptArtist);
void listeOeuvreByArtist(int idArtist, HashListeArtiste liste);
void displayNbOeuvre(Artiste * ptArtist);
void nbOeuvreByArtist(int idArtist, HashListeArtiste liste);
void listeNbOeuvreByArtist(HashListeArtiste liste);
void oldestOeuvre(Vieille * oldest);


#endif