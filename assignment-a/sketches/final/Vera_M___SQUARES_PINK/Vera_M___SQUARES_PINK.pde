//A still of Vera Molnar Pink Squares.
size(960,540);
background(0);
noStroke();
for (int x=5 ;x<1000 ;x+=20){
  for (int y=5; y<1000 ; y+=20){
 
  fill(random(224),random(0),random(210));
  rect(x,y,15,15);
  }}