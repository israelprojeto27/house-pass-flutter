import 'package:flutter/material.dart';

import 'item_valor_imovel_widget.dart';

class CardValoresImovelDetailImovelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Valores Imóvel', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ItemValorImovelWidget('IPTU', 'R\$ 800,00'),
              ItemValorImovelWidget('Condominio', 'R\$ 1.200,00'),
              ItemValorImovelWidget('Outras Taxas', 'R\$ 500,00'),
            ],
          ),
        ),

      ),
    );
  }
}
