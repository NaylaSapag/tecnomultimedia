//Sapag Nayla Nahir - Leg: 93541/6
//tp3 de Tecnología Multimedial
//"Calidoscopio" de Ray Bradbury
// video youtube: https://youtu.be/TMZyZThY8xY

int img = 14;



int pag = 0;

PImage[] fondos;


String[] texto = new String[20];

String[] botonSigue = new String[20];
String[] botonSigue2 = new String[20];




void setup(){
 size(600,600);
 pag = 0;
 
 
 texto[0]="Calidoscopio de Ray Bradbury \n Sapag Nayla Nahir - Leg: 93541/6 \n tp3 de Tecnología Multimedial";
 texto[1]="la tripulación de Galactic Lucy \nse encontraba haciendo su investigación\n diaria sobre meteoritos.\n Tú, Hollis, mirabas tu planeta natal desde la ventana";
 texto[2]="el primer impacto rajó \nla nave cual si fuera un gigantesco abrelatas.";
 texto[3]="los hombres fueron arrojados al espacio,\n retorciéndose como una docena de peces fulgurantes. \nSe diseminaron en un mar oscuro mientras la nave, \nconvertida en un millón de fragmentos, \nproseguía su ruta semejando un enjambre \nde meteoritos en busca de un sol perdido.";
 texto[4]="los astronautas se alejaban los unos de otros, \nno pudieron agarrar sus placas energéticas y \n ahora todos se \ndirigían a diferentes partes del espacio. \n opciones: \n a- intentar comunicarte con tus compañeros. \n b- seguir callado e ignorarlos.";
 texto[5]="(FINAL1)Te terminas muriendo solo.";
 texto[6]="pasaron diez minutos, todo era calmado. \nHablas habla con Stone sobre la vida, \nApplegate empieza a pelar contigo y \n Stimson entra en pánico.\n Un astronauta misterioso aparece llorando y chillando. \n opciones: \n a- calmar a Stimson. \n b- ayudar al astronauta misterioso.";
 texto[7]="Stimson aparece y esta nervioso, \nintentas intenta calmarlo con que los van a salvar.  \n opciones:  \n a- lo sigues calmando con cosas positivas.  \n b- te cansaste de escucharlo y empezaste a ignorarlo.";
 texto[8]="(FINAL 2)justo aparece una\n nave y todos son salvados, de\n vuelta a la Tierra con sus familias.";
 texto[9]="Te cansaste de su berrinche y \nlo matas\n a astronauta misterioso rompienso su casco. \nTotal dices que de una forma u otra se iba a morir.  \nopciones:  \n a- dejar pasar el tiempo. \n te cansas de la vida";
 texto[10]="un meteorito surca \nel espacio y te saco la mano izquierda.  \n opciones:  \n a- haces un torniquete y te salvas.  \n b- no le das importancia.";
 texto[11]="Lespere y tu charlan, te dice perverso... \nUn momento después, descubres que tu pie \nderecho había desaparecido. \nTe inclinas rápidamente y viste como salía sangre. \nEl meteorito había cortado la carne\n y el traje hasta el tobillo.   opciones:  \n b- no le das importancia.  \n ba luchas x no perder la conciencia, apretas\n la válvula de la rodilla y te salvas.";
 texto[12]="hubo silencio x un rato. \nApplegate aparece y te pide disculpas. \nTodos preguntan x Stone...se dan cuenta \nque perdió la conciencia.  \n opciones:  \n a- aun no te rindes. \nEn ese momento vez una luz que ilumina tu rostro.  \n b- dejas fluir la situación.";
 texto[13]="cada uno de tus \ncompañeros va a una muerte diferente, \ntodos formando un Caleidoscopio, \ntu te diriges hacia la atmosfera de la Tierra.  \n Un niño en Illinois y su madre, ven una estrella fugaz, \nella le dice que pida un deseo...  \n fin.";
 
 
 botonSigue[0] = "comienza \n la aventura";
 botonSigue[1] = "siguiente";
 botonSigue[2] = "siguiente";
 botonSigue[3] = "siguiente";
 botonSigue[4] = "A";
 botonSigue[5] = "volver al inicio";
 botonSigue[6] = "A";
 botonSigue[7] = "A";
 botonSigue[8] = "volver al inicio";
 botonSigue[9] = "A";
 botonSigue[10] = "A";
 botonSigue[11] = "A";
 botonSigue[12] = "A";
 botonSigue[13] = "volver al inicio";
 
 botonSigue2[1] = "creditos";
 botonSigue2[4] = "B";
 botonSigue2[6] = "B";
 botonSigue2[7] = "B";
 botonSigue2[9] = "B";
 botonSigue2[10] = "B";
 botonSigue2[11] = "B";
 botonSigue2[12] = "B";

 
  fondos = new PImage[14];
  for(int i=0;i<14;i++){
    fondos[i] = loadImage("data/photo"+i+".jpg");
  }
  
  /*for (int i = 0; i < escaleraImagenes.length ; i++) {
    escaleraImagenes[i] = loadImage ( "photo0.data" + i + ".jpg") ;
  }*/
}



void draw(){
     background(255);
  
     /*botondibujo (100, 400);
     boton (150, 500, 50, 20);*/
     
     
    if (pag == 0 ){ 
      image(fondos[pag], 0, 0, width, height);
      
      push();
      textSize (20);
      fill(0);
      text (texto[0], 100, 50);
      pop ();
      boton ( 100, 400, 100, 100, botonSigue); 
      push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
    }
 else if (pag == 1 ){ 
   image(fondos[pag], 0, 0, width, height);
      
      push();
      fill(0);
      text (texto[1], 100, 50);
      pop();
      boton (100, 400, 100, 100, botonSigue);
      boton2 (400, 400, 100, 100, botonSigue2 );
      push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 }
 else if (pag == 2){ 
   image(fondos[pag], 0, 0, width, height);
      
      push();
      fill(0);
      text (texto[2], 100, 50);
      pop();
      
      boton ( 100, 400, 100, 100, botonSigue);
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 }
 else if (pag == 3 ){ 
   image(fondos[pag], 0, 0, width, height);
      
      push();
      fill(0);
      text (texto[3], 100, 50);
      pop();
      
     
      boton ( 100, 400, 100, 100, botonSigue);
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 }
 else if (pag == 4 ){ 
   image(fondos[pag], 0, 0, width, height);
      
      push();
      fill(0);
      text (texto[4], 100, 50);
      pop();
      
      boton ( 100, 400, 100, 100, botonSigue);
      boton2 (400, 400, 100, 100, botonSigue2 );
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 }
 else if (pag == 5 ){ 
   image(fondos[pag], 0, 0, width, height);
      
      push();
      fill(0);
      text (texto[5], 100, 50);
      pop();
      
      boton (100, 400, 100,100,  botonSigue);
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 }
 else if (pag == 6 ){ 
 image(fondos[pag], 0, 0, width, height);
   
      push();
      fill(0);
      text (texto[6], 100, 50);
      pop();
      boton ( 100, 400, 100, 100,  botonSigue);
      boton2 (400, 400, 100, 100, botonSigue2 );
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
     
 }
 else if (pag == 7 ){ 
       image(fondos[pag], 0, 0, width, height);
   
      push();
      fill(0);
      text (texto[7], 100, 50);
      pop();
  
      boton ( 100, 400, 100, 100, botonSigue);
      boton2 (100, 400, 100, 100, botonSigue2);
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 }
 else if (pag == 8 ){ 
    image(fondos[pag], 0, 0, width, height);   
   
      push();
      fill(0);
      text (texto[8], 100, 50);
      pop();
   
      boton ( 100, 400, 100, 100, botonSigue);
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 }
 else if (pag == 9 ){ 
   image(fondos[pag], 0, 0, width, height);  
      
      push();
      fill(0);
      text (texto[9], 100, 50);
      pop();
     
      boton (100, 400, 100, 100, botonSigue);
      boton2 (400, 400, 100, 100, botonSigue2);
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 }
 else if (pag == 10 ){ 
    image(fondos[pag], 0, 0, width, height);   
   
   
      push();
      fill(0);
      text (texto[10], 100, 50);
      pop();
      boton ( 100, 400, 100, 100, botonSigue);
      boton2 (400, 400, 100, 100, botonSigue2);
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 }
 else if (pag == 11 ){ 
    image(fondos[pag], 0, 0, width, height);   
  
  
      push();
      fill(0);
      text (texto[11], 100, 50);
      pop();
      boton ( 100, 400, 100, 100,  botonSigue);
      boton2 (400, 400, 100, 100, botonSigue2 );
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 }
 else if (pag == 12 ){ 
    image(fondos[pag], 0, 0, width, height);   
  
      push();
      fill(0);
      text (texto[12], 100, 50);
      pop();
      boton (100, 400, 100, 100, botonSigue);
      boton2 (400, 400, 100, 100, botonSigue2 );
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 } else if (pag == 13 ){ 
    image(fondos[pag], 0, 0, width, height);   
   
   
      push();
      fill(0);
      text (texto[13], 100, 50);
      pop();
      boton ( 100, 400, 100, 100, botonSigue);
       push();
      fill (79, 167, 101, 100);
      rect(40, 10, 500, 300);
      pop();
 
 
 
 }
  }
  
  
  
 
 void boton (int x, int y, int ancho, int alto, String [] papita){
  push();
  rectMode(CENTER);
  rect(x, y, ancho, alto);
  fill(0); 
  textAlign(CENTER, CENTER); 
  textSize(16);
  text (papita[pag], x, y);
  pop();
  
  }
 



void boton2 (int x, int y, int ancho, int alto, String [] botonSigue2){ 
  push();
  rectMode(CENTER);
  rect(x, y, ancho, alto);
  fill(0); 
  textAlign(CENTER, CENTER); 
  textSize(16); 
  text (botonSigue2[4], x, y);
  pop();
  
  }
  
  
  boolean botondibujo(float x, float y, float ancho, float alto ) {
  return ( mouseX>x-ancho/2 && mouseX<x+ancho/2 && mouseY>y-alto/2 && mouseY<y+alto/2 );
}



void mousePressed (){
 if (botondibujo(100, 400, 200, 100)&& pag == 0){
   pag=1;
   background (255);
 }else if (botondibujo(100, 400, 200, 100)&& pag == 1){
   pag=2;
   background (255);
 }else if (botondibujo(100, 400, 200, 100)&& pag == 2){
   pag=3;
   background (255);
 }else if (botondibujo(100, 400, 200, 100)&& pag == 3){
   pag=4;
   background (255);
 }else if (botondibujo(100, 400, 200, 100)&& pag == 4){
   pag=6;
   background (255);
 }else  if (botondibujo(100, 400, 200, 100)&& pag == 6){
   pag=9;
   background (255);
 }else  if (botondibujo(100, 400, 200, 100)&& pag == 9){
   pag=10;
   background (255);
 }else  if (botondibujo(100, 400, 200, 100)&& pag == 10){
   pag=11;
   background (255);
 }else  if (botondibujo(100, 400, 200, 100)&& pag == 11){
   pag=12;
   background (255);
 }else  if (botondibujo(100, 400, 200, 100)&& pag == 12){
   pag=13;
   background (255);
 }
 
 
 
 
 
 
 
 
 
 
 if (botondibujo (400, 400, 200, 100)&& pag ==1){
   pag=0;
   background (255);
 }
 if (botondibujo(400, 400, 200, 100)&& pag ==4){
   pag=5;
   background (255);
 }else if (botondibujo(100, 400, 200, 100)&& pag == 5){
   pag=0;
   background (255);
 }
 
 if (botondibujo(400, 400, 200, 100)&& pag ==6){
   pag=7;
   background (255);
 }else if (botondibujo(100, 400, 200, 100)&& pag == 7){
   pag=8;
   background (255);
 }else if (botondibujo(100, 400, 200, 100)&& pag == 8){
   pag=0;
   background (255);
 }if (botondibujo(400, 400, 200, 100)&& pag ==10){
   pag=5;
   background (255);
 }else if (botondibujo(100, 400, 200, 100)&& pag == 5){
   pag=0;
   background (255);
 }if (botondibujo(400, 400, 200, 100)&& pag ==11){
   pag=5;
   background (255);
 }else if (botondibujo(100, 400, 200, 100)&& pag == 5){
   pag=0;
   background (255);
 }if (botondibujo(400, 400, 200, 100)&& pag ==12){
   pag=8;
   background (255);
 }
   


 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
}




  
  
