<html>

	<form runat="server">
	
		<p align="center">
			Digite um valor maior ou igual a 10:
			<asp:TextBox id="entrada" BackColor="yellow" runat="server"/> <br/> <br/>
			<asp:Button id="Bot01" BackColor="green" Text="- Validar -" OnClick="MetodoValidar" CausesValidation="False" runat="server"/> <br/> <br/>
			<asp:Label id="saida" runat="server"/>
			<asp:CompareValidator id="Comparar" ControlToValidate="entrada" ValueToCompare="10" Type="Integer" Operator="GreaterThanEqual" runat="server"/> <br/> 
		</p>
	
	</form>
	
	<script language="C#" runat="server">
	
		public void MetodoValidar(Object sender, EventArgs ea) 
		{
			Comparar.Validate( );
			
			if (Comparar.IsValid == true) saida.Text = "Numero CORRETO ! ";

			else saida.Text="Numero INCORRETO ! ";
		}
		
	</script>
	
</html>