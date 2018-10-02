void setup()
{
  noStroke();
	size(200,200);
	noLoop();
  rectMode(CENTER);
}
  int sum;
void draw()
{
  sum = 0;
    background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  for(int y = 50; y < 200; y+=50){
     for(int x = 50; x < 200;x+=50){
      Die bigree = new Die(x,y);
      bigree.roll();
      bigree.show();
      sum += bigree.num;
     }
  }
  fill(255);
  text("total: " + sum, 80, 190);
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
