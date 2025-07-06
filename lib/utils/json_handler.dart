import 'dart:convert';
import 'dart:io';

Future<void> salvarCarrinhoEmJson(String caminho, List<Map<String, dynamic>> produtos) async {
  final arquivo = File(caminho);
  final json = jsonEncode(produtos);
  await arquivo.writeAsString(json);
  print('Carrinho salvo com sucesso em $caminho');
}

Future<List<Map<String, dynamic>>> carregarCarrinhoDeJson(String caminho) async {
  final arquivo = File(caminho);
  if (!await arquivo.exists()) {
    print('Arquivo não encontrado: $caminho');
    return [];
  }
  final conteudo = await arquivo.readAsString();
  final lista = jsonDecode(conteudo) as List<dynamic>;
  return lista.map((item) => Map<String, dynamic>.from(item)).toList();
}
