// Sapag Nayla Nahir 93541/6
// Comisión 1, tp2
// Video: https://youtu.be/wJnRiWpi_eQ

// al tocar al mouse (mousePressed)empiezan a girar los cuadrdados =D
 
int cant=6;
int inicio;
PImage iluoptica1;
float suma;

void setup(){
  size(800,400);
  suma = 0;
  inicio=0;
  iluoptica1 = loadImage ("data/iluoptica1.jpeg");
  
}

void draw(){
  background(255);
  
  
  image (iluoptica1, 0, 0, 400, 400);
  
  push();
  translate(600,200);
  if(inicio==1){
  rotate(rotacion()); 
  }
 
  
  push();
  translate(-100,-100);
  if(inicio==1){
  rotate(rotacion()); 
  }
  rectangulos();
  pop();
  
  push();
  translate(100,-100);
  if(inicio==1){
  rotate(rotacion()); 
  }
  rectangulos2();
  pop();
  
  push();
  translate(-100,100);
  if(inicio==1){
  rotate(rotacion()); 
  }
  rectangulos2();
  pop();
  
  push();
  translate(100,100);
  if(inicio==1){
  rotate(rotacion()); 
  }
  rectangulos();
  pop();
  pop();
  
  circulos ();
  
  
}
