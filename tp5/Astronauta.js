class Astronauta {  
 constructor (posX, posY, ancho, alto){
  this.posX = posX;
  this.posY = posY;
  this.ancho = 50;
  this.alto = 60;
 }
 
 dibujarAstronauta(){ 
  //image (this.astronauta, this.posX, this.posY, this.ancho, this.alto)
  rectMode (CENTER);
  fill (80, 20, 150);
  rect (this.posX, this.posY, this.ancho, this.alto); 
 }
  
  moverDerecha(){
    this.posY += 10;
  }

  moverIzquierda(){
    this.posY -= 10;
  }

  teclaPresionada(keyCode){
    if(keyCode == UP_ARROW){
      this.moverIzquierda();
    }else if(keyCode == DOWN_ARROW){
      this.moverDerecha();
    }
  }
}
