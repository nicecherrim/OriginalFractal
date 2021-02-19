int size = 50;
int size2 = -500;
void setup() {
  background(10);
  strokeWeight(1);
  stroke(255);
  fill(160, 227, 246,100);
  size(1000, 1000);
}
void draw() {
  size += 20;
  size2 += 10;
  background(0);
  drawFractal(500, 500, size);
  drawFractal(500, 500, size2);
  if(size > 4000) {
    size = 0;
  }
  if(size2 > 4000) {
    size2 = 0;
  }
}
public void drawFractal(int x, int y, int size){
  if (size <= 50){
    ellipse(x, y, size, size); //base case
  } else {
    drawFractal(x+size/3, y, size/3);
    drawFractal(x-size/3, y, size/3);
    drawFractal(x, y+size/3, size/3);
    drawFractal(x, y-size/3, size/3);
    drawFractal(x+size/4, y+size/4, size/3);
    drawFractal(x-size/4, y-size/4, size/3);
    drawFractal(x+size/4, y-size/4, size/3);
    drawFractal(x-size/4, y+size/4, size/3);
  }
}

//void mousePressed() {
//  size += 50;
//  System.out.println(size);
//}
