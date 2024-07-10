/* Mantelli Julieta - 94730/3
 // Comisión 3
 // link al video:
 */

PImage laObra;

float colorBr = map(mouseX, 0, 400, 0, 100);

float parametro1 = 0;
float parametro2 = 0;
float parametro3 = 0;

color color1 = color(255, 255, 255);
color colorGrillaEsp = color(parametro1, parametro2, parametro3);

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
  if (mouseX >= 400) {
    movElipses(mouseX - 400, mouseY);
  }
}

void mousePressed() {
  colorTransformar(mouseX);
  if (colorTransformar(mouseX) == false) {
    parametro1 = 0;
    parametro2 = 0;
    parametro3 = 0;
  } else if (colorTransformar(mouseX) == true) {
    parametro1 = 257;
    parametro3 = colorBr;
  }
}
