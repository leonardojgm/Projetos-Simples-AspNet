Imports System
Imports System.Globalization

Module FormDataVb
	Sub Main( )
		Dim VarMostra As String
		Dim br As New CultureInfo("pt-BR")
		Dim fr As New CultureInfo("fr-FR")
		Dim us As New CultureInfo("en-US")
		Dim VarData As new DateTime(2001,02,19,13,25,20)
		
		Console.WriteLine("---- Formatos de Datas USA ---")
		VarMostra = VarData.ToString("dd",us)
		Console.WriteLine("ToString('dd') = "& VarMostra)
		VarMostra = VarData.ToString("dddd",us)
		Console.WriteLine("ToString('dddd') = "& VarMostra)
		VarMostra = VarData.ToString("MMM",us)
		Console.WriteLine("ToString('MMM') = "& VarMostra)
		VarMostra = VarData.ToString("yyyy",us)
		Console.WriteLine("ToString('yyyy') = "& VarMostra)
		Console.WriteLine()
		
		Console.WriteLine("---- Formatos de Datas Brasil ----")
		VarMostra = VarData.ToString("M",br)
		Console.WriteLine("ToString('M') = "& VarMostra)
		VarMostra = VarData.ToString("dddd",br)
		Console.WriteLine("ToString('dddd') = "& VarMostra)
		VarMostra = VarData.ToString("MM",br)
		Console.WriteLine("ToString('MM') = "& VarMostra)
		VarMostra = VarData.ToString("yy",br)
		Console.WriteLine("ToString('yy') = "& VarMostra)
		Console.WriteLine()
		
		Console.WriteLine("---- Formatos de Datas Francês ----")
		VarMostra = VarData.ToString("M",fr)
		Console.WriteLine("ToString('M') = "& VarMostra)
		VarMostra = VarData.ToString("dddd",fr)
		Console.WriteLine("ToString('dddd') = "& VarMostra)
		VarMostra = VarData.ToString("MMMM",fr)
		Console.WriteLine("ToString('MMMM') = "& VarMostra)
		VarMostra = VarData.ToString("y",fr)
		Console.WriteLine("ToString('y') = "& VarMostra)
		Console.WriteLine()
	End Sub
End Module