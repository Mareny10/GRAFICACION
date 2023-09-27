PShape cat;
PImage txtr;
float theta;

void setup() {
  size (500, 500, P3D);
  txtr = loadImage("cat.jpg");
  cat= loadShape("cat.obj");
  cat.setTexture(txtr); //attach texture to the 3D shape
}


void draw () {
  background (0);
  //lights();

  pushMatrix();
  translate (width/2, height/2);
  rotate(theta);
  rotateY(theta/2);
  scale (50);
  shape (cat);
  popMatrix();

  theta+=.01; //increment angle
}
