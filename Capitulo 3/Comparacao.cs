using System;

public class Comparacao
{
	public static void Main( )
	{
		// Exemplos com números.
		Console.Write("10 == 10: ");
		Console.WriteLine(10 == 10);
		Console.Write("10 != 10: ");
		Console.WriteLine(10 != 10);
		
		// Exemplos com objetos.
		object objeto1 = 10;
		object objeto2 = 10;
		Console.Write("objeto1 == objeto2: ");
		Console.WriteLine(objeto1 == objeto2);
		
		// Exemplos com strings.
		string VarA = "Unifenas";
		string VarB = "Unifenas";
		string VarC = String.Copy(VarA);
		
		Console.Write("VarA == VarB: ");
		Console.WriteLine(VarA == VarB);
		Console.Write("(object)VarA == (object)VarB: ");
		Console.WriteLine((object)VarA == (object)VarB);
		Console.Write("(object)VarA == (object)VarC: ");
		Console.WriteLine((object)VarA == (object)VarC);
		Console.Write(" VarA + VarB : "); // Concatenando strings
		Console.WriteLine(VarA + VarB);
	}
}