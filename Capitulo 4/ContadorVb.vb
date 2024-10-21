Imports System

Module ContadorVb
	Sub Main()
		Dim Contador As Integer = 1
	
		While Contador < 10
			if Contador mod 2 = 0 then
				Console.WriteLine(Contador)
			End if
			
			Contador = Contador + 1
		End While
	End Sub
End Module