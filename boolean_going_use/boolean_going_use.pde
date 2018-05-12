boolean going=false;
int i=100;
void setup()
{size(600,600);
}
void draw()
{background(0);
ellipse(200,i,25,25);
if(going)
i=i+10;
}
void mousePressed()
{
  going=true;
}