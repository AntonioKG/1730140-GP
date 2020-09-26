import java.lang.Math.*;
import java.util.List;
import java.util.Collections;

PImage foto;
Cuadro cuadros[];
PImage imagen[];
//int orden[] = new int[9];
List<Integer> orden = new ArrayList<Integer>();


void setup(){
  size(900,900);
  foto = loadImage("angry.jpg");
  foto.resize(900,900);
  cuadros = new Cuadro[9];
  imagen = new PImage[9];
  int k=0;
  for (int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      if(k>8)break;
      cuadros[k] = new Cuadro(j*300, i*300,300,300,k);
      k++;
    }
  }
  k=0;
  for (int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      if(k>8)break;
      imagen[k] = foto.get(j*300, i*300,cuadros[k].getAlto(),cuadros[k].getAncho());
      k++;
    }
  }
  k=0;
  for (int i=0;i<3;i++){
     for(int j=0;j<3;j++){
       if(k>8)break;
       imagen[k] = foto.get(j*300, i*300,cuadros[k].getAlto(),cuadros[k].getAncho());
       k++;
     }
  }
  
  /*for(int i=0;i<9;i++){
    if(i==0){
      orden[i]= (int) Math.random()*9 ;
    }else{
      int numero = (int) Math.random()*9;
      boolean b=false;
      for(int j=0;j<=i;j++){
        if(orden[j]==numero){
          b=true;
          break;
        }
      }
      if(b){
        i--;
      }else{
        orden[i]=numero;
      } 
    }
  }*/
    
  for(int i=0;i<9;i++){
    orden.add(i);
  }
  
  Collections.shuffle(orden);
/*    orden[0] = 0;
    orden[1] = 1;
    orden[2] = 2;
    orden[3] = 3;
    orden[4] = 4;
    orden[5] = 5;
    orden[6] = 6;
    orden[7] = 7;
    
    orden[0] = 7;
    orden[1] = 2;
    orden[2] = 4;
    orden[3] = 1;
    orden[4] = 5;
    orden[5] = 3;
    orden[6] = 6;
    orden[7] = 0;*/
}

void draw(){
  for(int i=0; i<8; i++){
    image(imagen[i],cuadros[orden.get(i)].getX(),cuadros[orden.get(i)].getY());
  }
    
  /*image(imagen[0],0,0);
  image(imagen[1],300,0);
  image(imagen[2],600,0);
  image(imagen[3],0,300);
  image(imagen[4],300,300);
  image(imagen[5],600,300);
  image(imagen[6],0,600);
  image(imagen[7],300,600);*/
  //image(imagen[8],600,600);
}
