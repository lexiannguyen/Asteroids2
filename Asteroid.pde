class Asteroid extends Floater {
//constructor
private double rotSpeed;
public Asteroid(){
  super();
  corners = 6; //similar to lightning??while __, changex = random #,controls 
                //add changex and changey to original corner?
      xCorners = new int[corners];
      yCorners = new int[CORNERS];
      
      xCorners[0] = -15 + (int)(Math.random()*10) - 5; //obtuse ANGLES
       xCorners[1] = -15 + (int)(Math.random()*10) - 2;
      xCorners[2] = 0 + (int)(Math.random()*10) - 3;
      xCorners[3] = 15 + (int)(Math.random()*10) - 2;
      xCorners[4] = 15 + (int)(Math.random()*10) - 3;
      xCorners[5] = 0 + (int)(Math.random()*10) - 2;
      
      yCorners[0] = 8 + (int)(Math.random()*15) - 5;
      yCorners[1] = -8 + (int)(Math.random()*15) - 5;
      yCorners[2] = -13 + (int)(Math.random()*15) - 5;
      yCorners[3] = -8 + (int)(Math.random()*15) - 5;
      yCorners[4] = 8 + (int)(Math.random()*15) - 5;
      yCorners[5] = 13 + (int)(Math.random()*15) - 5;

      
      myColor = 255;
      myCenterX = (int)(Math.random()*400);
      myCenterY = (int)(Math.random()*400);
      myXspeed = (int)(Math.random()*3)-1;
      myYspeed = (int)(Math.random()*3)-1;
      myPointDirection = (int)(Math.random()*90);; //??
      rotSpeed = (int)(Math.random()*20)-10;
}
  public float getX(){
     return (float)myCenterX; 
    }
    public float getY(){
     return (float)myCenterY; 
    }
  public void show ()  //Draws the floater at the current position  
  {             
    fill(myColor);
    stroke(myColor);    
    

    super.show();
  }   
public void move(){
  //change the x and y coordinates by myXspeed and myYspeed       
        
    turn(rotSpeed);
    super.move();
  
}
}
