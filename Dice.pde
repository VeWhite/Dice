Die dice;

void setup()
{
	noLoop();
	size(400, 400);
}
void draw()
{
	background(0,0,0);
	for( int j = 25; j <= 400; j += 100)
	{
		for ( int i = 25; i <= 400; i += 100)
		{
			dice = new Die(i, j);
			dice.show();
		}
	}
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
		//
				fill(255, 255, 255);
		rect(j + myX, i + myY, 50, 50);
			//}
		//}
		

		if(myDots == 1)
		{
			fill(0);
			ellipse(j + myX + 25, i + myY + 25, 10, 10);
		}
		if(myDots == 2)
		{
			fill(0);
			ellipse(j + myX + 10, i + myY + 10, 10, 10);
			ellipse(j + myX + 40, i + myY + 40, 10, 10);
		} 
		if(myDots == 3)
		{
			fill(0);
			ellipse(j + myX + 10, i + myY + 10, 10, 10);
			ellipse(j + myX + 25, i + myY + 25, 10, 10);
			ellipse(j + myX + 40, i + myY + 40, 10, 10);
		}
		if(myDots == 4)
		{
			fill(0);
			ellipse(j + myX + 10, i + myY + 10, 10, 10);
			ellipse(j + myX + 10, i + myY + 40, 10, 10);
			ellipse(j + myX + 40, i + myY + 10, 10, 10);
			ellipse(j + myX + 40, i + myY + 40, 10, 10);
		}
		if(myDots == 5)
		{
			fill(0);
			ellipse(j + myX + 10, i + myY + 10, 10, 10);
			ellipse(j + myX + 10, i + myY + 40, 10, 10);
			ellipse(j + myX + 40, i + myY + 10, 10, 10);
			ellipse(j + myX + 40, i + myY + 40, 10, 10);
			ellipse(j + myX + 25, i + myY + 25, 10, 10);
		}
		if(myDots == 6)
		{
			fill(0);
			ellipse(j + myX + 10, i + myY + 10, 10, 10);
			ellipse(j + myX + 10, i + myY + 40, 10, 10);
			ellipse(j + myX + 40, i + myY + 10, 10, 10);
			ellipse(j + myX + 40, i + myY + 40, 10, 10);
			ellipse(j + myX + 10, i + myY + 25, 10, 10);
			ellipse(j + myX + 40, i + myY + 25, 10, 10);

		}
//}
///}
	}
}
