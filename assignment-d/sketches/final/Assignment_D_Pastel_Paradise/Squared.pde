// With reference to “Chris Chiang”
//http://www.openprocessing.org/sketch/85635
class Squared extends AScene {

  //import processing.opengl.*;
  float y = 0.1;
  float x = 0.1;
  float z = 0.1;
  void setup()
  {
    size(1280, 720, P3D);
    smooth();
    noCursor();
  }
  void draw()
  {

    stroke(random(0, 254), random(0, 254), random(0, 254), random(0, 100)); //colors the outline of the cube

    translate(width/2, height/2);
    rotateX(x);
    rotateY(y);
    rotateZ(z);
    background (246, 247, 170); //pale yellow background
    if (key == 'q') { // flashing background, "q" activates" every other key deactivates it
      background(random(0, 247));
    }
    if (key == 'w') { // makes square different colours
      fill(mouseX, mouseY, random(240, 170));
    }
    //fill(255, 228, 225);
    box(175);
    x += random(.0);
    y += random(.1);
    z += random(.1);
  }
}