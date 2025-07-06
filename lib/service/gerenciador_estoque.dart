

class GerenciadorEstoque {
  Map<String, int> estoque = {};

  // Adiciona produto ao estoque
  void adicionarProduto(String codigo, int quantidade) {
    estoque[codigo] = (estoque[codigo] ?? 0) + quantidade;
  }

  // Verifica se há itens disponíveis no estoque
  bool temNoEstoque(String codigo) {
    return (estoque[codigo] ?? 0) > 0;
  }
}
