float loc = 0.0;
float acc = 0.001;
float velo = 0.0;
PImage Thank;
void setup()
{
  Thank=loadImage("Thank.gif");

  size(800, 700);
  background(0);
}
void draw()
{
  image(Thank, 180, 250);

  loc += velo;
  velo += acc;
  translate(width/2, height/2);
  rotate(loc);
  fill(0);
  stroke(random(255),random(255),random(255));
  ellipse(230, 230, random(80), random( 80));
  {
    fill(0);
    stroke(255);
    ellipse(170, 170, random(80), random( 80));
  }
  {
    fill(0);
    stroke(random(255),random(255),random(255));
    rect(280, 280, random(100), random( 10));
  }
}