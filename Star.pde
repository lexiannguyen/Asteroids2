class Star //note that this class does NOT extend Floater
//member variables = private, functions = public
{
  //your code here //optional opacity var
  private int myX, myY, myColor;
  public Star(){
   myX = (int)(Math.random()*400);
   myY = (int)(Math.random()*400);
   myColor = color((int)(Math.random()*256), //red
     (int)(Math.random()*256), //green
     (int)(Math.random()*256)); //blue
   
  }
  public void show(){
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 5, 5);
}
  public int getmyX(){
    return myX;
  }
  public int getmyY(){
    return myY;
  }
  public void setmyX(int x){
    myX = x;
  }
  public void setmyY(int y){
    myY = y;
  }
}
