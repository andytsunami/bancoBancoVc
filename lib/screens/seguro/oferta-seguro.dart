import 'package:banco_banco_vc/components/editor.dart';
import 'package:banco_banco_vc/models/seguro/seguro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Nome do seguro aqui";
const _rotuloCampoValor = "Valor";
const _dicaCampoValor = "0.00";
const _dicaCampoNumeroConta = "0000";
const _textoBotaoConfirmar = "Confirmar";

class OfertaSeguro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OfertaSeguroState();
  }
}

class OfertaSeguroState extends State {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: Builder(
        builder: (BuildContext ctx) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 32, 0, 8),
                  child: Text(
                    "Proteção pessoal",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .apply(color: Colors.black, fontWeightDelta: 8),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Text(
                    "Cobertura contra desemprego involuntarioo, incapacidade fisica temporarioa, invalidez permanente, total por acidente ou morte.",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .apply(color: Colors.black, fontSizeDelta: -16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 32, 0, 8),
                  child: Text(
                    "Selecione o plano ideal para você",
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .apply(color: Colors.black, fontSizeDelta: -16, fontWeightDelta: 16),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
