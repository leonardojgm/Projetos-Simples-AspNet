Imports System

Module CapArray

	Sub Main ( )

		Dim I As Integer
		Dim J As Integer
		Dim VarCores( ) As String = {"azul", "amarelo", "preto", "verde"}
		
		Console.WriteLine(" ------ Inicialização do array VarCores ------ ")
		
		For I=0 to 3
		
			Console.WriteLine("VarCores("& I &"): "& VarCores(I))
		
			Next I
		
		Dim VarValores(5) As Integer
		
		Console.WriteLine()
		Console.WriteLine(" ----- Inicialização do array VarValores ----- ")
		
		For I=0 to 5
			
			VarValores(I) = I
			
			Console.WriteLine("VarValores("& I &"): "& VarValores(I))
		
			Next I
		
		Dim VarMatriz(3, 2) As Integer
		
		Console.WriteLine()
		Console.WriteLine(" ------ Inicialização do array VarMatriz ------ ")
		
		For I=0 to 3
		
			For J=0 to 2
		
				VarMatriz(I, J) = I + J
		
				Console.WriteLine("VarMatriz("& I &", "& J &"): "& VarMatriz(I, J))
		
				Next J
		
			Next I
		
		Dim VarMatrizB( , ) As Integer = {{1, 2, 3}, {4, 5, 6}}
		
		Console.WriteLine()
		Console.WriteLine(" ------ Inicialização do array VarMatrizB ----- ")
		
		For I=0 to 1
		
			For J=0 to 2
		
				Console.WriteLine("VarMatrizB("& I &", "& J &"): "& VarMatrizB(I, J))
		
				Next J
			
			Next I
		
		Redim VarValores(8)
		
		Console.WriteLine()
		Console.WriteLine(" ---- Redimensionamento do array VarValores ---- ")
		
		J=0
		
		For Each I in VarValores
		
			Console.WriteLine("VarValores("& J &"): "& VarValores(I))
		
			J = J+1
		
			Next
		
		ReDim Preserve VarMatriz(3, 5) 'Apenas o ultimo valor pode ser redimensionado
		
		Console.WriteLine()
		Console.WriteLine(" ---- Redimensionamento do array VarMatriz ---- ")
		
		For I=0 to 3
		
			For J=0 to 5
		
				Console.WriteLine("VarMatriz("& I &", "& J &"): "& VarMatriz(I, J))
		
				Next J
		
			Next I
		
		Erase VarCores
		
		Redim Preserve VarCores(3)
		
		Console.WriteLIne()
		Console.WriteLine(" ---- Redimensionamento do array VarCores ---- ")
		
		For I=0 to 3
		
			Console.WriteLine("VarCores("& I &"): "& VarCores(I))
		
			Next I

	End Sub

End Module