//your variable declarations here
Star[] sue; //declare
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
Spaceship bob = new Spaceship();
public void setup() 
{
  //your code here
  size(400, 400);
  background(0);
  sue = new Star[300]; //initialize
  for(int i = 0; i<sue.length; i++){
    sue[i] = new Star();
  }
  
  for(int i = 0; i<10; i++){
    rocks.add(new Asteroid());
  }
  
}
public void draw() 
{
  background(0);
  //your code here
  for(int i = 0; i<sue.length; i++){
    sue[i].show();
  }
  for(int i = 0; i<rocks.size(); i++){
    rocks.get(i).move();
    rocks.get(i).show();
    float d = dist((float)bob.getX(), (float)bob.getY(), rocks.get(i).getX(), rocks.get(i).getY());
    if (d<10)
      rocks.remove(i);
  }


  if(keyPressed){ //moves once
    if (key == 'a' || key == 'A'){ //continually spins bc lastkeypressed = remembered
        bob.turn(-10);
      } 
    if(key == 'h'){
        bob.hyperspace();
        bob.move();
        bob.accelerate(0.3);
      }
     if(key == 'w' || key == 'W'){
       bob.accelerate(0.4);
     }
     if(key == 'd' || key == 'D'){
       bob.turn(10);
     }
    if(key == 's' || key == 'S'){
      bob.setPD(bob.getPD()+180);
    } 
  } 
  bob.move();
  bob.show(); 
}

