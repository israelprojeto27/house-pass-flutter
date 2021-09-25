import 'package:flutter/material.dart';
import 'package:housepass/models/oferta_model.dart';
import 'package:housepass/pages/imovel/oferta/create_oferta_imovel_page.dart';
import 'package:housepass/pages/imovel/oferta/list_ofertas_page.dart';

class CardOfertasDetailImovelWidget extends StatefulWidget {
  @override
  _CardOfertasDetailImovelWidgetState createState() =>
      _CardOfertasDetailImovelWidgetState();
}

class _CardOfertasDetailImovelWidgetState
    extends State<CardOfertasDetailImovelWidget> {
  List<ItemOferta> ofertas = _loadOfertas();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      child: Card(
        elevation: 8,
        margin: EdgeInsets.all(8),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Ofertas Imóvel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          subtitle: Column(
            children: [
              Column(
                children: ofertas
                    .map((item) => ListTile(
                        leading: ClipOval(
                          child: Image.asset(item.userImageUrl),
                        ),
                        title: Text(item.userName),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item.valorOferta,
                              style: TextStyle(
                                  color: Colors.red, fontSize: 18, fontStyle: FontStyle.italic),
                            ),
                            Text(
                              item.dataOferta,
                              style: TextStyle(
                                  color: Colors.red, fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                        isThreeLine: true,))
                    .toList(),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  child: Text('Ver mais'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListaOfertasPage()),
                    );
                  },
                ),
              )
            ],
          ),
          trailing: PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            onSelected: choiceAction,
            itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
    ;
  }

  void choiceAction(String value) {
    if (value == 'Adicionar Oferta') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateOfertaImovelPage()),
      );
    }
  }

  static List<ItemOferta> _loadOfertas() {
    List<ItemOferta> list = [];

    ItemOferta item = ItemOferta('R\$ 3500,00', 'Lannes Neves', '1',
        'assets/images/user/img_veronica.jpg', '22/02/2021');
    list.add(item);

    item = ItemOferta('R\$ 2700,00', 'Joyce Tavares', '2',
        'assets/images/user/img_veronica.jpg', '13/05/2021');
    list.add(item);

    item = ItemOferta('R\$ 4200,00', 'Francyne Barreto', '1',
        'assets/images/user/img_francine.jpg', '11/01/2021');
    list.add(item);

    return list;
  }
}

class Constants {
  static const String AdicionarOferta = 'Adicionar Oferta';
  static const String SobreOferta = 'Sobre';
  static const String ThirdItem = 'Third Item';

  static const List<String> choices = <String>[
    AdicionarOferta,
    SobreOferta,
    ThirdItem,
  ];
}
