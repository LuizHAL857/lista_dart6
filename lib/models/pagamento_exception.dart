class PagamentoException implements Exception {
  final String mensagem;
  PagamentoException(this.mensagem);

  @override
  String toString() => 'PagamentoException: $mensagem';
}