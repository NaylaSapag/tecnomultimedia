class Juego {
 constructor() {
  this.planetas = new Planetas ( 100, 300);
  this.astronauta = new Astronauta(570, height/2, 300, 300); //valores del pj
  
  this.planetas = [];
  for(let i=0; i<5; i++){
    this.planetas[i] = new Planetas (0, 100+i+100);
  }
 }
  
  dibujar(){
    this.astronauta.dibujarAstronauta();
     for(let i=0; i<5; i++){
    this.planetas[i].dibujarPlanetas();
  }
  }
  
  

mostrarJuego() {
  this.astronauta.dibujar();
  this.planetas.dibujar();
}
  
teclaPresionada(keyCode){
    this.astronauta.teclaPresionada(keyCode);
  }
}
