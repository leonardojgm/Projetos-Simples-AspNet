<html>
	<form runat="server">
		<asp:Label id="saida" runat="server"/>
		<p align="center">
		<asp:Button id="bot01" Text=" - Contador - " OnClick="bot01_Clique" runat="server"/>
		</p>
	</form>
	<script language="VB" runat="server">
		shared Contador As Integer = 1
		Sub bot01_Clique(Obj As Object, ea As EventArgs)
			saida.Text = "Você Atualizou a página "& Contador &" Vezes."
			Contador = Contador +1
		End Sub
	</script>
</html>