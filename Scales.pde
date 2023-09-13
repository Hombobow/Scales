void setup() {
  size(500, 500);  //feel free to change the size

}
void draw() {
  double r = Math.random();
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  for ( int y = 25; y < 551; y += 50) {
    for (int j = 0; j < 501; j += 50) {
      for(int i = -50; i < 501; i += 50) {
         scale(i, j, r);
         scale(i, y, r);
      }
    }
  }
}
void scale(int x, int y, double ran) {
  beginShape();
  if (ran < (double) 1/3) {
    beginShape();
    bezier(x, y, x+50, y+50, x+50, y+50, x+100, y);
    endShape();
  } else if (ran < (double) 2/3) {
    beginShape();
    curveVertex(x, y-50);
    curveVertex(x, y-50);
    curveVertex(x+50, y);
    curveVertex(x+100, y-50);
    curveVertex(x+100, y-50);
    endShape();
  } else if (ran < 1) {
    beginShape();
    vertex(x, y+17);
    vertex(x, y+34);
    vertex(x+33, y + 34);
    vertex(x + 33, y + 50);
    vertex(x + 66, y + 50);
    vertex(x + 66, y+ 34);
    vertex(x+100, y +34);
    vertex(x +100, y+17);
    vertex(x + 66, y +17);
    vertex(x + 66, y);
    vertex(x + 33, y);
    vertex(x + 33, y + 17);
    vertex(x, y + 17);
    endShape();
  }
}
