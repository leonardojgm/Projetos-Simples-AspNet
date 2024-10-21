<html>

	<form runat="server">
	
		Name:
		<asp:TextBox id="Text1" Text="Enter a value" BackColor="yellow" runat="server"/>
		<asp:RequiredFieldValidator id="RequiredFieldValidator1" ControlToValidate="Text1" Text="Campo Requerido" runat="server"/> <p>
		<asp:Button id="Button1" runat="server" Text="Validate"/>
	
	</form>
	
</html>