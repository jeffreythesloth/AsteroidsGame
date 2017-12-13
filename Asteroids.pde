class Asteroid extends Floater 
{
  public Asteroid() 
  {
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = -13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myCenterX = 200;
    myCenterY = 200;
    myDirectionX = Math.random()*10-5;
    myDirectionY = Math.random()*10-5;
    myPointDirection = 180;
    myColor = color(255,0,0);
  }
  public void setX(int x){myCenterX = x;}
  public int getX(){return(int)myCenterX;}
  public void setY(int y){myCenterY = y;}
  public int getY(){return(int)myCenterY;}
  public void setDirectionX(double x){myDirectionX = x;}
  public double getDirectionX(){return(double)myDirectionX;}
  public void setDirectionY(double y){myDirectionY = y;}
  public double getDirectionY(){return(double)myDirectionY;}
  public void setPointDirection(int degrees){myPointDirection = degrees;}
  public double getPointDirection(){return(double)myPointDirection;}
  private int rotSpeed = (int)(Math.random()*10)-5;
  
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
}