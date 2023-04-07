// Sapag Nayla
// tp0 comisión 1

PImage imagen;

void setup() {
  size (800, 400);
  imagen = loadImage ("data/paisaje.png");
}

void draw() {
  background (224, 215, 250);

  stroke (165, 150, 206);
  fill (215, 208, 234);
  ellipseMode ( RADIUS);
  ellipse (400, 40, 400, 40);

  stroke (120, 122, 224);
  fill (204, 216, 250); //montaña atras celeste
  triangle (10, 200, 500, 20, 500, 200);
  rect (500, 20, 800, 500);

  stroke (149, 155, 20);
  fill (90, 65, 28);
  triangle (100, 200, 400, 70, 460, 200); // montaña 1 marron

  stroke (120, 122, 224);
  fill (204, 216, 250);
  triangle (0, 275, 690, 50, 800, 275); //montaña grande
  rect (690, 50, 300, 300);

  stroke (149, 155, 20);
  fill (90, 65, 28);
  triangle (450, 300, 700, 80, 800, 300); //segunda montaña marron

  stroke (23, 57, 29);
  fill (43, 72, 20);
  rect (0, 180, 800, 70); //parte de atras arboles

  stroke (23, 35, 57);
  fill (4, 33, 44);
  rect (0, 130, 100, 100); //montaña oculta izquierda

  stroke (11, 36, 3);
  fill (7, 70, 31);
  rect (720, 100, 800, 150); //montaña arboles
  triangle (650, 275, 720, 100, 720, 275);

  fill (41, 59, 11);
  triangle (650, 275, 680, 130, 700, 275); //primer arbol
  triangle (700, 275, 730, 130, 750, 275); //tercer arbol
  rect (0, 160, 75, 50);

  fill (47, 72, 9);
  rect (0, 200, 800, 100); // rectangulo arboles

  fill (32, 46, 8);
  triangle (675, 275, 700, 130, 725, 275); //segundo arbol
  triangle (725, 275, 760, 130, 785, 275); // cuarto arbol

  fill (137, 209, 44);
  rect (0, 275, 800, 200); //rectangulo

  stroke (14, 57, 0);
  fill (93, 139, 15);
  rect (310, 250, 150, 100); //cuadrado derecho

  stroke (155, 28, 75);
  fill (227, 53, 85);
  rect (0, 370, 700, 100); //flores izquierda
  rect (460, 290, 390, 50); //flores derecha

  stroke (14, 57, 0);
  fill (85, 129, 21);
  rect (0, 230, 150, 60); //cuadrado izquierdo

  fill (113, 170, 29);
  rect (180, 230, 120, 60); //cuadrado en medio
  image  (imagen, 600, 200, 200, 200);
}
