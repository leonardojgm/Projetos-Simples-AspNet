Imports System

Module Atribuir

	Sub Main ( )
	
		Dim VarMatriz ( , ) As Integer = {{1, 2, 3}, {4, 5, 6}}
		Dim I As Integer
		Dim J As Integer
		
		For I=0 to 2
		
			For J=0 to 2
			
				Console.WriteLine("VarMatriz("& I &", "& J &"): "& VarMatriz(I, J))
				
				Next J
				
			Next I
			
	End Sub
	
End Module