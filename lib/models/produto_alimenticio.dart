import 'package:aula5_exercicios/model/produto.dart';

class ProdutoAlimenticio extends Produto{

 late String dataDeValidade;
 

  ProdutoAlimenticio({required super.codigo, required super.nome, required super.preco, required this.dataDeValidade});



  @override
  String get tipo => "Alimenticio";
  
  @override
  exibirDetalhes(){

      print("---Detalhes do Produto---\nCódigo: $codigo");
      print('Nome: $nome\nPreço: $preco\n');
      print("Data de Validade:$dataDeValidade");

  }


  @override
  Map<String, dynamic> toJson() {
    return {
      'tipo': tipo,
      'nome': nome,
      'preco': preco,
      'validade': dataDeValidade,
    };
  }
}