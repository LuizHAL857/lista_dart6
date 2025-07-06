import 'package:aula5_exercicios/model/produto.dart';
import 'package:aula5_exercicios/service/status_pedido.dart';



class Pedido {
  StatusPedido status;

  List<Produto> produtos;
  
   double calcularTotal(){

      double soma=0;

      for(int i=0; i<produtos.length; i++){

        soma+=produtos[i].preco;


}

      return soma;
}


  Pedido({ this.status = StatusPedido.pendente, required this.produtos});
}