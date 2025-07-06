import 'package:aula5_exercicios/model/pedido.dart';
import 'package:aula5_exercicios/service/status_pedido.dart';
import 'package:aula5_exercicios/model/pagamento_exception.dart';


class ProcessadorPedidos {

  
  Future<void> processar({required Pedido pedido, required Function((bool, String))onComplete}) async {
    
    await Future.delayed(Duration(seconds: 3));

    double total = pedido.calcularTotal();

     if (total == 0) {
        throw PagamentoException('Pagamento não pode ser processado para um carrinho vazio.');
      }
    pedido.status = StatusPedido.processando;

    onComplete((true, "Pedido processado e pronto pra envio"));
   
  }

  
}