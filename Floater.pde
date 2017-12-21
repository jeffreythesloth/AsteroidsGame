abstract class Floater
{
  protected double myCenterX, myCenterY;
  protected double myDirectionX, myDirectionY;
  protected double myPointDirection;
  protected int corners;
  protected int[] xCorners;
  protected int[] yCorners;
  protected int myColor;
  abstract public void setX(int x);
  abstract public int getX();
  abstract public void setY(int y);
  abstract public int getY();
  abstract public void setDirectionX(double x);
  abstract public double getDirectionX();
  abstract public void setDirectionY(double y);
  abstract public double getDirectionY();
  abstract public void setPointDirection(int degrees);
  abstract public double getPointDirection();
  
  public void accelerate (double dAmount)   
  {              
    double dRadians = myPointDirection*(Math.PI/180);      
    myDirectionX += ((dAmount) * Math.cos(dRadians));    
    myDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (int nDegreesOfRotation)   
  {         
    myPointDirection+=nDegreesOfRotation;   
  }   
  public void move ()   //move the floater in the current direction of travel
  {        
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;       
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }   
  }   
  public void show()
  {
    fill(myColor);
    stroke(myColor);
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);
    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}