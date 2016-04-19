// http://www.openprocessing.org/sketch/341083
// inspired by "spirograph"

class Lines extends AScene {

  PVector center = new PVector(width/2, height/2);
  float radius1 = 250;
  float radius2 = 250;
  float angle1 = 0, angle2 = 0, angle1Vel = PI/3, angle2Vel = 2;
  float[] lastPoint = new float[]{0, 0};
  float[] newPoint = new float[]{0, 0};
  float[] lastDrawn = new float[]{0, 0};
  float[] newDraw = new float[]{0, 0};
  
  void draw() {
    lastPoint[0] = center.x + radius1*cos(angle1);
    lastPoint[1] = center.y + radius1 * sin(angle1);
    lastDrawn[0] = lastPoint[0] + radius2*cos(angle2);
    lastDrawn[1] = lastPoint[1] + radius2*sin(angle2);

    angle1 += angle1Vel;
    angle2 += angle2Vel;

    newPoint[0] = center.x + radius1*cos(angle1);
    newPoint[1] = center.y + radius1 * sin(angle1);
    newDraw[0] = newPoint[0] + radius2*cos(angle2);
    newDraw[1] = newPoint[1] + radius2*sin(angle2);
    line(lastDrawn[0], lastDrawn[1], newDraw[0], newDraw[1]);
  }

  void keyPressed() {
    switch(key) {
    case ' ':
      background(128, 128, 128);
      angle1Vel = random(2*PI);
      angle2Vel = random(2*PI);
    }
  }
}
