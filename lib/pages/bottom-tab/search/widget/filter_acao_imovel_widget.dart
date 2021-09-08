import 'package:flutter/material.dart';

class FilterTipoAcaoWidget extends StatefulWidget {
  @override
  _FilterTipoAcaoWidgetState createState() => _FilterTipoAcaoWidgetState();
}

class _FilterTipoAcaoWidgetState extends State<FilterTipoAcaoWidget> {

  int id = 1;
  String radioButtonItem = 'Venda';
  double fontSize = 15.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child:  Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Tipo Ação',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.width > 360 ? 18 : 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // INICIO - Venda
                  Radio(value: 1, groupValue: id,   onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Venda';
                      id = 1;
                    });
                  },),
                  Text(
                    'Venda',
                    style: new TextStyle(fontSize: fontSize),
                  ),

                  // Inicio - Aluguel
                  Radio(value: 2, groupValue: id,   onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Aluguel';
                      id = 2;
                    });
                  },),
                  Text(
                    'Aluguel',
                    style: new TextStyle(fontSize: fontSize),
                  ),
                  // Fim - Aluguel

                  // Inicio - Temporada
                  Radio(value: 3, groupValue: id,   onChanged: (val) {
                    setState(() {
                      radioButtonItem = 'Temporada';
                      id = 3;
                    });
                  },),
                  Text(
                    'Temporada',
                    style: new TextStyle(fontSize: fontSize),
                  ),
                  // Fim - Temporada
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              height: 25,
            )
          ],
        )
    );
  }
}
