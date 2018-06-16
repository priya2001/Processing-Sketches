float loc=0.0;
float acc=0.0001;
float velo=0.0;
PImage hello;


void setup()
{
  hello=loadImage("hello.jpg");
  size(700, 600);
  background(0);
}
void draw()
{
  image(hello, 180, 200);

  loc += velo;
  velo += acc;
  translate(width/2, height/2);
  rotate(loc);
  fill(0);
  stroke(random(255), random(255), random(255));
  ellipse(200, 100, 10,100);

  fill(0);
  stroke(255);
  rect(200, 200, 100, 10);

  fill(0);
  stroke(255);
  ellipse(300, 200, 10,100);
}