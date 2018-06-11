PImage smile;
float  angle=PI/4;
float velo=0.01; 



void setup()
{ background(0);
//smile=loadImage("smile.jpg");
  size(600,600);
}

void draw()
{//image(smile,50,100);
  
  float y = map(sin(angle), -1, 1, 50, 600);

  angle += velo;
  ellipseMode(CENTER);
  stroke(random(255),random(255),random(255));
  strokeWeight(1);
  fill(0);
  translate(random(width), 0);
  line(0, 0, 0, y);
  rect(0, y, random(100),random(100));
}