// Sapag Nayla Nahir 93541/6
// Comisión 1, tp2
// Video:

// al tocar al mouse (mousePressed)empiezan a girar los cuadrdados =D
 
 int cant=6;
int suma, inicio;
PImage iluoptica1 ;

void setup(){
  size(800,400);
  suma = 0;
  inicio=0;
  
  
}

void draw(){
  background(255);
  
  loadImage ("iluoptica1.jpeg");
  image (iluoptica1, 400, 0, 400, 400);
  
  push();
  translate(600,200);
  if(inicio==1){
  rotate(radians(suma)); 
  }
  suma=suma+1;
  
  push();
  translate(-100,-100);
  if(inicio==1){
  rotate(radians(suma)); 
  }
  rectangulos();
  pop();
  
  push();
  translate(100,-100);
  if(inicio==1){
  rotate(radians(suma)); 
  }
  rectangulos2();
  pop();
  
  push();
  translate(-100,100);
  if(inicio==1){
  rotate(radians(suma)); 
  }
  rectangulos2();
  pop();
  
  push();
  translate(100,100);
  if(inicio==1){
  rotate(radians(suma)); 
  }
  rectangulos();
  pop();
  pop();
  
  circulos ();
  
}
