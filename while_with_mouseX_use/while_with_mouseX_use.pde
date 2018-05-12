float i=0;
float j=0;
void setup()
{size(600,600);
}
void draw()
{background(0);
i=0;
while(i<width)
{
  if(mouseX<10)
{
  i=i+1;
}
  else
  {
    i=i+mouseX;
  }
  
  fill(255,0,0);
  ellipse(i,300,50,50);
  i=i+10;
}
}
//j=0;
//while(j<height)
//{if(10>mouseY)
//{ 
 // j=j+1;
//}
//else
//{
  //j=j+mouseY;
//}
//fill(0,0,255);
//ellipse(300,j,50,50);
//}
//}