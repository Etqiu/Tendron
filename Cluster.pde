public class Cluster
{

  public final static int NUM_STEMS = 7; //number of tendrils per cluster
  int lengths;
  int myX;
  int myY;
  public Cluster(int len, int x, int y)
  {
    lengths = len;
    myX = x;
    myY = y;

    Tendril a = new Tendril(lengths, (2*PI/7)*0, myX, myY);
    Tendril b = new Tendril(lengths, (2*PI/7)*1, myX, myY);
    Tendril c = new Tendril(lengths, (2*PI/7)*2, myX, myY);
    Tendril d = new Tendril(lengths, (2*PI/7)*3, myX, myY);
    Tendril e = new Tendril(lengths, (2*PI/7)*4, myX, myY);
    Tendril f = new Tendril(lengths, (2*PI/7)*5, myX, myY);

    a.show();
    b.show();
    c.show();
    d.show();
    e.show();
    f.show();
  }
}
