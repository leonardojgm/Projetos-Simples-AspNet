using System;

public struct Point
{
	public int x, y;
	public Point(int x, int y)
	{
		this.x = x;
		this.y = y;
	}
}

class MainClass
{
	public static void Main()
	{
		// Declare an object:
		Point myPoint;
		
		// Initialize:
		myPoint.x = 10;
		myPoint.y = 20;
		
		// Display results:
		
		Console.WriteLine("My Point:");
		Console.WriteLine("x = {0}, y = {1}", myPoint.x, myPoint.y);
	}
}