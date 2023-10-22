//Nayla Sapag comisión 1, legajo 93541/6
// se suponia que tenias que esquivar planetas, pero no llegue a terminarlo asi q en el recuperatorio lo hago mejor.

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
