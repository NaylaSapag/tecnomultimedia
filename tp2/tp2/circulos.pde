void circulos(){
  for(int c=0; c<6; c++){
   float diam = map (c, 0, cant-1, 240, 20);
    if (c%2==0){
       fill (0);
     } else {
       fill (255);
     }
     ellipse (600, 200, diam, diam );
  }
}
