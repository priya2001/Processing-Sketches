
void setup()
{  
  background(0); 

  size(600, 500);
}
void draw()
{
  fill(255, 0, 0);
  quard(200,200);
 quard(300, 400);
  quard(500, 500);
}
void quard( float x,float y )
{
  beginShape();
  vertex( x-100, y- 50);
  vertex(x-50, y-150);
  vertex(x-150, y- 200);
  vertex(x-200, y-50);
  endShape();
}