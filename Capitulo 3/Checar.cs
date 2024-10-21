using System;

public class Checar
{
	public static void Main()
	{
		int X = 2147483647;
		int Y = 2;
		int Produto = 0;
		
		unchecked
		{
			Produto = X * Y;
			
			Console.WriteLine("Resultado da Conversão: "+Produto); // retorna -2
		}
		
		checked
		{
			try
			{
				Produto = X * Y;
				
				Console.WriteLine("Resultado da Conversão: "+Produto);
				// Causa erro na compilação
			}
			catch(OverflowException e)
			{
				Console.WriteLine("Mensagem de Erro: "+e.ToString());
			}
		}
	}
}