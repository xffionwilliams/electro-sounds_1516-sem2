// 3 different color combos using key press, it involves coloured rectangles.
ArrayList<MyFlyingObject> os = new ArrayList();
PImage colors;

void setup() {
  size(960, 540, P3D);
  colors = loadImage("o-COLOR-570.jpg");
  noStroke();
  for(int i=0;i<height;i++) {
    os.add(new MyFlyingObject(i));
  }
  background(255);
}


void draw() {
  for(MyFlyingObject o:os) {
  o.move();
  o.draw();
  }
}


void keyPressed() {
  switch(key) {
    case('1'):colors = loadImage("o-COLOR-570.jpg"); break;
    case('2'):colors = loadImage("False_colors_palette_color_test_chart.png"); break;
    case('3'):colors = loadImage("images.jpg"); break;
  }
}