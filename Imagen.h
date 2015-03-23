/* 
 * File:   imagen.h
 * Author: scldev
 *
 * Created on 16 de marzo de 2015, 17:22
 */

#ifndef IMAGEN_H
#define	IMAGEN_H

#include "byte.h";
#include "pgm.h";

class Imagen {
public:
    Imagen();
    Imagen(int filas, int columnas);
    void crear(int filas, int columnas);
    int filas(); //Devuelve el número de filas de la imagen.
    int columnas(); // Devuelve el número de columnas de la imagen.
    void set(int y, int x, byte v); //Asigna el valor v a la posición (x,y) de la imagen.
    byte get(int y, int x); //Devuelve el valor de la posición (x,y) de la imagen.
    void setPos(int i, byte v); //Asigna el valor v a la posición i de la imagen considerada como vector.
    byte getPos(int i); //Devuelve el valor de la posición i de la imagen considerada como vector.
    bool leerImagen(const char nombreFichero[]); //Carga una imagen desde el fichero.
    bool escribirImagen(const char nombreFichero[]); //Guarda la imagen en fichero.
private:
    static const int MAXPIXELS = 1000000;
    byte datos[MAXPIXELS];
    int nfilas;
    int ncolumnas;
    
};

#endif	/* IMAGEN_H */

