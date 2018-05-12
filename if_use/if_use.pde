int i=1;
void setup()
{
  size(680,400);
 }
void draw()
{if(mouseX>500)    
{
  background(0);
}
 else
 {
   fill(255,0,0);
   ellipse(i,100,50,50);
   i=i+1;
   ellipse(i,200,50,50);
   ellipse(100,i,50,50);
   ellipse(200,i,50,50);
   ellipse(300,i,50,50);
   ellipse(400,i,50,50);
   ellipse(600,i,50,50);
   ellipse(500,i,50,50);
}
}