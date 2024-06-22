/* Mantelli Julieta - 94730/3
 // Comisión 3
 // link al video:
 hola profe lo estoy entregando incompleto al tp, sé q voy directo a recu
 saluditos
 */ 
 
PImage laObra;

void setup() {
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
        fill(0);
      } else {
        fill(255);
      }
      rect(grillaX*tamRect, grillaY*tamRect, tamRect, tamRect);
    }
  }

  int tamElipse = 17;
  int offsetElipse = 40;

  for (int grilla2X = 0; grilla2X < maxGrilla; grilla2X += 1) {
    for (int grilla2Y = 0; grilla2Y < maxGrilla; grilla2Y += 1) {
      if ((grilla2X + grilla2Y) % 2 == 0) {
        fill(255);
      } else {
        fill(0);
      }
      ellipse(grilla2X*(offsetElipse)+(offsetElipse/2), grilla2Y*(offsetElipse)+(offsetElipse/2), tamElipse, tamElipse);
    }
  }
}
