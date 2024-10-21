<html>

<!— Parte RENDERIZAVEL -->

<form runat ="server">

<asp:Label id ="saida"
    Font-Name="Arial"
    Font-Italic="True"
    runat="server"/>

</form>

<!— Parte PROGRAMATICA -->

<script language ="C#" runat="server">

    private String VarMensagem = "Meu Primeiro Exemplo!";

    public void Page_Load(Object sender, EventArgs ea)
    {
        saida.Text = VarMensagem;
    }

</script>

</html>