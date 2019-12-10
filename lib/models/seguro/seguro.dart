class Seguro {
  final double valor;
  final int codigo;
  final String descricao = "Um bom seguro para voce";

  Seguro(
    this.valor,
    this.codigo,
  );

  @override
  String toString() {
    return 'Transferencia{_valor: $valor, _conta: $codigo}';
  }
}