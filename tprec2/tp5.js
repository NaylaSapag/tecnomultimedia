//Nayla Sapag comisión 1, legajo 93541/6
//tp5 recuperatorio
//video youtube: https://youtu.be/bKCQB5Vkge4

let n;

function setup() {  //
  createCanvas (600,300);
  n = new Principal();

}

function draw() {  //
  background (150);
  n.dibujar();
}

function keyPressed (){
  n.teclaPresionada();
}
