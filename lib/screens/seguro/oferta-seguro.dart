import 'package:flutapp_pseg_base_venda_digital/models/seguro/seguro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/global.dart';
import '../../models/seguro/Cobertura.dart';
import '../../models/seguro/Plano.dart';

const _tituloAppBar = "Nome do seguro aqui";
const _rotuloCampoValor = "Valor";
const _dicaCampoValor = "0.00";
const _dicaCampoNumeroConta = "0000";
const _textoBotaoConfirmar = "Confirmar";

class OfertaSeguro extends StatefulWidget {
  final Seguro _seguro;

  OfertaSeguro(this._seguro);

  @override
  State<StatefulWidget> createState() {
    return OfertaSeguroState(this._seguro);
  }
}

class OfertaSeguroState extends State {
  final Seguro _seguro;
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  OfertaSeguroState(this._seguro);

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
                    this._seguro.nome,
                    style: Theme.of(context)
                        .textTheme
                        .display1
                        .apply(color: Colors.black, fontWeightDelta: 8),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                  child: Text(
                    this._seguro.descricao,
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
                    style: Theme.of(context).textTheme.display1.apply(
                        color: Colors.black,
                        fontSizeDelta: -16,
                        fontWeightDelta: 16),
                  ),
                ),
//                SizedBox(
//                  height: 15,
//                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 32, 0, 8),
                  child: _planosList(planoList),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 32, 0, 8),
                  child: _coberturasList(planoList[0].coberturas),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  _planosList(List<Plano> planos) {
      return Container(
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: planos.length,
          itemBuilder: (context, index) {
            return _itemPlanoView(planos[index]);
          },
        ),
      );
  }

  _itemPlanoView(Plano plano) {
    return Card(
      color: Colors.grey[100],
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                plano.nome,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Center(
                child: Text(
                  "Valor mensal",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Center(
                child: Text(
                  plano.valor,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _coberturasList(List<Cobertura> coberturas) {
    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: coberturas.length,
            itemBuilder: (context, index) {
              return _itemCoberturaView(coberturas[index]);
            }));
  }

  _itemCoberturaView(Cobertura cobertura) {
    return Card(
      color: Colors.grey[100],
      child: Container(
        padding: EdgeInsets.all(10),
        child: ListTile(
          title: Text(cobertura.label),
          subtitle: Text(cobertura.descricao),
          trailing: Icon(
            Icons.help_outline,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
