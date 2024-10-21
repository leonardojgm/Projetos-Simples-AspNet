using System;
using System.Globalization;

public class FormDataC
{
	public static void Main(string[] args)
	{
		string VarMostra;
		
		CultureInfo us = new CultureInfo("en-US");
		CultureInfo br = new CultureInfo("pt-BR");
		CultureInfo fr = new CultureInfo("fr-FR");
		
		DateTime VarData = new DateTime(2001,02,19,13,25,20);
		
		Console.WriteLine("---- Formatos de Datas USA ---");
		VarMostra = VarData.ToString("dd",us);
		Console.WriteLine("ToString('dd') = "+ VarMostra);
		VarMostra = VarData.ToString("dddd",us);
		Console.WriteLine("ToString('dddd') = "+ VarMostra);
		VarMostra = VarData.ToString("MMM",us);
		Console.WriteLine("ToString('MMM') = "+ VarMostra);
		VarMostra = VarData.ToString("yyyy",us);
		Console.WriteLine("ToString('yyyy') = "+ VarMostra);
		Console.WriteLine();
		
		Console.WriteLine("---- Formatos de Datas Brasil ----");
		VarMostra = VarData.ToString("M",br);
		Console.WriteLine("ToString('M') = "+ VarMostra);
		VarMostra = VarData.ToString("dddd",br);
		Console.WriteLine("ToString('dddd') = "+ VarMostra);
		VarMostra = VarData.ToString("MM",br);
		Console.WriteLine("ToString('MM') = "+ VarMostra);
		VarMostra = VarData.ToString("yy",br);
		Console.WriteLine("ToString('yy') = "+ VarMostra);
		Console.WriteLine();
		
		Console.WriteLine("---- Formatos de Datas Francês ----");
		VarMostra = VarData.ToString("M",fr);
		Console.WriteLine("ToString('M') = "+ VarMostra);
		VarMostra = VarData.ToString("dddd",fr);
		Console.WriteLine("ToString('dddd') = "+ VarMostra);
		VarMostra = VarData.ToString("MMMM",fr);
		Console.WriteLine("ToString('MMMM') = "+ VarMostra);
		VarMostra = VarData.ToString("y",fr);
		Console.WriteLine("ToString('y') = "+ VarMostra);
		Console.WriteLine();
	}
}