void rectangulos(){
  for(int I=0; I<5; I++){
    int esp= I*40;
    fill(0);
    rect(-100+(esp),-100,20,200);
  }
}
void rectangulos2(){
  rotate(radians(90));
  for(int I=0; I<5; I++){
    int esp= I*40;
    fill(0);
    rect(-100+(esp),-100,20,200);
  }
}

void mousePressed(){
  if(dist(mouseX,mouseY,600,200)<300){
    if(inicio==0){
      inicio=1;
    }
  }
}

void keyPressed(){
  suma=0;
} 
float rotacion (){
  suma=suma+0.005;
  return suma;
}
