// función para movimiento d los círculos contenidos dentro de la grilla

void movElipses(int mouseX, int mouseY) {
  int tamElipse = 17;
  int offsetElipse = tamRect / 2 - tamElipse / 2;

  for (int grilla2X = 0; grilla2X < maxGrilla; grilla2X += 1) {
    for (int grilla2Y = 0; grilla2Y < maxGrilla; grilla2Y += 1) {
      if ((grilla2X + grilla2Y) % 2 == 0) {
        noStroke();
        fill(color1);
      } else {
        fill(colorGrillaEsp);
      }

      //ellipse(valConstrainX*(offsetElipse)+(offsetElipse/2), valConstrainY*(offsetElipse)+(offsetElipse/2), tamElipse, tamElipse);

      float valConstrainX = constrain(mouseX, grilla2X * tamRect, (grilla2X + 1) * tamRect - tamElipse);
      float valConstrainY = constrain(mouseY, grilla2Y * tamRect, (grilla2Y + 1) * tamRect - tamElipse);
      ellipse(valConstrainX + offsetElipse-5, valConstrainY + offsetElipse-5, tamElipse, tamElipse);
    }
  }
}

// función para el cambio de color de la grilla

boolean colorTransformar(int mouseX) {
  if (mousePressed && mouseX > 400) {
    return true;
  } else {
    return false;
  }
}
