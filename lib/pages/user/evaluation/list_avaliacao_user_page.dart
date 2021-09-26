import 'package:flutter/material.dart';
import 'package:housepass/models/avliacao_user_model.dart';

class ListaAvaliacaoUserPage extends StatelessWidget {

  List<AvaliacaoUser> avaliacoesUser = _loadAvaliacoesUser();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avaliações sobre Usuario'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 16, top: 30, right: 16),

        child: ListView.builder(
            itemCount: avaliacoesUser.length,
            itemBuilder: (BuildContext context, int index) {
              AvaliacaoUser avaliacao = avaliacoesUser[index];
              return Container(
                  child: Column (
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 50,
                              width: 50,
                              child: (ClipRRect(
                                child: Image.asset(avaliacao.userImageUrl),
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                              ))),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 10, right:10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(avaliacao.userName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                  Row (
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                                      IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                                      IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                                      IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                                      IconButton(onPressed: () {}, icon: Icon(Icons.star_border))
                                    ],
                                  ),
                                  Text(avaliacao.dataAvaliacao, )
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
                                    height: 25,
                                  )),
                            ),
                          ]
                      ),
                      SizedBox(height: 20,)
                    ],
                  )
              );
            }),
      ),
    );
  }

  static List<AvaliacaoUser> _loadAvaliacoesUser() {
    List<AvaliacaoUser> list = [];

    AvaliacaoUser avaliacao = AvaliacaoUser('assets/images/user/img_roana.jpg', 'Roana Robredo', 4, '22/10/2021');
    list.add(avaliacao);

    avaliacao = AvaliacaoUser('assets/images/user/img_claudinha.jpg', 'Claudida Ximenes', 3, '15/07/2021');
    list.add(avaliacao);

    avaliacao = AvaliacaoUser('assets/images/user/img_veronica.jpg', 'Veronica Duraes', 3, '06/08/2021');
    list.add(avaliacao);

    return list;
  }
}