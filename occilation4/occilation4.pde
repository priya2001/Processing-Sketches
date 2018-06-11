float r = 150;
float a = PI/4;
float loc = 0.0;
float velo = 0.0;
float acc = 0.0001;
void setup()
{background(0);
  size(600, 600);
}
void draw()
{
  
  loc += velo;
  velo += acc;
  translate(width/2, height/2);
  rotate(loc);
  float x = r*sin(a);
  float y = r*cos(a);
  fill(0);
  stroke(random(255),random(255),random(255));
 
  line(0,0, x, y);
  ellipse(x, y, 200, 50);
  {fill(0);
  stroke(random(255),random(255),random(255));
  ellipse(100,100,150,100);
  }
    {fill(0);
  stroke(random(255),random(255),random(255));
  ellipse(200,200,100,50);
  }
}