import 'package:aula5_exercicios/model/produto.dart';


  class   CarrinhodeCompras{

  late List<Produto> lista=[];

  void adicionarProduto(Produto prod){

      lista.add(prod);
}

  double calcularTotal(){

      double soma=0;

      for(int i=0; i<lista.length; i++){

        soma+=lista[i].preco;


}

      return soma;
}


  void exibirCarrinho(){


    print("---Itens no Carrinho---");


    for(int i=0; i<lista.length; i++){

        print("- ${lista[i].nome}: ${lista[i].preco}");

    }

      print("-----------------------");
      print("Total no carrinho: ${calcularTotal()}");


  }



   List<Map<String, dynamic>> toJsonList() {
    return lista.map((produto) => produto.toJson()).toList();
  }
}
