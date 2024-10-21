<html>
	<form runat="server">
		<br> <br>
		<asp:TextBox id="entrada" AutoPostBack="true" BackColor="yellow" MaxLength="12" TextMode="Password" OnTextChanged="MetodoText" runat="server"/>
		<p> Pressione ENTER apos digitar </p>
		<p>
		<asp:Label id="saida" Font-Name="verdana" runat="server"/> </p>
	</form>
	<script Language="C#" runat="server">
		public void MetodoText(Object sender, EventArgs ea)
		{
			String Temp = entrada.Text;
			saida.Text = Temp;
		}
	</script>
</html>