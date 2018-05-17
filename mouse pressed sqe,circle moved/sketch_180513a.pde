boolean going = true;
float x = 0;
float y = 0;
float k = 50;
float j = -0.1;
void setup()
{
  background(0);
  size(500, 500);
}
void draw()
{
  if(going)
  {
    moved();
    
    display();
    check();
  }
}

void display()
{
  fill(random(255), random(255), random( 255));
  ellipse(x, y, 50, 50);
  rect(y, x, 50, 50);
}

void moved()
{ 
  if (going)
   {
     x += k;
     y += j;
   }
}

void check()
{
  if (x > width || x < 0)
    k *= -1;
  if (y > height || y < 0)
    j *= -1;
}

void mousePressed()    
{
  going = !going;
}