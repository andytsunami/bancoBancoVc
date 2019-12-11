import 'package:banco_banco_vc/components/card-seguro.dart';
import 'package:banco_banco_vc/components/global.dart';
import 'package:banco_banco_vc/models/seguro/seguro.dart';
import 'package:banco_banco_vc/screens/seguro/oferta-seguro.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = "Seguros e assistências";

class ListaSeguro extends StatefulWidget {



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
        title: Padding(
          padding: const EdgeInsets.fromLTRB(70,0,0,0), //Não consegui fazer o center
          child: Text(_tituloAppBar),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15,0, 15, 15),
                //const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 32, 0, 8),
                      child: Text(
                        "Escolha a melhor proteção para você",
                        style: Theme.of(context)
                            .textTheme
                            .display1
                            .apply(color: Colors.black, fontWeightDelta: 8),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        "Em poucos passos proteja seus bens, fique seguro e tranquilo",
                        style: Theme.of(context)
                            .textTheme
                            .display1
                            .apply(color: Colors.black, fontSizeDelta: -16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 32, 0, 8),
                      child: Text(
                        "Proteções disponiveis para você:",
                        style: Theme.of(context)
                            .textTheme
                            .display1
                            .apply(color: Colors.black, fontSizeDelta: -16, fontWeightDelta: 16),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    Container(
                      height: MediaQuery.of(context).size.height / 4, //tamanho da tela
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: seguroList.length,
                        itemBuilder: (ctx, i) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => OfertaSeguro(),
                              ),
                            ),
                            child: Container(
                              width: 150,
                              margin:
                              const EdgeInsets.symmetric(horizontal: 11.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Stack(
                                  children: <Widget>[
                                    CardSeguro(seguroList[i])
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }

  void _atualiza(seguroRecebido) {
    if (seguroRecebido != null) {
      Future.delayed(
        Duration(seconds: 1),
        () {
          setState(
            () {
              seguroList.add(seguroRecebido);
            },
          );
        },
      );
    }
  }
}
