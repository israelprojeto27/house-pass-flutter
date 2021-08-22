
import 'package:flutter/material.dart';
import 'package:housepass/models/visitante_model.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

class ListaVisitantePage extends StatelessWidget {

  List<Visitante> visitantes = _loadVisitantes();
  
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
              child: ListView.builder(
                  itemCount: visitantes.length,
                  itemBuilder: (BuildContext context, int index) {
                    Visitante itemVisitante = visitantes[index];
                    return Container(
                        child: Column (
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 50,
                                    width: 50,
                                    child: (ClipRRect(
                                      child: Image.asset(itemVisitante.userImageUrl),
                                      borderRadius: BorderRadius.all(Radius.circular(40)),
                                    ))),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(left: 10, right:10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(itemVisitante.userName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                        SizedBox(height: 8,),
                                        Text(itemVisitante.dataVisita, style: TextStyle(fontSize: 14)),
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
                  }),
            )
          ],
        ),
    );
  }

  static List<Visitante> _loadVisitantes() {
    List<Visitante> list = [];

    Visitante item = Visitante( 'Lannes Neves', '1', 'assets/images/user/img_veronica.jpg', '22/02/2021');
    list.add(item);

    item = Visitante( 'Joyce Tavares', '2', 'assets/images/user/img_veronica.jpg', '13/05/2021');
    list.add(item);

    item = Visitante('Francyne Barreto','1', 'assets/images/user/img_francine.jpg', '11/01/2021');
    list.add(item);

    item = Visitante('Claudinha','1', 'assets/images/user/img_claudinha.jpg', '27/04/2021');
    list.add(item);

    item = Visitante('Antonio', '2', 'assets/images/user/img_raphael.jpg', '14/07/2021');
    list.add(item);

    return list;
  }
}