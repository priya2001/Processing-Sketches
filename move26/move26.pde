int i=1;
void setup()
{size(600,200);
background(0,0,255);
}
void draw()
{
fill(0);
stroke(255,0,0);
rect(i,40,50,50);
ellipse(i,60,40,25);
i=i+1;
rect(100,i,50,50);
ellipse(350,i,40,25);
rect(i,100,50,50);
ellipse(i,120,40,25);

rect(400,i,50,50);
ellipse(200,i,40,25);
ellipse(250,i,40,25);
ellipse(300,i,40,25);
}