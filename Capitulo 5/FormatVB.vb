Imports System
Imports System.Globalization
Imports Microsoft.VisualBasic.Strings

Module FormatVB
	Sub Main()
		Dim VarValor As Double = 15252.8573
		Dim VarMostra As String
		Dim br As New CultureInfo("pt-BR")
		
		Console.WriteLine("---- Método ToString() ----")
		VarMostra = VarValor.ToString("n",br)
		Console.WriteLine("ToString('n',br) = "& VarMostra)
		VarMostra = VarValor.ToString("e",br)
		Console.WriteLine("ToString('e',br) = "& VarMostra)
		VarMostra = VarValor.ToString("c2",br)
		Console.WriteLine("ToString('c2',br) = "& VarMostra)
		Console.WriteLine()
		
		Console.WriteLine("---- FormatNumber ----")
		VarMostra = FormatNumber(VarValor, 2, -1, -1, -2)
		Console.WriteLine("VarMostra = " & VarMostra)
		VarMostra = FormatNumber(VarValor, 7, -1, -1, -2)
		Console.WriteLine("VarMostra = " & VarMostra)
		VarMostra = FormatNumber(VarValor - 5000, 2, -1, -1, -2)
		Console.WriteLine("VarMostra = " & VarMostra)
		Console.WriteLine()
		
		Console.WriteLine("---- FormatCurrency ----")
		VarMostra = FormatCurrency(VarValor, 2, -1, -1, -2)
		Console.WriteLine("VarMostra = " & VarMostra)
		VarMostra = FormatCurrency(VarValor, 7, -1, -1, -2)
		Console.WriteLine("VarMostra = " & VarMostra)
		VarMostra = FormatCurrency(VarValor - 5000, 2, -1, -1, -2)
		Console.WriteLine("VarMostra = " & VarMostra)
		Console.WriteLine()
		
		VarValor = 0.25
		Console.WriteLine("---- FormatPercent ----")
		VarMostra = FormatPercent(VarValor, 2, -1, -1, -2)
		Console.WriteLine("VarMostra = " & VarMostra)
		VarMostra = FormatPercent(VarValor, 7, -1, -1, -2)
		Console.WriteLine("VarMostra = " & VarMostra)
		VarMostra = FormatPercent(VarValor + 0.10, 2, -1, -1, -2)
		Console.WriteLine("VarMostra = " & VarMostra)
	End Sub
End Module