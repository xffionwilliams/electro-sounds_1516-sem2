// A design inspired by Sol Lewitts sketch, it is a fixed design but looks randomly generated.

//declare
float xPos, yPos, xPPos, yPPos;
color  mainColor;
color  strokeColor;
 
 
void setup()
{
  size(960,540);
  background(0,0,0);
  stroke(0,0,0);
  strokeWeight(1);
  smooth();
  frameRate(6);

    //initialize
   
  mainColor = color(0,0,0);
  strokeColor = color(255,255,255);
   
  xPPos = width/2;
  yPPos = height/2;
}
 
void draw()
{
  //use
  xPos = random(50,width-50);
  yPos = random(50,height-50);
   
  line(xPos,yPos,xPPos,yPPos);
  noStroke();
  stroke(strokeColor,100);
  xPPos = xPos;
  yPPos = yPos;
  if(frameCount%8==0)
  {
     
    //saveFrame("img-###.gif");
  }

}