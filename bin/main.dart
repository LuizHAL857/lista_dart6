import 'package:aula5_exercicios/model/produto_alimenticio.dart';
import 'package:aula5_exercicios/model/produto_eletronico.dart';
import 'package:aula5_exercicios/service/carrinho_de_compras.dart';
import 'package:aula5_exercicios/utils/json_handler.dart';
import 'package:aula5_exercicios/model/pagamento_exception.dart';
import 'package:aula5_exercicios/model/pedido.dart';
import 'package:aula5_exercicios/service/processador_pedidos.dart';


Future<void> main() async {
 
  final pedidoComErro = Pedido(produtos: []);

  final processador = ProcessadorPedidos();

  try {
    print('Enviando pedido para processamento...');

    await processador.processar(
      pedido: pedidoComErro,
      onComplete: (resultado) {
        print('Resultado: $resultado');
      },
    );
  } on PagamentoException catch (e) {
    print(' Ocorreu um erro de pagamento: ${e.mensagem}');
  } catch (e) {
    print(' Ocorreu um erro inesperado: $e');
  }
}
