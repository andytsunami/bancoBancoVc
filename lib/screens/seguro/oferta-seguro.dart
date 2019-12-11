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
            child: Column(
              children: <Widget>[
                Editor(
                  rotulo: _dicaCampoNumeroConta,
                  dica: _dicaCampoNumeroConta,
                  controlador: _controladorCampoNumeroConta,
                ),
                Editor(
                  rotulo: _rotuloCampoValor,
                  dica: _dicaCampoValor,
                  controlador: _controladorCampoValor,
                  icone: Icons.monetization_on,
                ),
                RaisedButton(
                  child: Text(_textoBotaoConfirmar),
                  onPressed: () => _criaSeguro(ctx),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _criaSeguro(BuildContext ctx) {
    final int conta = int.tryParse(_controladorCampoNumeroConta.text);
    final double valor = double.tryParse(_controladorCampoValor.text);


    if (valor != null && conta != null) {
      final seguroCriado = Seguro(valor, conta,"");
      //debugPrint("$seguroCriado");
      Navigator.pop(ctx, seguroCriado);
      Scaffold.of(ctx).showSnackBar(
        SnackBar(
          content: Text("$seguroCriado"),
        ),
      );
    }
  }
}
