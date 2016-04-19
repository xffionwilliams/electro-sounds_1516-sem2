float d=0, r=0, f, s=6;
boolean Color=true;

int bufferIndex = 2;

void renderBuffer() {
  hint(DISABLE_DEPTH_TEST);
  // render image into the buffer
  buffer.beginDraw();

  // start making changes
  
  
  int intensity = 100; // use a value between 0 and 255 where 0 is fully transparent and 255 fully opaque
  
  buffer.background(850, 0);
  switch(bufferIndex) {
    case(1):rainbow();break;
    case(2):anotherRainbow();break;
  }
  
  
  // stop making changes


  buffer.endDraw();
  // render the buffer into the sketch window
  pushMatrix();
  tint(255, intensity); // adjust intensity of buffer with second argument
  image(buffer, 0, 0);
  popMatrix();
}

void rainbow() {
  f=height;  
  buffer.colorMode(HSB, 1000, 255, 255);
  buffer.tint(20);
  // buffer.background(850, 0);
  buffer.pushMatrix();
  buffer.translate(width/2, height/2);
  buffer.noStroke();
  buffer.fill(250);
  for (int i=0; i<1000; i++) {
    if (Color==true) {
      buffer.fill(i, 255, 255);
    }
    buffer.ellipse(sin(-i)*r, cos(-i)*r, s, s);
    r=(((f*2)-(s*2))*cos((d+i)*sin(d/1000000)*5/PI)/4);
  }
  d++;
  buffer.popMatrix();
}


void anotherRainbow() {
  f=height;  
  buffer.colorMode(HSB, 100, 255, 255);
  buffer.tint(20);
  // buffer.background(850, 0);
  buffer.pushMatrix();
  buffer.translate(width/2, height/2);
  buffer.noStroke();
  buffer.fill(250);
  for (int i=0; i<1000; i++) {
    if (Color==true) {
      buffer.fill(i, 255, 255);
    }
    buffer.ellipse(sin(-i)*r, cos(-i)*r, s, s);
    r=(((f*2)-(s*2))*cos((d+i)*sin(d/100000)*15/PI)/2);
  }
  d++;
  buffer.popMatrix();
}