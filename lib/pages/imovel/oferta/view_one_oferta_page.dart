import 'package:flutter/material.dart';
import 'package:housepass/models/oferta_model.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

import 'list_ofertas_page.dart';

class ViewOneOfertaPage extends StatelessWidget {
  ItemOferta oferta = _loadOferta();

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
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailUserPage()),
                  );
                },
                child: Container(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            child: (ClipRRect(
                              child: Image.asset(oferta.userImageUrl),
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ))),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(oferta.userName,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(oferta.valorOferta,
                                        style: TextStyle(fontSize: 16)),
                                    Text(oferta.dataOferta,
                                        style: TextStyle(fontSize: 14)),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(children: [
                      Expanded(
                        child: new Container(
                            child: Divider(
                          color: Colors.black,
                          height: 16,
                        )),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
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
                )),
              ),
            ),
          ],
        ));
  }

  static ItemOferta _loadOferta() {
    ItemOferta item = ItemOferta('R\$ 3500,00', 'Veronica', '1',
        'assets/images/user/img_veronica.jpg', '22/02/2021');
    return item;
  }
}
