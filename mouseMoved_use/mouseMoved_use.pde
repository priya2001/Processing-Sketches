void setup()
{size(600,300);
background(0);
}
void draw()
{}
void mouseMoved()
{fill(255,255,random(255));
ellipse(random(600),random(300),random(25),50);
}