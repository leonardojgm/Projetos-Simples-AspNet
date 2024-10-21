Imports System
Imports Microsoft.VisualBasic.Strings

Module FormatVB2
	Sub Main()
		Dim VarValor As Double = 15252.8573
		Dim VarMostra As String	

		Console.WriteLine("---- Format Padrão ----")
		VarMostra = Format(VarValor, "g")
		Console.WriteLine(" Format(VarValor, 'g'): "& VarMostra)
		VarMostra = Format(VarValor, "c")
		Console.WriteLine(" Format(VarValor, 'c'): "& VarMostra)
		VarMostra = Format(VarValor, "e")
		Console.WriteLine(" Format(VarValor, 'e'): "& VarMostra)
		VarMostra = Format(VarValor, "n")
		Console.WriteLine(" Format(VarValor, 'n'): "& VarMostra)
		Console.WriteLine( )

		Console.WriteLine("---- Format Padrão com casas Decimais ----")
		VarMostra = Format(VarValor, "g5")
		Console.WriteLine(" Format(VarValor, 'g5'): "& VarMostra)
		VarMostra = Format(VarValor, "c2")
		Console.WriteLine(" Format(VarValor, 'c2'): "& VarMostra)
		VarMostra = Format(VarValor, "e1")
		Console.WriteLine(" Format(VarValor, 'e1'): "& VarMostra)
		VarMostra = Format(VarValor, "n3")
		Console.WriteLine(" Format(VarValor, 'n3'): "& VarMostra)
		Console.WriteLine( )

		Console.WriteLine("---- Format Personalizado ----")
		VarMostra = Format(VarValor, "000###.0000###,###")
		Console.WriteLine(" Format(VarValor,‘00###.0000###,###'): "& VarMostra)
		VarMostra = Format(VarValor, "(0##) 00 - 000")
		Console.WriteLine(" Format(VarValor, '(0##) 00 - 000'): "& VarMostra)
		VarValor = 0.25
		VarMostra = Format(VarValor, "0#.00%")
		Console.WriteLine(" Format(VarValor, '0#.00%'): "& VarMostra)
	End Sub
End Module