<html>
	<form runat="server">
		<asp:Label id="saida" Text = "Selecione itens abaixo" runat="server"/>
		<p align="center">
		<asp:DropDownList id="Dd1" AutoPostback="true" OnSelectedIndexChanged="MetodoDd1" runat="server">
			<asp:ListItem Value="VB"> Visual Basic.Net </asp:ListItem>
			<asp:ListItem Value="CS"> C # </asp:ListItem>
			<asp:ListItem Value="JS"> J# </asp:ListItem>
			<asp:ListItem Value="delphi"> Delphi </asp:ListItem>
			<asp:ListItem Value="Java"> Java </asp:ListItem>
		</asp:DropDownList>
		</p>
		<p align="center">
		<asp:TextBox id="saida_dd1" BackColor="yellow" runat="server"/>
		</p>
	</form>
	<script language="C#" runat="server">
		public void MetodoDd1(Object sender, EventArgs ea)
		{
			saida_dd1.Text = Dd1.SelectedItem.Text;
		}
	</script>
</html>