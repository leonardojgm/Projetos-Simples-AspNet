<%@ Page Language="VB" %>
<%@ Import Namespace="System.Data" %>

<html>

	<script runat="server">
	
		Dim Cart As DataTable
		Dim CartView As DAtaView
		
		Function CreateDataSource() As ICollection
		
			Dim dt As New DataTable()
			Dim dr As DataRow
			
			dt.Columns.Add(New DataColumn("IntegerValue", GetType(Int32)))
			dt.Columns.Add(New DataColumn("StringValue", GetType(String)))
			dt.Columns.Add(New DataColumn("CurrencyValue", GetType(Double)))
			
			Dim i As Integer
			
			For i = 0 To 99
			
				dr = dt.NewRow()
				dr(0) = i
				dr(1) = "Item " + i.ToString()
				dr(2) = 1.23 *(i + 1)
				dt.Rows.Add(dr)
				
			Next i
			
			Dim dv As New DataView(dt)
			
			Return dv
		
		End Function
		
		Sub Page_Load(sender As Object, e As EventArgs)
		
			If Not IsPostBack Then
			' É necessário criar os dados apenas uma vez.
			
				ItemsGrid.DataSource = CreateDataSource()
				ItemsGrid.DataBind()
			
			End If
			
			If CheckBox1.Checked Then
			
				ItemsGrid.PagerStyle.Mode = PagerMode.NumericPages
			
			Else
			
				ItemsGrid.PagerStyle.Mode = PagerMode.NextPrev
			
			End If
			
		End Sub
			
			Sub Grid_Change(sender As Object, e As DataGridPageChangedEventArgs)
			'faz a navegação de paginação.
			ItemsGrid.CurrentPageIndex = e.NewPageIndex
			'Atualiza do dados na tabela
			ItemsGrid.DataSource = CreateDataSource()
			ItemsGrid.DataBind()
			
		End Sub 'Grid_Change
		
	</script>
	
	<body>
	
		<form runat="server">
		
			<h3>DataGrid Paging Example</h3>
			
			<asp:DataGrid id="ItemsGrid" runat="server" BorderColor="black" BorderWidth="1" CellPadding="3" AllowPaging="true" AutoGenerateColumns="false" 
			OnPageIndexChanged="Grid_Change">
			
				<HeaderStyle BackColor="#00aaaa">
				</HeaderStyle>
			
				<PagerStyle Mode="NextPrev">
				</PagerStyle>
			
				<Columns>
				
					<asp:BoundColumn HeaderText="Numero" DataField="IntegerValue"/>
			
					<asp:BoundColumn HeaderText="Item" DataField="StringValue"/>
					
					<asp:BoundColumn HeaderText="Valor" DataField="CurrencyValue" DataFormatString="{0:c}">
					
						<ItemStyle HorizontalAlign="right">						
						</ItemStyle>
				
					</asp:BoundColumn>
				
				</Columns>
				
			</asp:DataGrid> <br>
			
			<asp:CheckBox id="CheckBox1" Text="Modo de Paginação" AutoPostBack="true" runat="server"/>
			
		</form>
	
	</body>
	
</html>