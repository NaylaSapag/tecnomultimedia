class Planetas {
  constructor (posX, posY, alto, ancho){
    this.posX = posX;
    this.posY = posY;
    this.vel = random(0.2, 1.6);
  }
  
  dibujarPlanetas(){
    fill(120, 40, 16);
    rect(this.posX, this.posY, 50, 50);
    this.mover();

  }

mover(){
  this.posX += this.vel;
  if(this.posX < 0){
    this.posX = 100;
  }
}

}
