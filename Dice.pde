void setup()
{
  noStroke();
	size(200,200);
	noLoop();
  rectMode(CENTER);

}
void draw()
{
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  Die bigree = new Die(50,50);
	bigree.roll();
  bigree.show();
  Die ree = new Die(150,150);
  ree.roll();
  ree.show();
  Die smallree = new Die(150,50);
  smallree.roll();
  smallree.show();
  Die megaree = new Die(50,150);
  megaree.roll();
  megaree.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX , myY, num;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
	}
  void roll()
  {
    //your code here
    num = (int)(Math.random()*6)+1;
  }
	void show()
	{
		//your code here
  fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    rect(myX,myY,50,50,20);
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    if (num == 1){
      ellipse(myX,myY, 10,10);
    }else if(num == 2){
      ellipse(myX-10,myY+10, 10,10);
      ellipse(myX+10,myY-10, 10,10);
    }else if(num == 3){
      ellipse(myX,myY, 10,10);
      ellipse(myX-10,myY+10, 10,10);
      ellipse(myX+10,myY-10, 10,10);
    }else if(num == 4){
      ellipse(myX-10,myY+10, 10,10);
      ellipse(myX+10,myY-10, 10,10);
      ellipse(myX-10,myY-10, 10,10);
      ellipse(myX+10,myY+10, 10,10);
    }else if(num == 5){
      ellipse(myX,myY, 10,10);
      ellipse(myX-10,myY+10, 10,10);
      ellipse(myX+10,myY-10, 10,10);
      ellipse(myX-10,myY-10, 10,10);
      ellipse(myX+10,myY+10, 10,10);
    }else{
      ellipse(myX-10,myY+15, 10,10);
      ellipse(myX+10,myY-15, 10,10);
      ellipse(myX-10,myY-15, 10,10);
      ellipse(myX+10,myY+15, 10,10);
      ellipse(myX-10,myY, 10,10);
      ellipse(myX+10,myY, 10,10);
    }
	}
}
