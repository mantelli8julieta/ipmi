// Mantelli Julieta - 94730/3
// Comisión 3 - David Bedoian
// link al video: https://youtu.be/fgKw0rha0u4

// interacción: mover el mouse en la mitad izquierda de la pantalla, cliquear y mantener para activar el cambio de color

PImage laObra;

float parametro1 = 0;
float parametro2 = 0;
float parametro3 = 0;

color color1 = color(255, 255, 255);
color colorGrillaEsp = color(parametro1, parametro2, parametro3);
color originalColorGrillaEsp = colorGrillaEsp;

float colorBr;

void setup() {
  colorMode(HSB);
  size(800, 400);
  background(255);
  laObra = loadImage("data/obratp3.png");
}

int maxGrilla;
int tamRect;

void draw() {
  image(laObra, 0, 0, 400, 400);
  translate(400, 0);

  maxGrilla = 10;
  tamRect = 40;

  colorMode(HSB);

  float colorBr = map(mouseX, 0, 400, 0, 100);

  // intereacción d cambio d color al hacer click

  if (mousePressed && mouseX > 400) {
    colorGrillaEsp = color(280, 100, colorBr);
  } else {
    colorGrillaEsp = originalColorGrillaEsp;
  }

  // float parametro3;


  for (int grillaX = 0; grillaX < maxGrilla; grillaX += 1) {
    for (int grillaY = 0; grillaY < maxGrilla; grillaY += 1) {
      if ((grillaX + grillaY) % 2 == 0) {
        fill(colorGrillaEsp);
      } else {
        fill(color1);
      }
      noStroke();
      rect(grillaX*tamRect, grillaY*tamRect, tamRect, tamRect);
    }
  }
  colorTransformar(mouseX);
  if (mouseX > 400) {
    movElipses(mouseX - 400, mouseY);
  }
}
