using System;

public class Logicos
{
	public static void Main( )
	{
		bool VarA = true;
		bool VarB = !true;
		
		Console.Write(" VarA ? 'verdade' : 'falso' : ");
		Console.WriteLine(VarA ? "verdade" : "falso");
		Console.Write(" VarB ? 'verdade' : 'falso' : ");
		Console.WriteLine(VarB ? "verdade" : "falso");
	}
}