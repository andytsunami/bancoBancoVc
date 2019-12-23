import 'package:flutapp_pseg_base_venda_digital/models/seguro/Cobertura.dart';
import 'package:flutapp_pseg_base_venda_digital/models/seguro/Plano.dart';
import 'package:flutapp_pseg_base_venda_digital/models/seguro/seguro.dart';
import 'package:flutter/material.dart';

class MyColors {
  static Color darkBlue = Color(0xff2446a6),
      lightBlue = Color(0xff3a5fc8),
      lighterBlue = Color(0xff4169d8),
      red = Color(0xfffa9d85),
      lighterGray = Color(0xFFE8E8E8);
}

final List<Seguro> seguroList = [
    Seguro(100,200,"Proteção Pessoaaal","Cobertura contra desemprego involuntarioo, incapacidade fisica temporarioa, invalidez permanente, total por acidente ou morte."),
    Seguro(100,200,"Seguro PET","Deixe seu pet seguro"),
    Seguro(100,200,"Proteção Financeira","Proteja seu cartão"),
    Seguro(100,200,"Proteção Familiar","Proteja sua familia"),

];

final List<Plano> planoList = [
  Plano("Clássico", "R\$ 5,90", [
    Cobertura("Limite de cobertura", "R\$ 7.000,00", ""),
    Cobertura("Premiações mensais", "Até R\$ 10.000,00", ""),
    Cobertura("Assistência 24 horas", "Chaveiro, encanador, eletricista e vidraceiro", ""),
    Cobertura("Vigência", "1 ano", "")
  ]),
  Plano("Especial", "R\$ 6,90", [
    Cobertura("Limite de cobertura", "R\$ 15.000,00", ""),
    Cobertura("Premiações mensais", "Até R\$ 30.000,00", ""),
    Cobertura("Assistência 24 horas", "Chaveiro, encanador, eletricista e vidraceiro", ""),
    Cobertura("Vigência", "1 ano", "")
  ]),
  Plano("Premium", "R\$ 8,90", [
    Cobertura("Limite de cobertura", "R\$ 20.000,00", ""),
    Cobertura("Premiações mensais", "Até R\$ 40.000,00", ""),
    Cobertura("Assistência 24 horas", "Chaveiro, encanador, eletricista e vidraceiro", ""),
    Cobertura("Vigência", "1 ano", "")
  ]),
];