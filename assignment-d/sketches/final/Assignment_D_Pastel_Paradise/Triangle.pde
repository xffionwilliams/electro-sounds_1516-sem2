// inverted triangle that is attracted to the mouse, it rotates and has a flashing background command.
class Triangle extends AScene { 
  
//float ;

float y = 0.1;
float x = 0.1;
float z = 0.1;

void draw() {
  //background(random(0, 247));
  background (246, 247, 170); //pale yellow background
  if (key == '1') { // flashing background, "1" activates" every other key deactivates it
    background(random(0, 247));
   // beat.detect(song.mix);
      //if ( beat.isOnset() );
    //fill(60, 255, 0, a);
   // if ( beat.isOnset() );
  }
  pushMatrix();

  translate(width/2, height/2);
  rotateX(x);
  rotateY(y);
  rotateZ(z);
  rotateY(map(mouseX, 0, width, 0, 0.5*PI));
  noCursor();

  fill(255, 200, 200); // pink
  beginShape();
  vertex(0, 0, 0);//top
  vertex(50, 100, 50);
  vertex(-50, 100, 50);
  endShape();
    //if ( beat.isOnset() );

  //  fill(210, 255, 200); // green
  //  beginShape();
  //  vertex(0, 0, 0);
  //  vertex(50, 100, 50);
  //  vertex(50, 100, -50);
  //  endShape();

  fill(200, 255, 255); // baby blue
  beginShape();
  vertex(0, 0, 0);
  vertex(-50, 100, 50);
  vertex(-50, 100, -50);
  endShape();
   // if ( beat.isOnset() );

  fill(200, 200, 255); // purple
  beginShape();
  vertex(0, 0, 0);
  vertex(-50, 100, -50);
  vertex(50, 100, 50);
  endShape();
   // if ( beat.isOnset() );
   
   if (key == 'e') { // flashing background, "e" activates" every other key deactivates it
      background(random(0, 247));
    }
  
  popMatrix();

  x += (.002);
  y += (.1);
  z += (.00009);
}
}