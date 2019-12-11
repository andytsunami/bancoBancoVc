class Seguro {
  final double valor;
  final int codigo;
  final String nome;
  final String descricao = "Um bom seguro para voce";

  Seguro(
    this.valor,
    this.codigo,
    this.nome,
  );

  @override
  String toString() {
    return 'Transferencia{_valor: $valor, _conta: $codigo, _nome: $nome}';
  }
}
