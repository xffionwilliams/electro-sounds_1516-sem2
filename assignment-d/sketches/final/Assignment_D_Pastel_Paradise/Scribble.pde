//inspired by Assignment A _ Sol lewitt piece
// overlays over any of the other sketches on command
class Scribble extends AScene { 
  float xPos, yPos, xPPos, yPPos;
  color  mainColor;
  color  strokeColor;


  void setup() {
    //initialize

    mainColor = color(255, 255, 255);
    strokeColor = color(255, 255, 255);

    xPPos = width/2;
    yPPos = height/2;
  }

  void draw()
  {
    //use
    xPos = random(50, width-50);
    yPos = random(50, height-50);

    line(xPos, yPos, xPPos, yPPos);
    noStroke();
    stroke(strokeColor, 255);
    xPPos = xPos;
    yPPos = yPos;
    if (frameCount%8==0)
    {

      //saveFrame("img-###.gif");
    }
  }
}