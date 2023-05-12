//Sapag Nayla Nahir tp1 comisión 1

String texto, texto1, texto2, texto3, texto4 ;
PImage  museo, museo1, museo2, museo3, museo4 ;
int contador, pantalla ;
int veltext, veltext1 ; // velocidad texto
int tamaño;
int timer;
String estado ;
PFont FuenteNueva ;
PFont FuenteNuevaImportada;


void setup (){
  size(640, 480);
  background (255);
   FuenteNueva = loadFont ("fuente1.vlw"); 
   //FuenteNuevaImportada = createFont ("JasmineUPCBoldItalic-32", 32);
   
   //textFont (FuenteNuevaImportada);
   
   
   contador = 0;
   pantalla = 0;
   veltext = 0;
   veltext1 = 0;
   tamaño = 0;
   
    
    
   museo = loadImage("data/museo.jpg");
   museo1 = loadImage("data/museo1.jpg");
   museo2 = loadImage("data/museo2.jpg");
   museo3 = loadImage("data/museo3.jpg");
   museo4 = loadImage ("data/museo4.jpg");
   
   
   texto = "El Museo de La Plata es un \n museo de ciencias naturales ubicado \n en el Paseo del Bosque de la ciudad \n de La Plata,  capital de la provincia \n de Buenos Aires, Argentina.";
   texto1 = "Forma parte de la Facultad de \n Ciencias Naturales y Museo de la \n  Universidad \n  Nacional de La Plata (UNLP) y \n su valor histórico y patrimonial \n lo constituyen en un referente \n nacional e internacional.";
   texto2 = "Fue el primer museo de La Plata,\n  creado en 1884, dos años después de la \n fundación de la ciudad de La Plata,\n  inaugurado parcialmente en 1886 y \n abierto al público en 1888.";
   texto3 = "Desde su apertura, el Museo de La Plata estuvo organizado \n en cinco secciones: \n Antropología, Geología, Zoología, Paleontología y Botánica,\n  a cargo de estudiosos extranjeros de distintas disciplinas científicas.";
   
   
   
   
}
 
void draw() {
   background (255);
   
   
  textFont (FuenteNueva, 34);
 
  if (pantalla == 0) {
  contador ++ ;  // para q vaya sumando
  image (museo, 0, 0, 640, 480);
  
  textSize (50);
  
  veltext = contador ;
  
  text (texto, (veltext-30)*2, 90);
  if (contador == 110){
    contador = 0;
    pantalla = 1;
    
    
 
  } 
} else if (pantalla == 1){
  contador ++ ;  // para q vaya sumando
  image (museo1, 0, 0, 640, 480);
  
  
  fill (255); 
  //stroke (255, 78);
  textSize (50);
  veltext = contador ;
  
  text (texto1, (200-veltext)*2 , 100);
  if (contador == 150){
    contador = 0;
    pantalla = 2;
    
 
  } 
  
 

} else if (pantalla == 2){
  push();
  contador ++ ;  // para q vaya sumando
  image (museo2, 0, 0, 640, 480);
  fill (255);
  textAlign (CENTER);
  textSize (tamaño);
  if(tamaño<50){
    tamaño++;
  }
  
   //fill () ;
  text (texto2, width/2, height/2);
  
 if (contador == 90){
    
   contador = 0;
    pantalla = 3;
  }
  pop();

 


} else if (pantalla == 3){
  push(); 
  contador ++ ;  // para q vaya sumando
    image (museo3, 0, 0, 640, 480);
    veltext1 = contador;
    textAlign (CENTER);
    textSize (29);
    //fill () ;
    text (texto3, width/2, (veltext1 + 40)* 2);
    if (contador == 90){
      contador = 0;
      pantalla = 4;
  
    } pop();
  } else if (pantalla == 4){
    estado = "reinicio" ;
    push ();
    fill (255);
    image (museo4, 0,0, 640, 480);
    textAlign (CENTER) ;
    textSize (30);
    text ("¿quiere reiniciar ?", width/2, height/2);
    fill (92, 129, 206);
    ellipse (320, 300, 100, 100);
    
    
    
  
    pop ();
  }

 } 

void mousePressed (){
  if (pantalla == 4) {
  if (estado.equals("reinicio")){
    if(dist(mouseX, mouseY, 320, 300) <50){
      pantalla = 1;
      contador = 0;
    }
  }
  
  }

}
