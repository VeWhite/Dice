void setup()
{
	noLoop();
}
void draw()
{
	background(0,0,0);
	die = new Die();
	show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		rect(25, 25, 50, 50);
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		//your code here
	}
}
