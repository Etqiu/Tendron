class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;

  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y)
  {

    myNumSegments = len;
    myX = x;
    myY = y;
    myAngle = theta;
  }
  public void show()
  {

    float endX= myX;
    float endY= myY;
    float startX = myX;
    float startY = myY;
    stroke(theColor, 255, bright);
    for (int i = 0; i<myNumSegments; i++) {
      myAngle+=(double)(Math.random()*-.4)+.2;

      endX = startX + (float)Math.cos(myAngle)*SEG_LENGTH;
      endY = startY + (float)Math.sin((float)myAngle)*SEG_LENGTH;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    if (myNumSegments >= 4) {
      Cluster c = new Cluster(myNumSegments/3, (int)endX, (int)endY);
    }
  }
}


