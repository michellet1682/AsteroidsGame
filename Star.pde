class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  private int myColor;
  public Star(){
    myX = Math.random()*600;
    myY = Math.random()*600;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  public void show()
  {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}
