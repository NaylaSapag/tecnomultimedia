class Astronauta {  
 constructor (posX, posY, ancho, alto){
  this.posX = posX;
  this.posY = posY;
  this.ancho = 30;
  this.alto = 30;
  this.carga();
 }
 
 carga(){
   this.astronauta = loadImage("data/photo3.png");
 }
 
 dibujar(){ 
  image(this.astronauta, this.posX, this.posY, this.ancho, this.alto);
  /*rectMode (CENTER);
  fill (80, 20, 150);
  rect ( this.posX, this.posY, this.ancho, this.alto);*/ 
 }
 
 
  teclaPresionada(keyCode) {
    if (keyCode == UP_ARROW) {
      this.moverArriba();
    } else if (keyCode == DOWN_ARROW) {
      this.moverAbajo();
    }
  }
  
 
  moverAbajo() {
    this.posY += 10;
    if (this.posY > height) {
      this.posY = 0;
    }
  }

  moverArriba() {
    this.posY -= 10;
    if (this.posY < 0) {
      this.posY = height;
    }
  }
  
  
 


}
