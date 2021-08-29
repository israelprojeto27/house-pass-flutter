import 'package:flutter/material.dart';
import 'package:housepass/models/comentario_model.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

import 'list_comentario_page.dart';

class ViewOneComentariosPage extends StatelessWidget {

  Comentario comentario = _loadComentario();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentarios'),
      ),
      body: ListView(
        children: [
          DetailImovelWidget(),
          Container (
            margin: EdgeInsets.only(left: 16, top: 30, right: 16),
            height: 220,
            child: Container(
                      child: Column (
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  child: (ClipRRect(
                                    child: Image.asset(comentario.userImageUrl),
                                    borderRadius: BorderRadius.all(Radius.circular(40)),
                                  ))),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(left: 10, right:10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(comentario.userName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                      SizedBox(height: 8,),
                                      Row (
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text(comentario.descricaoComentario, style: TextStyle(fontSize: 16)),
                                          Text(comentario.dataComentario, style: TextStyle(fontSize: 14)),
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
                          SizedBox(height: 20,),
                          Center(
                            child: ElevatedButton(
                              child: Text('Ver mais'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ListaComentariosPage()),
                                );
                              },
                            ),
                          )
                        ],
                      )
                  ),
          ),
        ],
      ),
    );
  }

  static Comentario _loadComentario() {
    Comentario item = Comentario( 'Lannes Neves', '1', 'assets/images/user/img_veronica.jpg', 'Parece ser excelente', '22/02/2021');
    return item;
  }
}