<html>
	<form runat="server">
		<p align="center">
		<asp:DropDownList id="Dd1" BackColor="yellow" AutoPostBack="true" OnSelectedIndexChanged="MetodoEscreve" runat="server">
			<asp:ListItem Value="CSharp"> Curso Microsoft C# </asp:ListItem>
			<asp:ListItem Value="VB"> Curso Microsoft Visual Basic.Net </asp:ListItem>
			<asp:ListItem Value="JSharp"> Curso Microsoft J# </asp:ListItem>
			<asp:ListItem Value="Asp"> Curso Microsoft Asp.Net </asp:ListItem>
			<asp:ListItem Value="Plataforma"> Curso Microsoft Plataforma .Net </asp:ListItem>
			<asp:ListItem Value="Delphi"> Curso Borland Delphi </asp:ListItem>
		</asp:DropDownList>
		<br><br>
		<asp:TextBox id="saida" Width="400" Rows="6" HorizontalAlign="center" TextMode="MultiLine" BackColor="#EEEEEE" runat="server"/>
		<br><br>
		<asp:Button id="bot01" Text="Limpar Campo" OnClick="MetodoLimpar" runat="server"/>
		</p>
	</form>
	<script language="C#" runat="server">
		static string temp = null;
		public void MetodoEscreve(Object sender, EventArgs ea)
		{
			for( int i = 0; i < Dd1.Items.Count; i++) {
				if (Dd1.Items[i].Selected) {
					temp = temp + Dd1.Items[i].Text;
					temp = temp + "\n";
				}
			}
			saida.Text = temp;
		}
		public void MetodoLimpar(Object sender, EventArgs ea)
		{
			temp=null;
			saida.Text=null;
		}
	</script>
</html>