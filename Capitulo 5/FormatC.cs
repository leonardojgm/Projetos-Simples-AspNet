using System;
using System.Globalization;

public class FormatC
{
	public static void Main()
	{
		double VarValor = 15680.1248D;
		string VarMostra;
		
		CultureInfo us = new CultureInfo("en-US"); //Formatacao USA
		
		VarMostra = VarValor.ToString("n",us);
		Console.WriteLine("ToString('n',us) = "+VarMostra);
		
		VarMostra = VarValor.ToString("n6",us);
		Console.WriteLine("ToString('n6',us) = "+VarMostra);
		
		VarMostra = VarValor.ToString("c",us);
		Console.WriteLine("ToString('c',us) = "+VarMostra);
		
		Console.WriteLine();
		
		CultureInfo br = new CultureInfo("pt-BR"); //Formatacao Brasil
		
		VarMostra = VarValor.ToString("n",br);
		Console.WriteLine("ToString('n',br) = "+VarMostra);
		
		VarMostra = VarValor.ToString("e",br);
		Console.WriteLine("ToString('e',br) = "+VarMostra);
		
		VarMostra = VarValor.ToString("c",br);
		Console.WriteLine("ToString('c',br) = "+VarMostra);
		
		Console.WriteLine();
		
		CultureInfo fr = new CultureInfo("fr-FR"); //Formatacao França
		
		VarMostra = VarValor.ToString("n",fr);
		Console.WriteLine("ToString('n',fr) = "+VarMostra);
		
		VarMostra = VarValor.ToString("f3",fr);
		Console.WriteLine("ToString('f3',fr) = "+VarMostra);
		
		VarMostra = VarValor.ToString("c4",fr);
		Console.WriteLine("ToString('c4',fr) = "+VarMostra);
		
		Console.WriteLine();
		
		CultureInfo es = new CultureInfo("es-ES"); //Formatacao Espanha
		
		VarMostra = VarValor.ToString("n3",es);
		Console.WriteLine("ToString('n3',es) = "+VarMostra);
		
		VarMostra = VarValor.ToString("g4",es);
		Console.WriteLine("ToString('g4',es) = "+VarMostra);
		
		VarMostra = VarValor.ToString("c2",es);
		Console.WriteLine("ToString('c2',es) = "+VarMostra);
	}
}