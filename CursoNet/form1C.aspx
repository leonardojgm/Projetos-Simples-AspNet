<html>

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
	
	<script language="C#" runat="server">	
	
		public void Page_Load(object sender, EventArgs ea) 
		{		
			if (!IsPostBack) { nome.Text = "foi atualizada"; }			
		}
		
		public void Incluir(object sender, EventArgs ea) 
		{		
			if (nome != null) 
			{			
				RecebeNome.Items.Add(nome.Text); //Adiciona um item na lista				
				nome.Text = null; //limpa o campo nome do TextBox				
			}
		}
		
		public void Excluir(object sender, EventArgs ea) 
		{		
			if (RecebeNome.SelectedIndex >= 0) 
			{			
				RecebeNome.Items.RemoveAt(RecebeNome.SelectedIndex); //Exclui o item selecionado no ListBox			
			}
		}
		
		public void Limpar(object sender, EventArgs ea) 
		{		
			RecebeNome.Items.Clear(); //limpa o ListBox
		}
		
		public void Ordenar(object sender, EventArgs ea) 
		{		
			ArrayList objVetor = new ArrayList();			
			int contador;			
			contador = RecebeNome.Items.Count;
			
			if (contador > 0) 
			{		
				for(int i=0; i<contador; i++) 
				{		
					objVetor.Add(RecebeNome.Items[i].Value);
				}
				
				int a = 0;				
				bool condicao = true;
				
				while ( contador > a ) 
				{
					for(int j = a, i = a + 1; i < contador; i++)
					{
						if ( objVetor[j].ToString().CompareTo(objVetor[i].ToString()) > 0 )
						{
							string temp;
							temp = objVetor[i].ToString();
							objVetor[i] = objVetor[j];
							objVetor[j] = temp;
							condicao = false;
						}
					}
					
					if (condicao != false) { a++; }
					
					condicao = true;
				}
				
				if (saiObj != null)
				{
					saiObj.Items.Clear();
				}
				
				for (int i = 0; i < contador; i++)
				{
					saiObj.Items.Add(objVetor[i].ToString());
				}
			}
		}	
		
	</script>
	
</html>