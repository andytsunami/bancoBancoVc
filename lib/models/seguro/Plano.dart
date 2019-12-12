import 'package:banco_banco_vc/models/seguro/Cobertura.dart';

class Plano{
  String nome;
  String valor;
  List<Cobertura> coberturas;

  Plano(this.nome, this.valor, this.coberturas);
}