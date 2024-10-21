<html>
	<form runat="server">
		<asp:Label id="saida" runat="server"/>
		<p align="center">
		<asp:Button id="bot01" Text=" - Verificar - " OnClick="bot01_Clique" runat="server"/>
		</p>
		<asp:Label id="verifica" runat="server"/>
	</form>
	<script language="VB" runat="server">
		shared Contador As Integer = 1
		Sub Page_Load(Obj as Object, ea As EventArgs)
			verifica.Text = "IsPostBack = "& Me.IsPostBack.ToString( )
		End Sub
		Sub bot01_Clique(Obj As Object, ea As EventArgs)
			saida.Text = "Você Atualizou a página "& Contador &" Vezes."
			Contador = Contador +1
		End Sub
	</script>
</html>