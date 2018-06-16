float loc=0.0;
float acc=0.001;
float velo=0.0;
PImage sorry;


void setup()
{
  sorry=loadImage("sorry.gif");
  size(700, 600);
  background(0);
}
void draw()
{
  image(sorry, 250, 220);

  loc += velo;
  velo += acc;
  translate(width/2, height/2);
  rotate(loc);
  fill(0);
  stroke(255);
  rect(200, 100, 30, 100);

  fill(0);
  stroke(random(255),255,255);
  ellipse(200, 200, 100, 10);

  fill(0);
  stroke(0,255,0);
  rect(300, 200, 100,10);

 fill(0);
  stroke(255);
  ellipse(100, 100,10,100);

 fill(0);
  stroke(255,255,0);
  rect(100, 100,100,10);
}