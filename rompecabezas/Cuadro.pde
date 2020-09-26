class Cuadro{
  int x, y;
  int ancho, alto;
  int id;

  public Cuadro(int a, int b, int c, int d, int e){
    x = a;
    y = b;
    ancho = c;
    alto = d;
    id = e;
  }

  public void dibujar(){
    rect(x,y,ancho,alto);
  }
  
  public int getX(){
    return x;
  }
  
  public int getY(){
    return y;
  }
  
  public int getAncho(){
    return ancho;
  }
  
  public int getAlto(){
    return alto;
  }
  
  public int getId(){
    return id;
  }
}
