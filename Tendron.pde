
int theColor = 0;
int bright = 255;
boolean pressed = false;
public void setup()
{
  size(500, 500);  
  background(255);
  frameRate(5);
  colorMode(HSB);
}

public void draw()
{
  background(0);
  Cluster c = new Cluster(25, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate

  if (theColor>255) {
    theColor = 0;
  }
}
public void mousePressed() {
  bright = (int)(Math.random()*100 )+ 125;
}
public void mouseWheel() {//useless function


}
public void keyPressed() 
{
    theColor+=5;
  bright+=10;
}
