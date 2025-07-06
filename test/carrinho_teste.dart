import 'package:aula5_exercicios/model/produto_alimenticio.dart';
import 'package:aula5_exercicios/model/produto_eletronico.dart';
import 'package:aula5_exercicios/service/carrinho_de_compras.dart';

import 'package:aula5_exercicios/model/pagamento_exception.dart';
import 'package:aula5_exercicios/model/pedido.dart';
import 'package:aula5_exercicios/service/processador_pedidos.dart';
import 'package:test/test.dart';

void main() {

group('Testes do CarrinhoDeCompras', () {
test('deve calcular o total como 0 para um carrinho vazio', () {
final carrinho = CarrinhodeCompras();
expect(carrinho.calcularTotal(), 0.0);
});



test('deve calcular o total corretamente para um carrinho com múltiplos itens', () {
final carrinho = CarrinhodeCompras();
carrinho.adicionarProduto(ProdutoAlimenticio(codigo: 'A1', nome:
'Pão', preco: 5.50, dataDeValidade: '08/05/2027'));
carrinho.adicionarProduto(ProdutoEletronico(codigo: 'E1', nome:'Pilha', preco: 10.0, garantiaMeses: 3));
expect(carrinho.calcularTotal(), 15.50);
});
});
}
