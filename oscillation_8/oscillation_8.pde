float loc = 0.0;
float acc = 0.001;
float velo = 0.0;
PImage priya;
void setup()
{priya=loadImage("priya.gif");
  
  size(600, 600);
  background(0);
}
void draw()
{image(priya,200,200);
  
  loc += velo;
  velo += acc;
   translate(width/2, height/2);
  rotate(loc);
  fill(0);
  stroke(random(255), random(255), random(255));
  rect(200, 200, random(200), random( 10));
  {fill(0);
  stroke(random(255), random(255), random(255));
  ellipse(150, 150, random(80), random( 80));  
  }
  {fill(0);
  stroke(random(255), random(255), random(255));
rect(100, 100, random(20), random( 20));  
  }
}