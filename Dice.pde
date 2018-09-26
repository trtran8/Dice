void setup()
{
	size(200,200);
	noLoop();
}
void draw()
{
	Die bigree = new Die();
	bigree.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX , myY;
	
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myX = y;
	}
	void roll()
	{
		//your code here
		return((int)Math.random()*7);
	}
	void show()
	{
		//your code here
		int d = roll();
		if(d = 1){
			rect(myX,myY,);
		}else if(d = 2){

		}
		else if(d = 3){
			
		}
		else if(d = 4){
			
		}
		else if(d = 5){
			
		}
		else if(d = 6){
			
		}
	}
}
