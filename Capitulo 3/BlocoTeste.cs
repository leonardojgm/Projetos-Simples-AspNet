using System;

public class BlocoTeste
{
	public void TestaVariavel( )
	{
		string VarEscreve; // será acessível apenas neste procedimento
		
		VarEscreve = "Teste de variável";
		
		Console.WriteLine(VarEscreve);
	}
	
	public static void Main( ) 
	{
		BlocoTeste objBloco = new BlocoTeste( );
		objBloco.TestaVariavel( );
	}
}