abstract class Produto{

 late String codigo;
 late String nome;
 late double preco;


 static int qtdProdutos=0;

  Produto({required String codigo, required String nome, required double preco}){


    qtdProdutos++;
  }


  String get tipo;

  

  exibirDetalhes(){

     print("---Detalhes Originais---\nCódigo: $codigo");
     print('Nome: $nome\nPreço: $preco\n');


  }

  aplicarDesconto({required double percentual}){

    print("---Detalhes com Desconto---\nPreço com $percentual% de desconto aplicado\nCódigo: $codigo ");
    print('Nome: $nome\nPreço: ${preco-((preco*percentual)/100)}\n');


  }




  Map<String, dynamic> toJson();
}
