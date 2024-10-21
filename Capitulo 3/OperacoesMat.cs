using System;

public class OperacoesMat
{
	public static void Main( )
	{
		int Valor1; // forma normal
		int Valor2 = new int ( ); // forma alternativa
		
		Valor1=Valor2=10;
		
		Console.WriteLine(" Valor1 = Valor2 = 10: ");
		Console.WriteLine(" Valor1: "+Valor1);
		Console.WriteLine(" ++Valor1: "+ ++Valor1);
		Console.WriteLine(" Valor2-- : "+Valor2--);
		Console.WriteLine(" Valor1 + 15 : "+(Valor1 + 15));
		Console.WriteLine(" Valor2 - 5 : "+(Valor2 - 5));
	}
}