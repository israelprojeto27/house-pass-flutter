
import 'package:flutter/material.dart';
import 'package:housepass/models/visitante_model.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

import 'list_visitantes_page.dart';

class ViewOneVisitantePage extends StatelessWidget {

  Visitante visitante = _loadVisitante();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visitante'),
      ),
      body: ListView (
        children: [
          DetailImovelWidget(),
          Container (
            margin: EdgeInsets.only(left: 16, top: 30, right: 16),
            height: 250,
            child: Container(
                      child: Column (
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  child: (ClipRRect(
                                    child: Image.asset(visitante.userImageUrl),
                                    borderRadius: BorderRadius.all(Radius.circular(40)),
                                  ))),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, right:10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(visitante.userName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                      SizedBox(height: 8,),
                                      Text(visitante.dataVisita, style: TextStyle(fontSize: 14)),
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
                          SizedBox(height: 20,),
                          Center(
                            child: ElevatedButton(
                              child: Text('Ver mais'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ListaVisitantePage()),
                                );
                              },
                            ),
                          )
                        ],
                      )
                  ),
          )
        ],
      ),
    );
  }

  static Visitante _loadVisitante() {
    Visitante item = Visitante( 'Lannes Neves', '1', 'assets/images/user/img_veronica.jpg', '22/02/2021');
    return item;
  }
}