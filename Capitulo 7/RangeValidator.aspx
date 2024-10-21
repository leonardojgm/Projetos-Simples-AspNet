<%@ Page Language="VB" %>

<html>

	<head>

		<script runat="server">

			Sub ButtonClick(sender As Object, e As EventArgs)

				If Page.IsValid Then

					Label1.Text="Pagina é valida !!."

				Else

					Label1.Text="Pagina não é valida !!"

				End If

			End Sub

		</script>

	</head>

	<body>

		<form runat="server">

			<h3>RangeValidator Examplo</h3> Entre com valores entre 1 e 10: <br>

			<asp:TextBox id="TextBox1" runat="server"/> <br>
			<asp:RangeValidator id="Range1" ControlToValidate="TextBox1" MinimumValue="1" MaximumValue="10" Type="Integer" EnableClientScript="false" 
			Text="The value must be from 1 to 10!" runat="server"/> <br><br>
			<asp:Label id="Label1" runat="server"/> <br><br>
			<asp:Button id="Button1" Text="Submit" OnClick="ButtonClick" runat="server"/>

		</form>

	</body>

</html>