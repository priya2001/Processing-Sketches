float loc = 0.0;
float velo = 0.0;
float acc = 0.001;
void setup()
{ 
  background(0);
  size(600, 600);
}
void draw()
{
  {
    loc += velo;
    velo += acc;
    fill(0);
    stroke(255);
    translate(width/2, height/2);
    rotate(loc);
    rect(0, 0, 100, 50);
    fill(255, 0, 0);
    stroke(0);
    rect(0, 0, 80, 40);
    fill(0, 0, 255);
    stroke(255);
    rect(0, 0, 50, 25);
    fill(255, 255, 0);
    stroke(0);  
    rect(0, 0, 40, 20);
  }

  { 
    rotate(loc);
    rect(500, 100, 100, 50);
    fill(random(255), 0, 0);
    stroke(255);
    rect(200, 100, 80, 40);
    fill(0, 0, random( 255));
    stroke(255);
    rect(100, 100, 50, 25);
  }
}