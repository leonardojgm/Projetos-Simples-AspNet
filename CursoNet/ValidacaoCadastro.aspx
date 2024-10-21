<html>

	<head>

		<title>Projeto .Net FrameWork SDK 1.0</title>

	</head>

	<body bgcolor="#6699CC" text="#FFFFFF">
	
		<br><br>
		
		<font face="arial" size="3pt">
		
			<h3 align="center">Pro .Net FrameWork SDK 1.0a</h3>
			
		</font>
		
		<br>
		
		<form runat="server">
		
			<table width="75%" border="0" align="center">
			
				<tr>
				
					<td width="15%" align="right">
					
						<asp:RequiredFieldValidator id="rfnome" ControlToValidate = "txtNome" ForeColor="yellow" ErrorMessage = "Entre com dados no campo NOME." runat="server">
						
							*
							
						</asp:RequiredFieldValidator>
						
					Nome:</td>
					
					<td width="4%">&nbsp;</td>
					
					<td width="80%">
					
						<asp:TextBox id="txtNome" BackColor="yellow" Width="250" runat="server"/>
						
					</td>
					
				</tr>
				
				<tr>
				
					<td width="15%" align="right">
				
						<asp:RegularExpressionValidator id="rev1" ControlToValidate="txtEmail" ForeColor="yellow" ErrorMessage="Entre com um e-mail válido"
						ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" runat="server">
						
							*
						
						</asp:RegularExpressionValidator>
						
						<asp:RequiredFieldValidator id="rfemail" ControlToValidate = "txtEmail" ForeColor="yellow" ErrorMessage = "Entre com dados no campo E-MAIL." runat="server">
				
							*
				
						</asp:RequiredFieldValidator>
				
					e-mail:</td>
						
					<td width="4%">&nbsp;</td>
				
					<td width="80%">
				
						<asp:TextBox id="txtEmail" BackColor="yellow" Width="200" runat="server"/>
				
					</td>
				
				</tr>
				
				<tr>
				
					<td width="11%" align="right">curso:</td>
				
					<td width="4%">&nbsp;</td>
				
					<td width="85%">
				
						<asp:DropDownList id="txtCurso" BackColor="yellow" Width="200" AutoPostBack="true" runat="server">
							
							<asp:ListItem Value="101"> 101 - Ciência da Computação </asp:ListItem>
							<asp:ListItem Value="102"> 102 - Matemática Computacional </asp:ListItem>
							<asp:ListItem Value="201"> 201 - Fisioterapia </asp:ListItem>
							<asp:ListItem Value="202"> 202 - Odontologia </asp:ListItem>
							<asp:ListItem Value="301"> 301 - Administração </asp:ListItem>
				
						</asp:DropDownList>
				
					</td>
				
				</tr>
				
				<tr>
				
					<td width="15%" align="right">
				
						<asp:RequiredFieldValidator id="rfsenha" ControlToValidate = "txtSenha" ForeColor="yellow" ErrorMessage = "Entre com dados no campo SENHA." runat="server">
				
							*
				
						</asp:RequiredFieldValidator>
				
					senha:</td>
				
					<td width="4%">&nbsp;</td>
				
					<td width="80%">
				
						<asp:TextBox id="txtSenha" BackColor="yellow" Width="200" TextMode="password" runat="server"/>
				
					</td>
				
				</tr>
				
			</table>
			
			<br><br>
			
			<table width="75%" border="0" align="center">
			
				<tr>
				
					<td width="33%">
					
						<div align="center">
						
							<asp:Button id="bot1" Text="Cadastrar" width="120" runat="server"/>
							
						</div>
						
					</td>
					
					<td width="33%">
					
						<div align="center">
						
							<asp:Button id="bot2" Text="Limpar Formulário" CausesValidation="False"	runat="server"/>
							
						</div>
						
					</td>
					
					<td width="34%">
					
						<div align="center">
						
							<asp:Button id="bot3" Text="Voltar" width="120" CausesValidation="False" runat="server"/>
							
						</div>
						
					</td>
					
				</tr>
				
			</table>
			
			<br><br>
			
			<p>
				<asp:ValidationSummary id="vs1" HeaderText = "Algo errado! Veja abaixo:" DisplayMode="BulletList" ForeColor="white" runat="server"/>
			</p>
			
		</form>
		
	</body>
	
</html>			