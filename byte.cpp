/* 
 * File:   byte.cpp
 * Author: scldev
 * 
 * Created on 22 de marzo de 2015, 8:56
 */

#include "byte.h"

using namespace std;

void on(byte &b, int pos){
    byte mask;
	if((pos>=0) && (pos<8)){
		mask = 0x1 << pos;
		b = b | mask;
		
	};		
}

void off(byte &b, int pos){
    byte mask;
	if((pos >= 0) && (pos <8)){
		mask = 0x1 << pos;
		mask = ~mask; //invierto todos los bits
		b = b & mask; //hago un AND para dejar todo igual excepto el cero.
	
	};
}

bool get(byte b, int pos){
    byte mask;
    bool estado;
    mask = 0x1 << pos;
    estado = (b & mask) > 0;
    return estado;
}

void print(byte b){
	for(int i=7; i>=0; i--){
	    cout<<get(b,i);
	}
	cout<<endl;
}

void encender(byte &b){
    byte mask = 0b00000000;
    b = ~mask;
}
void apagar(byte &b){
    byte mask = 0b00000000;
    b = mask;
	
}

void asignar(byte &b, const bool v[]){

    for(int i=7;i>=0;i--){
          if(v[i]== 0){
               
              off(b,i);
          
            }else
              
              on(b,i);
     };
}
void volcar(byte b, bool v[]){
    //for(int i=7;i>=0;)
}
void encendidos(byte b, int posic[], int &cuantos){
    int posicionvector = 0;
    for(int i=0;i<=7;i++){
        if(get(b,i) == 1){
            posic[posicionvector]=i;
            cuantos++;
            posicionvector++;
        }
    
    }
    
}

