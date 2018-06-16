float loc=0.0;
float acc=0.00001;
float velo=0.0;
PImage thank;


void setup()
{
  thank=loadImage("thank.gif");
  size(700, 600);
  background(0);
}
void draw()
{
  image(thank, 180, 200);

  loc += velo;
  velo += acc;
  translate(width/2, height/2);
  rotate(loc);
  fill(0);
  stroke(random(255), random(255), random(255));
  rect(200, 100, 30, 100);

  fill(0);
  stroke(255);
  ellipse(200, 200, 100, 10);

  fill(0);
  stroke(255);
  rect(300, 200, 100,10);
}