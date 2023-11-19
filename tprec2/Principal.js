class Principal {
  constructor() { //funcion
    this.Astronauta = new Astronauta(570, height/2, 300, 300); //valores del pj
    this.Planetas = new Planetas (100, 300);

    this.Planetas = [];
    for (let i=0; i<5; i++) {
      this.Planetas[i] = new Planetas (0, 25+i*60);
    }

    this.photo = [];
    this.carga();
    this.tiempo = 0;
    this.tiempoSeg = 0;
    this.choque = 0;
    this.estado = "menu";
  }
  carga() { //funcion
    for ( let i = 0; i < 5; i++ ) {
      this.photo.push( loadImage('data/photo' +i+ '.jpg'));
    }
  }

  dibujar() { //funcion
    if ( this.estado == "menu" ) {
      this.menu();
    } else if ( this.estado == "creditos" ) {
      this.creditos();
    } else if ( this.estado == "juego" ) {
      this.juego();
    } else if (this.estado == "ganaste"){
      this.ganaste();
    }else if (this.estado == "perdiste"){
      this.perdiste();
    }
  }

  menu() {
    this.reiniciar();
    background(150);
    image(this.photo [2], 0, 0, 600, 300);
    fill (255); //texto titulo
    textSize (50);
    text ("Calidoscopio", 170, 50);
    textSize (20);
    text (" por Ray Bradbury ", 200, 80);

    fill (222, 47, 123); //dibujo botones
    stroke (222, 47, 123);
    rect (80, 160, 125, 75, 5);
    rect (400, 160, 125, 75, 5);

    fill (255); //texto para botones
    textSize (20);
    text ("enter para ir a\n instrucciones ", 80, 190);
    text (" toque m \n para jugar ", 400, 190);
  }

  creditos() {
    push();
    background(0);
    image(this.photo [4], 0, 0, 600, 300);
    fill(255);
    textAlign(CENTER);
    textSize(20);
    text("Cómo Jugar?", 250, 100);
    text("con las flechitas intenta esquivar los planetas", 250, 120);
    text("Salve al Astronauta!", 450, 150);
    pop();
    push();
    fill (53, 196, 183);
    rect (80, 160, 125, 75, 5);
    pop();
    fill (255);
    textSize (20);
    text (" toque c para \n ir a menú ", 80, 190);
  }
  
  juego(){
    background(150);
      image(this.photo [0], 0, 0, 600, 300);

      this.tiempo++;
      if (this.tiempo >=60) {
        this.tiempoSeg++;
        this.tiempo=0;
      }
      text ("tiempo:"+this.tiempoSeg, 10, 20);
      text("choque:"+this.choque, 140, 20);
      this.Astronauta.dibujar();
      for (let i=0; i<5; i++) {
        this.Planetas[i].dibujarPlanetas();
      }
      this.estrellado();
      if (this.tiempoSeg>=20) {
        this.estado = "ganaste";
      }
      if (this.choque>=3) {
        this.estado = "perdiste";
      }
    }



  teclaPresionada() {
    this.Astronauta.teclaPresionada(keyCode);

    if ( this.estado == "menu") {
      if (keyCode == ENTER) {
        this.estado = "creditos";
      }
    }

    if ( this.estado == "creditos") {
      if (key == 'c' ) {
        this.estado = "menu";
      }
    }

    if (this.estado == "menu") {
      if (key == 'm') {
        this.estado = "juego";
      }
    }
    
    if ( this.estado == "ganaste") {
      if (keyCode == ENTER) {
        this.estado = "menu";
      }
    }
    if ( this.estado == "perdiste") {
      if (keyCode == ENTER) {
        this.estado = "menu";
      }
    }
  }
  ganaste () {
    push();
    background(0);
    image(this.photo [4], 0, 0, 600, 300);
    fill(255);
    textAlign(CENTER);
    textSize(20);
    text("GANASTE =D", 250, 100);
    text("precione Enter para ir a Menu", 250, 120);
    pop();
  }

  perdiste () {
    push();
    background(0);
    image(this.photo [4], 0, 0, 600, 300);
    fill(255);
    textAlign(CENTER);
    textSize(20);
    text("PERDISTE =(", 250, 100);
    text("precione Enter para volver a jugar", 250, 120);
    pop();
  }
  reiniciar() {
    this.Astronauta = new Astronauta(570, height/2, 300, 300);
    for (let i=0; i<5; i++) {
      this.Planetas[i] = new Planetas (0, 25+i*60);
    }
    this.tiempo = 0;
    this.tiempoSeg = 0;
    this.choque = 0;
  }

  colision(ax, ay, aan, aal, px, py, pan, pal) {
    return ay-aal/2 < py+pal/2 && ay+aal/2 > py-pal/2 && ax-aan/2<px+pan/2 ;
  }

  estrellado() {
    for (let i=0; i<5; i++) {
      if (this.colision(this.Astronauta.posX, this.Astronauta.posY, 30, 30, this.Planetas[i].posX, this.Planetas[i].posY, 50, 50)) {
        this.Planetas[i].posX=0-30;
        this.choque++;
      }
    }
  }
}
