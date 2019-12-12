class Seguro {
  final double valor;
  final int codigo;
  final String nome;
  final String descricao;

  Seguro(
    this.valor,
    this.codigo,
    this.nome,
    this.descricao,
  );

  @override
  String toString() {
    return 'Transferencia{_valor: $valor, _conta: $codigo, _nome: $nome}';
  }
}
