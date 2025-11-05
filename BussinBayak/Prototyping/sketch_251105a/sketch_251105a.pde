// Processing sketch version of your drawing
// Scale: 1 cm = 40 px
float scale = 40;

void setup() {
  size(820, 600);
  background(255);
  stroke(0);
  noFill();

  // Outer frame
  rect(0, 0, 20.5*scale, 15*scale);

  // Large square (5x5 cm) upper left
  rect(0, 0, 5*scale, 5*scale);

  // Small square (2x2 cm) below it
  rect(5*scale, 5*scale, 2*scale, 2*scale);

  // Rectangle labeled "CARD" (1x5 cm) above large square
  rect(5*scale, 0, 5*scale, 1*scale);

  // Right side stack (four rectangles each with inner squares)
  float rightX = 14.3*scale;
  float boxW = 6.2*scale;
  float boxH = 2.7*scale;
  for (int i=0; i<4; i++) {
    float y = i * boxH;
    rect(rightX, y, boxW, boxH);
    rect(rightX + 0.5*scale, y + 0.5*scale, 1.2*scale, 1.2*scale);
  }

  // Bottom section (multiple rectangles)
  rect(0, 13*scale, 1.7*scale, 1.7*scale);
  rect(2*scale, 13.3*scale, 1*scale, 1*scale);
  rect(3.2*scale, 13.3*scale, 1.2*scale, 1.2*scale);
  rect(4.5*scale, 13.3*scale, 4.2*scale, 1*scale);

  // Two grouped small rectangles (like the cluster)
  float startX = 0.5*scale;
  float startY = 9.5*scale;
  for (int i=0; i<4; i++) {
    rect(startX + i*(0.8*scale), startY, 0.4*scale, 0.3*scale);
  }

  // Two mid-right rectangles
  rect(9.5*scale, 9.5*scale, 4.2*scale, 1.2*scale);
  rect(9.5*scale, 11*scale, 4.2*scale, 1.2*scale);

  // Inner smaller rectangles in them
  rect(9.8*scale, 9.8*scale, 1.2*scale, 0.6*scale);
  rect(9.8*scale, 11.3*scale, 1.2*scale, 0.6*scale);
}
