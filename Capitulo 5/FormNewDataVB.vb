Imports System
Imports Microsoft.VisualBasic
Imports Microsoft.VisualBasic.Strings

Module FormNewDataVB
	Sub Main( )
		Dim VarDataNow As DateTime = DateTime.Now
		Dim VarMostra As String
		
		Console.WriteLine(" ---- Função FormatDateTime ---- ")
		VarMostra = FormatDateTime(VarDataNow, DateFormat.GeneralDate)
		Console.WriteLine("DateFormat.GeneralDate = "& VarMostra)
		VarMostra = FormatDateTime(VarDataNow, DateFormat.ShortDate)
		Console.WriteLine("DateFormat.ShortDate = "& VarMostra)
		VarMostra = FormatDateTime(VarDataNow, DateFormat.LongDate)
		Console.WriteLine("DateFormat.LongDate = "& VarMostra)
		VarMostra = FormatDateTime(VarDataNow, DateFormat.ShortTime)
		Console.WriteLine("DateFormat.ShortTime = "& VarMostra)
		VarMostra = FormatDateTime(VarDataNow, DateFormat.LongTime)
		Console.WriteLine("DateFormat.LongTime = "& VarMostra)
		Console.WriteLine( )
		
		Console.WriteLine(" ---- Função Format ---- ")
		VarMostra = Format(VarDataNow, "dd")
		Console.WriteLine("Format(VarDataNow, 'dd') : "& VarMostra)
		VarMostra = Format(VarDataNow, "ddd")
		Console.WriteLine("Format(VarDataNow, 'ddd') : "& VarMostra)
		VarMostra = Format(VarDataNow, "dddd")
		Console.WriteLine("Format(VarDataNow, 'dddd') : "& VarMostra)
		VarMostra = Format(VarDataNow, "M")
		Console.WriteLine("Format(VarDataNow, 'M') : "& VarMostra)
		VarMostra = Format(VarDataNow, "MMMM")
		Console.WriteLine("Format(VarDataNow, 'MMMM') : "& VarMostra)
		VarMostra = Format(VarDataNow, "y")
		Console.WriteLine("Format(VarDataNow, 'y') : "& VarMostra)
		VarMostra = Format(VarDataNow, "yyyy")
		Console.WriteLine("Format(VarDataNow, 'yyyy') : "& VarMostra)
		VarMostra = Format(VarDataNow, "hh")
		Console.WriteLine("Format(VarDataNow, 'hh') : "& VarMostra)
		VarMostra = Format(VarDataNow, "HH")
		Console.WriteLine("Format(VarDataNow, 'HH') : "& VarMostra)
		VarMostra = Format(VarDataNow, "mm")
		Console.WriteLine("Format(VarDataNow, 'mm') : "& VarMostra)
		VarMostra = Format(VarDataNow, "ss")
		Console.WriteLine("Format(VarDataNow, 'ss') : "& VarMostra)
		Console.WriteLine( )
		
		Console.WriteLine(" ---- Formatos Personalizados ---- ")
		VarMostra = Format(VarDataNow, "dd/MM/yyyy")
		Console.WriteLine("Format(VarDataNow, 'dd/MM/yyyy') : "& VarMostra)
		VarMostra = Format(VarDataNow, "dddd dd/MMMM/yyyy")
		Console.WriteLine("Format(VarDataNow, 'dddd dd/MMMM/yyyy') : "& VarMostra)
		VarMostra = Format(VarDataNow, "ddd/MMM/yy HH:mm:ss")
		Console.WriteLine("Format(VarDataNow, 'ddd/MMM/yy HH:mm:ss') : "& VarMostra)
	End Sub
End Module