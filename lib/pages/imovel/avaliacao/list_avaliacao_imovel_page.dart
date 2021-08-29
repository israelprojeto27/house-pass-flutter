import 'package:flutter/material.dart';
import 'package:housepass/models/avaliacao_imovel_model.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

class ListaAvaliacaoImovelPage extends StatelessWidget {

  List<AvaliacaoImovel> avaliacoes = _loadAvaliacoes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avaliações Imóvel'),
      ),
      body: Container(
        child: ListView(
          children: [
            DetailImovelWidget(),
            Container (
              margin: EdgeInsets.only(left: 16, top: 30, right: 16),
              height: 250,
              child: ListView.builder(
                  itemCount: avaliacoes.length,
                  itemBuilder: (BuildContext context, int index) {
                    AvaliacaoImovel avaliacao = avaliacoes[index];
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
          ],
        ),
      ),
    );
  }

  static List<AvaliacaoImovel> _loadAvaliacoes() {

    List<AvaliacaoImovel> list = [];

    AvaliacaoImovel avaliacao = AvaliacaoImovel('Lannes Neves', 0, 'Corretor','assets/images/user/img_veronica.jpg', '11/12/2021');
    list.add(avaliacao);

    avaliacao = AvaliacaoImovel('Roana Robredo', 0, 'Cliente','assets/images/user/img_roana.jpg', '23/10/2021');
    list.add(avaliacao);

    avaliacao = AvaliacaoImovel('Francyne Neves', 0, 'Corretor','assets/images/user/img_roana.jpg', '06/09/2021');
    list.add(avaliacao);

    return list;
  }
}