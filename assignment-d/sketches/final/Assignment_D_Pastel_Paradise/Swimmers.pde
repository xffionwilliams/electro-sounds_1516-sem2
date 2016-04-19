// In reference to "aa_debdeb"
//http://www.openprocessing.org/sketch/278221
class Swimmers extends AScene { 
  ArrayList<Swimmer> swimmers;

  void setup() {
    swimmers = new ArrayList<Swimmer>();
    for (int i = 0; i < 50; i++) {
      swimmers.add(new Swimmer());
    }
  }

  void draw() {

    background (255, 192, 203); //pale pink background
    if (key == 'a') { // flashing background, "a" activates" every other key deactivates it
      background(random(0, 247));
    }
    if (key == 's') { // flashing background, "s" activates" every other key deactivates it
      background(180, 182, 224);
    }


    for (Swimmer swimmer : swimmers) {
      swimmer.update();
      swimmer.display();
    }
  }

  void mousePressed() {
    swimmers.add(new Swimmer(mouseX, mouseY));
  }

  class Swimmer {
    PVector pos;
    float bezierRad;
    PVector vel;
    PVector posVel;
    float bezierSpeed;


    float z = random(0, 255);


    Swimmer() {
      pos = new PVector(random(width), random(height));
      vel = new PVector(map(random(1), 0, 1, -1, 1), map(random(1), 0, 1, -1, 1));
      vel.limit(1);
      posVel = PVector.mult(vel, 4);
      bezierSpeed = vel.mag() * (PI / 16);
    }

    Swimmer(float x, float y) {
      pos = new PVector(x, y);
      vel = new PVector(map(random(1), 0, 1, -1, 1), map(random(1), 0, 1, -1, 1));
      vel.limit(1);
      posVel = PVector.mult(vel, 4);
      bezierSpeed = vel.mag() * (PI / 16);
    }

    void update() {
      pos.add(posVel);
      if (pos.x < 0) {
        pos.x += width;
      }
      if (pos.x > width - 1) {
        pos.x -= width;
      }
      if (pos.y < 0) {
        pos.y += height;
      }
      if (pos.y > height - 1) {
        pos.y -= height;
      }
      bezierRad += bezierSpeed;
    }

    void display() {
      noFill();
      //stroke(255, 250, 240);
      stroke(random(z+=1, 100));

      strokeWeight(4);
      pushMatrix();
      translate(pos.x, pos.y);
      rotate(atan(vel.y / vel.x));
      //    rotate(vel.heading());
      bezier(-15, 0, 
        -5, sin(bezierRad) * 10, 
        5, -sin(bezierRad) * 10, 
        15, 0);
      popMatrix();
    }
  }
}