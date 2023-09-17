//Sapag Nayla Nahir Legajo; 93541/6
//tp4  
//videojuego elegido : ENDURO RACER
//video youtube: https://youtu.be/G8oMXJoJWCs

let ox, oy, oan, oalt; //ubicacion obstaculos
let fondos = [];
let autox = [];
let autoy = [];
let velnx = [];
let cant = 6;
let mx, my, man, malt;
let estado = "inicio"; 
let timer = 0;


function setup() {
  createCanvas(240,600);
  ox=200;
  oy=0;
  oan=40;
  oalt=80;
  mx=width/2;
  my=height-20;
  man=10;
  malt=40;
  
  
  fondos[0] = loadImage("data/photo0.jpg");
  fondos[1] = loadImage("data/photo1.PNG");
  fondos[2] = loadImage("data/photo2.JPG");
  fondos[3] = loadImage("data/photo3.PNG");
  fondos[4] = loadImage("data/photo4.JPG");
  
  for (let i=0; i<cant; i++) {
    autox[i] =  i*oan;
    autoy[i] =  random(-100, -300);
     velnx[i] = random(0.7, 1.8);
  }
}


function draw() {
  background(0);
  if(estado == "inicio"){
    image(fondos[0],0,0);
    push();
     fill(0,0,255);
     rectMode(CENTER);
     rect(width/2,300,120,60);
     rect(width/2,400,120,60);
     pop();
     push();
     fill(255);
     push();
     textSize(20);
     textAlign(CENTER);
     text("Clickee para jugar", width/2-60, 310-30, 120, 60);
     text("créditos e\ninstrucciones", width/2-60, 410-30, 120,60);  
  }else if(estado=="credito"){
     push();
     fill(255);
     textAlign(CENTER);
     textSize(15);
     text(" Tutorial: \n esquivar moviendo las\n flechas izquierda y derecha. \n No tiene que chocar\n los autos.",width/2,100);
     text("CRÉDITOS:\n\n\nSapag Nayla Nahir L: 93541/6 \n\ntp4 Intodución al p5.js", width/2,400);
     pop();
  } 
  else if(estado == "juego"){
    image(fondos[4],0,0);
  
    text(timer,0,0,100,100);
  timer += 1;
  moto(mx, my, man, malt);
  for (let i=0; i<cant; i++) {
        auto(autox[i], autoy[i], oan, oalt);
        autoy[i] += velnx[i];
        if (autoy[i]>height) {
          autoy[i] = random(-300, -100);
        } 
        if(mx>autox[i] && mx<autox[i]+oan && my>autoy[i] && my<autoy[i]+oalt){
         for (let e=0; e<cant; e++){
           autoy[e] = random(-300, -100);
         }
         estado="perdiste";
        }
        if(timer == 1500){
          estado = "ganaste";
        }
    }
  if (keyIsPressed===true) {
       if (keyCode=== RIGHT_ARROW) {
         mx+=3;
       }
       if (keyCode=== LEFT_ARROW) { 
         mx-=3;
       }
     } 
  }else if(estado == "ganaste"){
    text("ganaste",100,100,100,100);
    timer=0;
  }else if(estado == "perdiste"){
    text("perdiste",100,100,100,100);
    timer=0;
  }
}

function auto(x, y, ancho, alto) {
  push();
  fill(0, 255, 0);
  imageMode (CENTER);
  rectMode(CORNER);
  image (fondos[3], x, y, ancho+60, alto+10);

  //rect(x, y, ancho, alto);
  pop();
}
function moto(x, y, ancho, alto) {
  push();
  fill(0, 0, 255);
  imageMode (CENTER);
  image (fondos[1], x, y, ancho+50, alto+50);
  rectMode(CENTER);
  //rect(x, y, ancho, alto);
  pop();
}

function mousePressed(){
  if(estado=="perdiste"){
    estado="inicio";
  }else if(estado=="ganaste"){
    estado="inicio";
  }else if(estado=="credito"){
    estado="inicio";
  }else if((mouseX>60) && (mouseX<180) && (mouseY>270) && (mouseY<330) && (estado=="inicio")){
    estado="juego";
  }else if((estado=="inicio") && (mouseX>60) && (mouseX<180) && (mouseY>370) && (mouseY<430)){
    estado="credito";
  }
}
