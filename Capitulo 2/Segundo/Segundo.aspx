<html>

<form runat="server">

<asp:Panel id="panel1"
    BackColor="#E0E0E0"
    HorizontalAlign="Center"
    Width="200"
    runat="server">

<br/>

<asp:TextBox id="entrada"
    BackColor="yellow"
    Width="150"
    runat="server"/>

<p>
<asp:Button id="bot01"
    Text="- Enviar -"
    OnClick="MetodoEnviar"
    ToolTip="Escreva e Clique"
    runat="server"/> </p>

<p>
<asp:Label id="saida"
    Font-Name="Arial"
    runat="server"/> </p>

</asp:Panel>

</form>

<script language="VB" runat="server">

    public Sub MetodoEnviar(Obj As Object, ea As EventArgs)
    Dim VarTemp As String
    VarTemp = entrada.Text
    Session.Add("VarSessao", VarTemp)
    saida.Text = Convert.ToString(Session.Item("VarSessao"))
    End Sub

</script>

</html>