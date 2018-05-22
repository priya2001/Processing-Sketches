PImage smile1;
void setup()
{size(900,619);
smile1=loadImage("smile1.jpg");
}
void draw()
{image(smile1,0,0);
//background(0);
String s="''Positive Thoughts,";
String s1="Positive action,";

String s2="Positive raults''";
PFont f=createFont("const",100);
fill(255,0,0);
textFont(f);
text(s,40,200);
text(s1,100,300);
text(s2,100,400);
}