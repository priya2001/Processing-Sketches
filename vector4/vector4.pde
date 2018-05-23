void setup()
{
  size(600, 600);
}
void draw()
{
  background(0);
  fill(255);
  stroke(255);
  strokeWeight(4);
  translate(width/2, height/2);
  ellipse(0, 0, 4, 4);

  PVector mouse=new PVector(mouseX, mouseY);
  PVector center=new PVector(width/2, height/2);

  mouse.sub(center);
 // mouse.mult(5);
  line(0, 0, mouse.x, mouse.y);
  float m=mouse.mag();
fill(255,0,0);  
  rect(0,0,m,50);
   rect(0,0,50,m);
  
  
  
}