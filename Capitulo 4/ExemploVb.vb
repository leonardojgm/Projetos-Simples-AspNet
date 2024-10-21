Imports System

Module ExemploVb
	Sub Main()
		Dim VarNumero As Integer = 0
		
		Console.WriteLine(" ---------------- Instrução IF ------------------- ")
		Console.Write("Forneça um número: ")
		
		Dim Leia As String
		
		Leia = Console.ReadLine()		
		VarNumero = Integer.Parse(Leia)
		
		If (VarNumero < 10) Then 
			Console.WriteLine(" O Numero possui 1 digito ")
		ElseIf (VarNumero < 100) Then 
			Console.WriteLine(" O Numero possui 2 dígitos ")
		Else : 
			Console.WriteLine(" o Numero possui 3 ou mais números ")
		End If
		
		Console.WriteLine()
		Console.WriteLine(" ---------------- Instrução SELECT CASE ------------ ")
		Console.Write("forneça a sigla de um Estado da região Sudeste: ")
		
		Leia = Console.ReadLine()
		Leia = Leia.ToUpper()
		
		Select Case Leia
		
			Case "MG" : Console.WriteLine("A capital se chama: Belo Horizonte")
			
			Case "SP" : Console.WriteLine("A capital se chama: São Paulo")
			
			Case "RJ" : Console.WriteLine("A capital se chama: Rio de Janeiro")
			
			Case "ES" : Console.WriteLine("A capital se chama: Vitória")
			
			Case Else : Console.WriteLine("Você não digitou uma sigla correta")
		
		End Select
		
		Console.WriteLine()
		Console.WriteLine(" ---------------- Instrução WHILE ------------------- ")
		
		Dim Condicao As Integer = 1
		
		Console.Write("Forneça um valor para repetição de 3 - 7 : ")
		
		Leia = Console.ReadLine()
		VarNumero = Integer.Parse(Leia) 'Transforma string em inteiro
		
		Dim Final As Integer = 1
		
		If VarNumero > 2 And VarNumero < 8 Then 
			Final = VarNumero
		Else : 
			Final = 2
		End If
		
		if Final = 2 then 
			Console.WriteLine("Valor Incorreto")
		Else : 
			Console.WriteLine("Valor Correto")
		End if
		
		While Condicao <= Final
			Console.WriteLine("Valor da variavel Condicao: " & Condicao)
			Condicao = Condicao + 1
		End While
	End Sub
End Module