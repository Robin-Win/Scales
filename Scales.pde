void setup() {
  background(#939393);
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}

boolean offs = false;//controls whether offset is true or not

void draw() {
  for (int y = 0; y < 500; y = y + 30){
    for (int x = 0; x < 500; x = x + 30){
      if(offs == true){
      scale(x-5, y);
      } else {
        scale(x, y);
    }
    if (offs == true){
      offs = false;
    } else {
      offs = true;
   }
   }
  }
}
void scale(int x, int y) {
  fill(#64C2DB);
  strokeWeight(1);
  beginShape();
  curveVertex(x+10, y+ 20);
  curveVertex(x+10, y+ 20);
  curveVertex(x+1, y+ 40);
  curveVertex(x+25, y+ 70);
  curveVertex(x+40, y+ 20);
  curveVertex(x+25, y+ 15);
  curveVertex(x +10, y + 20);
  curveVertex(x +10, y + 20);
  endShape();
}


