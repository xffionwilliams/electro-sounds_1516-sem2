

class MyFlyingObject {

  float x = 0;
  float y = 200;
  float z = 0;
  float s = 10;
  
  float speed = 0;
  
  int col = 0;
  int colX = int(random(colors.width));
  int colY = 150;
  
  
  MyFlyingObject(float theY) {
    y = theY;
    z = random(-400,400);
    s = 10;
    speed = random(0.5, 4.0);
  }

  void move() {
    
    colY+=1;
    colY %= colors.height;
    
    x = x + speed;
    if(x<0 || x>width) {
      speed *= -1;
    }
  }

  void draw() {
    col = colors.get(colX,colY);
    float alpha = abs(sin(frameCount*speed*0.01)*30); 
    fill(col,alpha);
    pushMatrix();
    translate(x, y, z);
    box(s,10,100);
    popMatrix();
  }
}