using System;

class NewTest
{
	struct MyStruct
	{
		public int x;
		public int y;
		
		public MyStruct (int x, int y)
		{
			this.x = x;
			this.y = y;
		}
	}
	
	class MyClass
	{
		public string name;
		public int id;
		
		public MyClass ()
		{
		}
		
		public MyClass (int id, string name)
		{
			this.id = id;
			this.name = name;
		}
	}
	
	public static void Main()
	{
		// Criação de objetos usando o construtor sem valores.
		MyStruct Location1 = new MyStruct();
		MyClass Employee1 = new MyClass();
		
		// Valores de saída:
		Console.WriteLine("Valores Default:");
		Console.WriteLine(" Membros do Struct: {0}, {1}", Location1.x, Location1.y);
		Console.WriteLine(" Membros da Classe: {0}, {1}", Employee1.name, Employee1.id);
		
		// Criando objetos usando construtores parametrizados:
		MyStruct Location2 = new MyStruct(10, 20);
		MyClass Employee2 = new MyClass(1234, "John Martin Smith");
		
		// Valores de saída:
		Console.WriteLine("Valores Inicializados pelo construtor:");
		Console.WriteLine(" Struct members: {0}, {1}", Location2.x, Location2.y);
		Console.WriteLine(" Class members: {0}, {1}", Employee2.name, Employee2.id);
	}
}