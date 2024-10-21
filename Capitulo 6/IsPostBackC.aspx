<html>
	<form runat="server">
		<asp:Label id="saida" runat="server"/>
		<p align="center">
		<asp:Button id="bot01" Text=" - Verificar - " OnClick="bot01_Clique" runat="server"/> </p>
		<asp:Label id="verifica" runat="server"/>
	</form>
	<script language="C#" runat="server">
		static int Contador=1;
		public void Page_Load(Object sender, EventArgs ea)
		{
			verifica.Text = "IsPostBack = "+ this.IsPostBack.ToString( );
		}
		public void bot01_Clique(Object sender, EventArgs ea)
		{
			saida.Text = "Você Atualizou a página "+Contador+" Vezes.";
			Contador++;
		}
	</script>
</html>