//Ryoki Ikeda Sketch, it emulate his bar code sketch and randomly generates lines.
float yPos = 0.0;
 
void setup() {  // setup() runs once
 
  size(960, 540);
  frameRate(5);
  background (255);
}
  
void draw() {  // draw() loops forever, until stopped
  yPos = random(height);
  if (yPos < 0) {
    yPos = height;
  }
  line(0, yPos, width, yPos);
}