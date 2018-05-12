int i=0;
void setup()
{size(600,600);
}
void draw()
{
 background(0);
 i=0;
 while(i<width)
{

if(mouseX<1)
{
  i=i+1;
}
else
{
  i=i+mouseX;
}
fill(0,0,255);
ellipse(i,300,50,50);
ellipse(300,i,50,50);
ellipse(i,i,50,50);
}
}