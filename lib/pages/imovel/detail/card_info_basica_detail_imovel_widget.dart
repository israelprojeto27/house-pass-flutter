import 'package:flutter/material.dart';

import 'item_quant_item_imovel_widget.dart';

class CardInfoBasicaDetailImovelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Informações Básicas", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ItemQuantItemWidget('Banheiro', '2'),
                  ItemQuantItemWidget('Garagem', '1')
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ItemQuantItemWidget('Suite', '1'),
                  ItemQuantItemWidget('Quarto', '3')
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
