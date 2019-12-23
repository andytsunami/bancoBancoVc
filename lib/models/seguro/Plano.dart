import 'package:flutapp_pseg_base_venda_digital/models/seguro/Cobertura.dart';

class Plano{
  String nome;
  String valor;
  List<Cobertura> coberturas;

  Plano(this.nome, this.valor, this.coberturas);
}