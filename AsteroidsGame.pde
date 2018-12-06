Spaceship ship = new Spaceship();
Star galaxy[] = new Star[200];
ArrayList<Asteroid> rock = new ArrayList<Asteroid>();
ArrayList<Bullet> pew = new ArrayList<Bullet>();
public void setup() 
{
  size(600,600);
  for(int i = 0; i < galaxy.length; i++){
    galaxy[i] = new Star();
  }
  for(int i = 0; i < 15; i++){
    rock.add(new Asteroid());
  }
}

public void draw() 
{
  background(0);
  for(int i = 0; i < galaxy.length; i++){
    galaxy[i].show();
  }
  for(int i = 0; i < rock.size(); i++){
    rock.get(i).show();
    rock.get(i).move();
    float d = dist(ship.getX(), ship.getY(), rock.get(i).getX(), rock.get(i).getY());
    if(d < 15){
      rock.remove(i);
    }
  } 
  for(int i = 0; i < pew.size(); i++){
    pew.get(i).show();
    pew.get(i).move();
    for(int ri = rock.size()-1; ri >= 0; ri--){
      float hit = dist(rock.get(ri).getX(), rock.get(ri).getY(), pew.get(i).getX(), pew.get(i).getY());
      if(hit < 20){
        rock.remove(ri);
        pew.remove(i);
        break;
      }
    }
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
  if(key == ' '){
    Bullet x = new Bullet();
    pew.add(x);
  }
} 
