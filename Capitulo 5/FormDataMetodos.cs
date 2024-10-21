using System;

public class FormDataMetodos
{
	public static void Main(string[] args)
	{
		string VarMostra;
		int VarDia;
		DateTime VarData;
		
		Console.WriteLine("Método DaysInMonth");
		
		for(int I=1; I<=12; I++)
		{
			VarDia = DateTime.DaysInMonth(2002,I);
			Console.WriteLine("Nº dias do mês "+I+" é igual a: "+VarDia);
		}
		
		Console.WriteLine("");
		Console.WriteLine("Método Parse");
		VarMostra = DateTime.Parse(DateTime.Now.ToString()).ToString();
		Console.WriteLine(VarMostra);
		
		Console.WriteLine("");
		Console.WriteLine("Método AddDays");
		VarData = DateTime.Today;
		Console.WriteLine(VarData.AddDays(5));
		
		Console.WriteLine("");
		Console.WriteLine("Método DayOfWeek");
		Console.WriteLine(VarData.DayOfWeek);
		int diaSemana = Convert.ToInt32(VarData.DayOfWeek);
		Console.WriteLine(diaSemana);
		
		Console.WriteLine("");
		Console.WriteLine("Método DayOfYear");
		Console.WriteLine(VarData.DayOfYear);
	}
}