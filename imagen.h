/* 
 * File:   imagen.h
 * Author: scldev
 *
 * Created on 16 de marzo de 2015, 17:22
 */

#ifndef IMAGEN_H
#define	IMAGEN_H

#include "byte.h";

class imagen {
public:
    Imagen();
    Imagen(int filas, int columnas);
    void crear(int filas, int columnas);
private:
    static const int MAXPIXELS = 1000000;
    byte datos[MAXPIXELS];
    int nfilas;
    int ncolumnas;
    
};

#endif	/* IMAGEN_H */

