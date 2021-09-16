import 'package:flutter/material.dart';
import 'package:housepass/models/comentario_model.dart';

class DetailTimelineComentarioWidget extends StatefulWidget {
  @override
  _DetailTimelineComentarioWidgetState createState() => _DetailTimelineComentarioWidgetState();
}

class _DetailTimelineComentarioWidgetState extends State<DetailTimelineComentarioWidget> {

  List<Comentario> comentarios = _loadComentarios();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, top: 20),
          child: Text(
            'Comentários',
            textAlign: TextAlign.left,
          ),
        ),
        Container (
          margin: EdgeInsets.only(left: 16, top: 30, right: 16),
          height: 220,
          child:  ListView.builder(
              itemCount: comentarios.length,
              itemBuilder: (BuildContext context, int index) {
                Comentario itemComentario = comentarios[index];
                return Container(
                    child: Column (
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                child: (ClipRRect(
                                  child: Image.asset(itemComentario.userImageUrl),
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                ))),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right:10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(itemComentario.userName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                    SizedBox(height: 8,),
                                    Row (
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(itemComentario.descricaoComentario, style: TextStyle(fontSize: 16)),
                                        Text(itemComentario.dataComentario, style: TextStyle(fontSize: 14)),
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
              }),
        )
      ],
    );
  }

  static List<Comentario> _loadComentarios() {

    List<Comentario> list = [];

    Comentario item = Comentario( 'Lannes Neves', '1', 'assets/images/user/img_veronica.jpg', 'Parece ser excelente', '22/02/2021');
    list.add(item);

    item = Comentario( 'Joyce Tavares', '2', 'assets/images/user/img_veronica.jpg', 'Otima localizacao', '13/05/2021');
    list.add(item);

    item = Comentario('Francyne Barreto','1', 'assets/images/user/img_francine.jpg', 'Tenho bastante interesse','11/01/2021');
    list.add(item);

    item = Comentario('Claudinha','1', 'assets/images/user/img_claudinha.jpg', 'Eu quero mais informações', '27/04/2021');
    list.add(item);

    item = Comentario('Antonio', '2', 'assets/images/user/img_raphael.jpg', 'Otima local', '14/07/2021');
    list.add(item);

    return list;
  }
}
