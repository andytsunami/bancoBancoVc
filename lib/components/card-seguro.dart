import 'package:banco_banco_vc/models/seguro/seguro.dart';
import 'package:flutter/material.dart';

import 'global.dart';

class CardSeguro extends StatelessWidget{
  final Seguro _seguro;

  CardSeguro(this._seguro);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.90,
        height: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          color: MyColors.lighterGray,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding:
              const EdgeInsets.fromLTRB(15, 64, 0, 0),
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Icon(Icons.monetization_on, color: Colors.pink,),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.fromLTRB(15, 8, 0, 0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: _seguro.nome,
                      style: Theme.of(context)
                          .textTheme
                          .body2
                          .apply(color: Colors.black54),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}