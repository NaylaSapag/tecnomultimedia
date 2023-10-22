//Nayla Sapag comisión 1, legajo 93541/6

let n;
//let fondo;

function setup() {  //
  createCanvas (600,300);
  n = new Juego();
  //fondo = new Imagenes();
}

function draw() {  //
  background (150);
  n.dibujar();
}

function keyPressed (){
  n.teclaPresionada(keyCode);
}
