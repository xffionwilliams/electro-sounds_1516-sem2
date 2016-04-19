class Bounce extends AScene {

  //http://www.openprocessing.org/sketch/343510
  
  float a = 0;
  void draw() {
    background(#FFC0CB);
    // float x = width/2 + 100*sin(a);
    float x = map(sin(a), -1, 1, 0, width);
    ellipse(x, height/2, 50, 50);
    a = a + 0.03;
  }
}
