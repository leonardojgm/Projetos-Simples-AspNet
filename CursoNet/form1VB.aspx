<%@ Page Language="VB" Debug="true" %>

<html>

	<head>
	
		<script runat="server">	
		
			Sub Page_Load(sender As Object, e As EventArgs)		
			
				If Not IsPostBack Then 
				
					nome.Text = "foi atualizada"
					
				End If
				
			End Sub
			
			Sub Incluir(sender As Object, e As EventArgs)
			
				If nome.Text <> "" Then	
				
					RecebeNome.Items.Add(nome.Text) 'Adiciona um item na lista				
					nome.Text = "" 'limpa o campo nome do TextBox
					
				End If
				
			End Sub
			
			Sub Excluir(sender As Object, e As EventArgs)
			
				If RecebeNome.SelectedIndex >= 0 Then	
				
					RecebeNome.Items.RemoveAt(RecebeNome.SelectedIndex) 'Exclui o item selecionado no ListBox
					
				End If				
				
			End Sub
		
			Sub Limpar(sender As Object, e As EventArgs)	
			
				RecebeNome.Items.Clear() 'limpa o ListBox
				
			End Sub
		
			Sub Ordenar(sender As Object, e As EventArgs)	
			
				Dim objVetor As New List(Of String)()
				Dim contador As Integer = RecebeNome.Items.Count - 1
			
				If contador > 0 Then 
				
					For i As Integer = 0 to contador	
					
						objVetor.Add(RecebeNome.Items(i).Text)
						
					Next i
					
					Dim a As Integer = 0					
					Dim condicao As Boolean = True
					
					While contador > a 
					
						For i As Integer = 1 to contador
							
							If objVetor(a).ToString().CompareTo(objVetor(i).ToString()) > 0 Then
							
								Dim temp As String
								temp = objVetor(i).ToString()
								objVetor(i) = objVetor(a)
								objVetor(a) = temp
								condicao = False
								
							End If
							
						Next i
						
						If condicao <> False Then
						
							a = a + 1
							
						End If
						
						condicao = True
						
					End While
					
					If saiObj.Text <> "" Then
					
						saiObj.Items.Clear()
						
					End If
					
					For i As Integer  = 0 to contador
					
						saiObj.Items.Add(objVetor(i).ToString())
						
					Next i
					
				End If
				
			End Sub
			
		</script>
		
	</head>
	
	<body>	
	
		<form id="form1" method="post" runat="server" >	
		
			<p> <font face="arial" size="4"> Digite seu Nome: </font>
			<asp:TextBox id="nome" runat="server" >		
			</asp:TextBox> </p> <p>
			
			<asp:Button id="botao01" runat="server" Text="Incluir nome na lista" width="175" Height="25" OnClick="Incluir"> </asp:Button> </p> <p>
			
			<asp:Button id="botao02" runat="server" Text="Excluir nome da lista" width="175" Height="25" OnClick="Excluir"> </asp:Button> </p> <p>
			
			<asp:Button id="botao03" runat="server" Text="Limpar nome(s) da Lista" width="175" Height="25" OnClick="Limpar"> </asp:Button></p> <p>
			
			<asp:Button id="botao04" runat="server" Text="Ordenar a Lista" width="175" Height="25" OnClick="Ordenar"> </asp:Button> </p> <p>
			
			<asp:ListBox id="RecebeNome" runat="server" width="175" Height="150">
			</asp:ListBox>
			
			<asp:Label id="saida" runat="server">Veja ao lado a lista ordenada: </asp:Label>
			
			<asp:ListBox id="saiObj" runat="server" width="175" Height="150">		
			</asp:ListBox> </p>		
			
		</form>
		
	</body>
	
</html>