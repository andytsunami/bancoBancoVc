import 'package:banco_banco_vc/models/seguro/seguro.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Seguros para você";

class ListaSeguro extends StatefulWidget {
  final List<Seguro> _seguros = List();

  @override
  State<StatefulWidget> createState() {
    return ListaSeguroState();
  }
}

class ListaSeguroState extends State<ListaSeguro> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._seguros.length,
        itemBuilder: (context, indice) {
          Navigator.pop(context, Seguro(100,200));
          final seguro = widget._seguros[indice];
          return ItemSeguro(seguro);
        },
      ),
    );
  }

  void _atualiza(seguroRecebido) {
    if (seguroRecebido != null) {
      Future.delayed(
        Duration(seconds: 1),
        () {
          setState(
            () {
              widget._seguros.add(seguroRecebido);
            },
          );
        },
      );
    }
  }
}

class ItemSeguro extends StatelessWidget {
  final Seguro _seguro;

  ItemSeguro(this._seguro);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
             ListTile(
              leading: Icon(Icons.album),
              title: Text(this._seguro.descricao),
               subtitle: Text("Algum outro texto??"),
            )
          ],
        ),
      ),
    );
  }
}
