<%@ Page Language="C#" %>

<html>

	<script runat="server">

		void ValidateBtn_Click(Object sender, EventArgs e) 
		{
			if (Page.IsValid) lblOutput.Text = "Validação CORRETA !";
			
			else lblOutput.Text = "Validação INCORRETA !";
		}

	</script>

	<body>

		<h3>RegularExpressionValidator - EXEMPLO</h3>

		<p>
		<form runat="server">
		<asp:Label id="lblOutput" Text="Entre com 5 dígitos" Font-Name="Verdana" Font-Size="10pt" runat="server"/>
		<br/> <br/>

		<b>INFORMAÇÃO PESSOAL</b>

		Código:
		<asp:TextBox id="TextBox1" runat="server"/>
		<asp:RegularExpressionValidator id="RegularExpressionValidator1" ControlToValidate="TextBox1" ValidationExpression="\d{5}" Display="Static" EnableClientScript="false"
		ErrorMessage="O Código deve conter 5 Dígitos" runat="server"/>

		<p>
			<asp:Button text="- Validar Código -" OnClick="ValidateBtn_Click" runat="server"/>
		</p>

		</form>

	</body>

</html>