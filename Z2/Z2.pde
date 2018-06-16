float loc = 0.0;
float acc = 0.001;
float velo = 0.0;
PImage Thank;
void setup()
{
  Thank=loadImage("Thank.gif");

  size(600, 600);
  background(180);
}
void draw()
{
  image(Thank, 80, 200);

  loc += velo;
  velo += acc;
  translate(width/2, height/2);
  rotate(loc);
  fill(0);
  stroke(random(255),random(255),random(255));
  rect(150, 150, random(80), random( 10));
  {
    fill(0);
    stroke(random(255),random(255),random(255));
    rect(200, 200, random(100), random( 10));
  }
  {
    fill(0);
    stroke(random(255),random(255),random(255));
    rect(300, 300, random(100), random( 10));
  }
  
  {
    fill(0);
    stroke(random(255),random(255),random(255));
    rect(400, 400, random(100), random( 10));
  }
}