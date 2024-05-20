/*
 Mantelli Julieta - 94730/3 - Comisión 3
 -> obra: "Bugs 2: Infestation" (2012) de squidsoup (squidsoup.org)
 --> link a la página oficial de la obra: https://www.squidsoup.org/portfolio/bugs2/
 */

// 151, 255, 67 -> rgb d verde lima muy lindo q quiero guardar

//imágenes
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage botonreset;

//texto
String txt1 = "BUGS 2: INFESTATION\n       de squidsoup";
String txt2 = "el proyecto utiliza habitaciones\noscurecidas y sensores Kinect\n(controles de X-Box)\npara proyectar arañas, escarabajos\ny ciempiés que interactúan\ncon el espacio, incluidos\nlos participantes de la obra.";
String txt3a = "Mientras que algunos de los insectos se alejan\nde las personas, otros son mas inquisitivos y\nhasta se suben a los brazos de quienes\nse acercan.";
String txt3b = "Si son pisados o aplastados, los pixeles\nque los componen se dispersan por el suelo.";
String txt4a = "BUGS 2 fue presentada por primera vez en 2012";
String txt4b = "en Inglaterra. se ha presentado hasta 2016";
String txt4c = "en Qatar, Canadá, Francia y China";

//variables - diapo 1
float tituloY = -40;
float rect1aY = -60;
float rect1bY = -30;

//variables - diapo 2
float testTint = 0;
float txt2x = 540;
float txt2angulo1;

//variables - diapo 3
float txt3aX = 20;
float txt3bX = 20;
float txt3aY = -100;
float txt3bY = 540;

//variables - diapo 4
float txt4aX = -600;
float txt4bX = 800;
float txt4cX = -850;

float rect4aX = -605;
float rect4bX = 800;
float rect4cX = -855;

//fuentes tipográficas
PFont courier30;
PFont courier22;

//otras variables
int contador;s

int botonX;
int botonY;
int botonR;

void setup() {
  size(640, 480);

  img1 = loadImage("data/tp2img1.png");
  img2 = loadImage("data/tp2img2.png");
  img3 = loadImage("data/tp2img3.png");
  img4 = loadImage("data/tp2img4.png");
  botonreset = loadImage("data/bichoboton2.png");

  courier30 = loadFont("data/courier30.vlw");
  courier22 = loadFont("data/courier22.vlw");

  contador = 0;

  botonX = 585 ;
  botonY = 425;
  botonR = 30;
}

void draw() {

  background(0);
  textFont(courier30);
  //fill para el texto
  fill(255);

  contador += 1;

  //diapo1
  if (contador < 260) {
    image(img1, 0, 0, 640, 480);
    pushStyle();
    noStroke();
    fill(182, 67, 255);
    rect(270, rect1aY, 350, 24);
    rect(397, rect1bY, 223, 24);
    popStyle();
    text(txt1, 275, tituloY);
    tituloY +=2 ;
    rect1aY +=2 ;
    rect1bY +=2 ;
  } else if (contador > 260 && contador < 750) {
    //diapo2
    tint(255, testTint);
    image(img2, 0, 0, 640, 480);
    txt2angulo1 = radians(20);
    rotate(txt2angulo1);
    textFont(courier22);
    pushStyle();
    fill(255, 209, 39);
    rect(txt2x, 460, 150, 20 );
    popStyle();
    text(txt2, txt2x, 50);
    testTint += 1.3;
    txt2x -= 2;
  } else if (contador > 750 && contador < 1250) {
    //diapo3
    image(img3, 0, 0, 640, 480);
    textFont(courier22);
    text(txt3a, txt3aX, txt3aY);
    text(txt3b, txt3bX, txt3bY);
    txt3aY += 0.8;
    txt3bY -= 0.8;
    if (txt3aY >= 150) {
      txt3aX +=3;
      txt3bX -= 3;
    }
  } else if (contador > 1250) {
    //diapo4
    image(img4, 0, 0, 640, 480);
    textFont(courier22);
    noStroke();
    fill(151, 255, 67);
    rect(rect4aX, 200, 590, 24);
    rect(rect4bX, 230, 550, 24);
    rect(rect4cX, 260, 435, 24);
    rect4aX += 2;
    rect4bX -= 2;
    rect4cX += 2;
    fill(0);
    text(txt4a, txt4aX, 220);
    text(txt4b, txt4bX, 250);
    text(txt4c, txt4cX, 280);
    txt4aX += 2;
    txt4bX -= 2;
    txt4cX += 2;
  }

  //condicional del botón
  if (contador > 2000) {
    image(botonreset, 530, 380, 115, 115);
    textFont(courier22);
    fill(255);
    text("RESET", 555, 434);
  }

  println(contador);
}

void mousePressed() {
  float distBoton;
  distBoton = dist(botonX, botonY, mouseX, mouseY);
  if (contador > 2000 && distBoton <= botonR) {
    contador = 0;

    tituloY = -40;
    rect1aY = -60;
    rect1bY = -30;

    testTint = 0;
    txt2x = 540;

    txt3aX = 20;
    txt3bX = 20;
    txt3aY = -100;
    txt3bY = 540;

    txt4aX = -600;
    txt4bX = 800;
    txt4cX = -850;

    rect4aX = -605;
    rect4bX = 800;
    rect4cX = -855;
  }
}
