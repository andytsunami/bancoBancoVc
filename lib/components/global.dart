import 'package:banco_banco_vc/models/seguro/seguro.dart';
import 'package:flutter/material.dart';

class MyColors {
  static Color darkBlue = Color(0xff2446a6),
      lightBlue = Color(0xff3a5fc8),
      lighterBlue = Color(0xff4169d8),
      red = Color(0xfffa9d85),
      lighterGray = Color(0xFFE8E8E8);
}

final List<Seguro> seguroList = [
    Seguro(100,200,"Proteção Pessoal","Cobertura contra desemprego involuntarioo, incapacidade fisica temporarioa, invalidez permanente, total por acidente ou morte."),
    Seguro(100,200,"Seguro PET","Deixe seu pet seguro"),
    Seguro(100,200,"Proteção Financeira","Proteja seu cartão"),
    Seguro(100,200,"Proteção Familiar","Proteja sua familia"),
];