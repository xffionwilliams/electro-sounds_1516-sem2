//uses the concept of generative art involving squares and lines.
import codeanticode.syphon.SyphonServer;

SyphonServer syphon;
PGraphics buffer;

ArrayList<MyFlyingObject> os = new ArrayList();
PImage colors;

void settings() {
  size(960, 540, P3D);
  PJOGL.profile=1;
  smooth(8);
}

void setup() {
  size(960, 540);
  colors = loadImage("o-COLOR-570.jpg");
  noStroke();
  for (int i=0; i<height; i++) {
    os.add(new MyFlyingObject(i));
  }
  background(0);
  syphon = new SyphonServer( this, "p5-to-syphon" );
  buffer = createGraphics(width, height, P3D);
}



void draw() {
  background(0);
  fill(255);
  for (MyFlyingObject o : os) {
    o.move();
    o.draw();
  }
  syphon.sendScreen( );
}


void keyPressed() {
  switch(key) {
    case('1'):
    colors = loadImage("p2.jpeg"); 
    break;
    case('2'):
    colors = loadImage("False_colors_palette_color_test_chart.png"); 
    break;
    case('3'):
    colors = loadImage("images.jpg"); 
    break;
    case('4'):
    colors = loadImage("ffionislame.jpg"); 
    break;
    case('5'):
    colors = loadImage("pastel.jpg"); 
    break;
  }
}