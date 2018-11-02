Spaceship ship = new Spaceship();
Star galaxy[] = new Star[200];
public void setup() 
{
  size(600,600);
  for(int i = 0; i < galaxy.length; i++){
    galaxy[i] = new Star();
  }
}
public void draw() 
{
  background(70);
  for(int i = 0; i < galaxy.length; i++){
    galaxy[i].show();
  }
  ship.move();
  ship.show();
}

public void keyPressed(){
  if(key == 'a'){
    ship.turn(-15);
  }
  if(key == 'd'){
    ship.turn(15);
  }
  if(key == 'w'){
    ship.accelerate(0.1);
  }
  if(key == 'q'){
    ship.setX((int)(Math.random()*599));
    ship.setY((int)(Math.random()*599));
    ship.setDirectionX(0);
    ship.setDirectionY(0);
    ship.setPointDirection((int)(Math.random()*361));
  }
} 
