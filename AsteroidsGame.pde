Floater bob = new Spaceship();
Asteroid [] bobs = new Asteroid[5];
Star[] nightSky = new Star[200];
public void setup()
{
  size(400,400);
  for (int i = 0; i < bobs.length; i++)
  {
    bobs[i] = new Asteroid();
  }
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i] = new Star();
  }
}
public void draw()
{
  background(0);
  bob.show();
  bob.move();
  for (int i = 0; i < bobs.length; i++)
  {
    bobs[i].show();
    bobs[i].move();
  }
  for (int i = 0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
}
public void keyPressed()
{
  if (key == 'a') //left
  {
    bob.setDirectionX(-5);
    bob.setDirectionY(0);
    bob.turn(180);
  }
  if (key == 's') //down
  {
    bob.setDirectionX(0);
    bob.setDirectionY(5);
  }
  if (key == 'd') //right
  {
    bob.setDirectionX(5);
    bob.setDirectionY(0);
    bob.turn(180);
  }
  if (key == 'w') //up
  {
    bob.setDirectionX(0);
    bob.setDirectionY(-5);
  }
  if (key == 'q') //up left
  {
    bob.setDirectionX(-5);
    bob.setDirectionY(-5);
  }
  if (key == 'e') //up right
  {
    bob.setDirectionX(5);
    bob.setDirectionY(-5);
  }
  if (key == 'z') //down left
  {
    bob.setDirectionX(-5);
    bob.setDirectionY(5);
  }
  if (key == 'c') //down right
  {
    bob.setDirectionX(5);
    bob.setDirectionY(5);
  }
  if (key == 'p') //accelerate
  {
    bob.accelerate(3);
  }
  if (key == 'm') //hyperspace
  {
    bob.setDirectionX(0);
    bob.setDirectionY(0);
    bob.setX((int)Math.random()*400);
    bob.setY((int)Math.random()*400);
  }
}