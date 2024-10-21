using System;

public class ContadorC
{
	public static void Main()
	{
		var Contador = 1;
		
		while (Contador < 10)
		{
			if (Contador % 2 == 0) Console.WriteLine(Contador);
			
			Contador++;
		}
	}
}