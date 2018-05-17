PImage home;
Ball []ball=new Ball[500];
void setup()
{home=loadImage("home.jpg");
  size(920, 430);
  for (int i=0; i<500; i++)
  {
    ball[i] = new Ball(random(2));
  }
}
void draw()
{ 
  background(0);
  image(home,460,215);
imageMode(CENTER);
  
  for (int i=0; i<500; i++)

  {
    ball[i].display();
    ball[i].ascend();
    ball[i].top();
  }
}

class Ball
{
  float x, y, D;
  Ball(float ptr)
  {
    x=random(width);
    y=random(height);
    D=ptr;
  }
  void display()
  {
    fill(255);
    stroke(255);
    ellipse(x, y, D, D);
  }
  void ascend()
  {
    y++;
    x+=random(-2, 2);
  }
  void top()
  {
    if (y > height)
      y=0;
  }
}