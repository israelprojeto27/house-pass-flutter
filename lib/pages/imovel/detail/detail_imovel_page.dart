import 'package:flutter/material.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

import 'item_quant_item_imovel_widget.dart';
import 'item_valor_imovel_widget.dart';

class DetailImovelPage extends StatefulWidget {
  @override
  _DetailImovelPageState createState() => _DetailImovelPageState();
}

class _DetailImovelPageState extends State<DetailImovelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detalhes Imóvel'),
        ),
        body: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ListView(
            children: [
              DetailImovelWidget(),
              SizedBox(
                height: 24,
              ),
              Card(
                elevation: 8,
                margin: EdgeInsets.all(8),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Descrição"),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        'Imóvel padrão luxo, bem localizado, otimo espaço, proximo à praia e bem seguro'),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Card(
                elevation: 8,
                margin: EdgeInsets.all(8),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Informações Básicas"),
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
              ),
              SizedBox(
                height: 8,
              ),
              Card(
                elevation: 8,
                margin: EdgeInsets.all(8),
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Valores Imóvel'),
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
              )
            ],
          ),
        ));
  }
}
