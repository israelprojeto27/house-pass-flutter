import 'package:flutter/material.dart';
import 'package:housepass/models/oferta_model.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

class ListaOfertasPage extends StatelessWidget {
  List<ItemOferta> ofertas = _loadOfertas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ofertas'),
        ),
        body: ListView(
          children: [
            DetailImovelWidget(),
            Container(
                margin: EdgeInsets.only(left: 16, top: 30, right: 16),
                height: 250,

                child: ListView.builder(
                    itemCount: ofertas.length,
                    itemBuilder: (BuildContext context, int index) {
                      ItemOferta itemOferta = ofertas[index];
                      return Container(
                        child: Column (
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 50,
                                    width: 50,
                                    child: (ClipRRect(
                                      child: Image.asset(itemOferta.userImageUrl),
                                      borderRadius: BorderRadius.all(Radius.circular(40)),
                                    ))),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 10, right:10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(itemOferta.userName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                        SizedBox(height: 8,),
                                        Row (
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(itemOferta.valorOferta, style: TextStyle(fontSize: 16)),
                                            Text(itemOferta.dataOferta, style: TextStyle(fontSize: 14)),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row (
                            children: [
                              Expanded(
                                child: new Container(
                                    child: Divider(
                                      color: Colors.black,
                                      height: 16,
                                    )),
                              ),
                            ]
                            ),
                            SizedBox(height: 20,)
                          ],
                        )
                      );
                    })),
          ],
        ));
  }

  static List<ItemOferta> _loadOfertas() {
    List<ItemOferta> list = [];

    ItemOferta item = ItemOferta('R\$ 3500,00', 'Lannes Neves', '1', 'assets/images/user/img_veronica.jpg', '22/02/2021');
    list.add(item);

    item = ItemOferta('R\$ 2700,00',  'Joyce Tavares', '2', 'assets/images/user/img_veronica.jpg', '13/05/2021');
    list.add(item);

    item = ItemOferta('R\$ 4200,00', 'Francyne Barreto','1', 'assets/images/user/img_francine.jpg', '11/01/2021');
    list.add(item);

    item = ItemOferta('R\$ 7300,00', 'Claudinha','1', 'assets/images/user/img_claudinha.jpg', '27/04/2021');
    list.add(item);

    item = ItemOferta('R\$ 8100,00', 'Antonio', '2', 'assets/images/user/img_raphael.jpg', '14/07/2021');
    list.add(item);

    return list;
  }
}
