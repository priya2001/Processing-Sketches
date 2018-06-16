float loc=0.0;
float acc=0.0001;
float velo=0.0;
PImage Thanks;


void setup()
{
  Thanks=loadImage("Thanks.jpg");
  size(700, 600);
  background(255);
}
void draw()
{
  image(Thanks, 240, 190);

  loc += velo;
  velo += acc;
  translate(width/2, height/2);
  rotate(loc);
  fill(0);
  stroke(random(255), random(255), random(255));
  rect(200, 100, 30, 100);

  fill(0);
  stroke(255);
  ellipse(200, 200, 10, 100);

  fill(0);
  stroke(255);
  rect(300, 200, 10,100);


 fill(0);
  stroke(0,0,255);
  ellipse(150, 150, 200,10);

 fill(0);
  stroke(255,0,0);
  ellipse(200, 200, 200,10);

 fill(0);
  stroke(0,255,0);
  ellipse(300, 300, 200,10);
}