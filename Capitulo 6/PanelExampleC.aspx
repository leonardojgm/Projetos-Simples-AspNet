<html>
	
	<h3>Panel Example</h3>
		
	<form runat="server">
		
		<asp:Panel id="Panel1" runat="server" BackColor="gainsboro" Height="200px" Width="300px"> Panel1: Controles Viviseis... <p> </asp:Panel>
		<p> Numero de Labels Visíveis:
		<asp:DropDownList id=DropDown1 runat="server">
			<asp:ListItem Value="0">0</asp:ListItem>
			<asp:ListItem Value="1">1</asp:ListItem>
			<asp:ListItem Value="2">2</asp:ListItem>
			<asp:ListItem Value="3">3</asp:ListItem>
			<asp:ListItem Value="4">4</asp:ListItem> 
		</asp:DropDownList> <br>
			
		Numero de TextBoxes Visíveis:
			
		<asp:DropDownList id=DropDown2 runat="server">
			<asp:ListItem Value="0">0</asp:ListItem>
			<asp:ListItem Value="1">1</asp:ListItem>
			<asp:ListItem Value="2">2</asp:ListItem>
			<asp:ListItem Value="3">3</asp:ListItem>
			<asp:ListItem Value="4">4</asp:ListItem> 
		</asp:DropDownList> <p>
			
		<asp:CheckBox id="Check1" Text="Propriedade VISIBLE do Panel" runat="server"/>
			
		<p>
		<asp:Button Text="Refresh Panel" runat="server"/>
			
	</form>
		
	<script language="C#" runat="server">		
		
		public void Page_Load(object sender, EventArgs ea)			
		{
			if (Check1.Checked) Panel1.Visible = false;
			
			else Panel1.Visible = true;
		
			int numlabels = Int32.Parse(DropDown1.SelectedItem.Value);
		
			for(int i = 0; i < numlabels; i++)
			{
				Label l = new Label();
				l.Text = "Label" + i.ToString();
				l.ID = "Label" + i.ToString();
				Panel1.Controls.Add(l);
				Panel1.Controls.Add(new LiteralControl("<br>"));			
			}
		
			int numtexts = Int32.Parse(DropDown2.SelectedItem.Value);
	
			for (int i = 0; i < numtexts; i++)
			{	
				TextBox t = new TextBox();
				t.Text = "TextBox" + i.ToString();
				t.ID = "TextBox" + i.ToString();
				Panel1.Controls.Add(t);
				Panel1.Controls.Add(new LiteralControl("<br>"));				
			}		
		}	
	
	</script>	
	
</html>