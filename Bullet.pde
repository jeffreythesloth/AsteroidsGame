class Bullet extends Floater
{
  public Bullet(Spaceship theShip)
  {
    myCenterX = 100;
    myCenterY = 200;
    myPointDirection = 180;
    double dRadians = myPointDirection*(Math.PI/180);
    myDirectionX = 5*Math.cos(dRadians);
    myDirectionY = 5*Math.sin(dRadians);
    myColor = color(0,255,0);
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
  
  public void show()
  {
   ellipse(10,10,200,200);
   fill(0,0,255);
  }
}