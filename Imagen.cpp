/* 
 * File:   imagen.cpp
 * Author: scldev
 * 
 * Created on 16 de marzo de 2015, 17:22
 */

#include "Imagen.h"

Imagen::Imagen() {
    nfilas = 0;
    ncolumnas = 0;
};

Imagen::Imagen(int filas, int columnas){
    nfilas = filas;
    ncolumnas = columnas;
    datos[MAXPIXELS]={0};

};

void Imagen::crear(int filas, int columnas){
    nfilas = filas;
    ncolumnas = columnas;
    datos[MAXPIXELS]={0};
};

int Imagen::filas(){
    return nfilas;

};

int Imagen::columnas(){
    return ncolumnas;

};

void Imagen::set(int y, int x, byte v){
    datos[(y * ncolumnas)+x]= v;

};

byte Imagen::get(int y, int x){
    return datos[(y*ncolumnas)+x];

};

void Imagen::setPos(int i, byte v){
    datos[i]=v;
};

byte Imagen::getPos(int i){
    return datos[i];
};

bool Imagen::leerImagen(const char nombreFichero[]){
    int filas,columnas;
    //1º leemos el tipo
    if(infoPGM(nombreFichero[], filas, columnas) == IMG_PGM_BINARIO){
        if(((filas*columnas) <= MAXPIXELS)){
        return leerPGMBinario(nombreFichero[],datos,filas,columnas);
        }
    }else{
        return false;
    }
 
};

bool Imagen::escribirImagen(const char nombreFichero[]){


};