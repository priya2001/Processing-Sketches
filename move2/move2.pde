int i=1;
void setup()
{size(200,200);
background(0,0,255);
}
void draw()
{
fill(0);
stroke(255,0,0);
rect(i,40,50,50);
ellipse(i,150,40,25);
i=i+5;
rect(100,i,50,50);
ellipse(60,i,40,25);


}