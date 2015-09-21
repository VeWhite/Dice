Die dice;

void setup()
{
	noLoop();
	size(400, 400);
}
void draw()
{
	background(0,0,0);
	dice = new Die(25, 25);
	dice.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY, j, i, myDots;
	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();

	}
	void roll()
	{
		myDots = (int)(Math.random()*6) + 1;
	}
	void show()
	{
		for( j = 0; j <= 400; j += 100)
		{
			for ( i = 0; i <= 400; i += 100)
			{
				fill(255, 255, 255);
		rect(j + myX, i + myY, 50, 50);
			}
		}
		

		if(myDots == 1)
		{
			fill(0);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(myDots == 2)
		{
			fill(0);
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		} 
		if(myDots == 3)
		{
			fill(0);
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}
		if(myDots == 4)
		{
			fill(0);
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
		}
		if(myDots == 5)
		{
			fill(0);
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
		}
		if(myDots == 6)
		{
			fill(0);
			ellipse(myX + 10, myY + 10, 10, 10);
			ellipse(myX + 10, myY + 40, 10, 10);
			ellipse(myX + 40, myY + 10, 10, 10);
			ellipse(myX + 40, myY + 40, 10, 10);
			ellipse(myX + 10, myY + 25, 10, 10);
			ellipse(myX + 40, myY + 25, 10, 10);

		}

	}
}
