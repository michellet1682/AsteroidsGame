class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 4;
      xCorners = new int [corners];
      yCorners = new int [corners];
      xCorners[0] = 16;
      yCorners[0] = 0;
      xCorners[1] = -8;
      yCorners[1] = 8;
      xCorners[2] = -2;
      yCorners[2] = 0;
      xCorners[3] = -8;
      yCorners[3] = -8;
      
      myCenterX = 300;
      myCenterY = 300;
      myDirectionX = 0;
      myDirectionY = 0;
      myPointDirection = 0;
      myColor = 255;
    }
    
    public void setX(int x) {myCenterX = x;}
    public int getX() {return (int)myCenterX;}
    public void setY(int y) {myCenterY = y;}
    public int getY() {return (int)myCenterY;}
    public void setDirectionX(double x) {myDirectionX = x;}
    public double getDirectionX() {return myDirectionX;}
    public void setDirectionY(double y) {myDirectionY = y;}
    public double getDirectionY() {return myDirectionY;}
    public void setPointDirection(int degrees) {myPointDirection = degrees;}
    public double getPointDirection() {return myPointDirection;} 
}
