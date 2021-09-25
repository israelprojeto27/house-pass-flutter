import 'package:flutter/material.dart';
import 'package:housepass/models/recomendacao_imovel_model.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

class ListRecomendacoesImovelPage extends StatefulWidget {
  @override
  _ListRecomendacoesImovelPageState createState() =>
      _ListRecomendacoesImovelPageState();
}

class _ListRecomendacoesImovelPageState
    extends State<ListRecomendacoesImovelPage> {
  List<ItemRecomendacaoImovel> recomendacoes = _loadRecomendacoes();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recomendações Imóvel'),
      ),
      body: Container(
        child: ListView(
          children: [
            DetailImovelWidget(),
            Container(
              margin: EdgeInsets.only(left: 16, top: 30, right: 16),
              height: 250,
              child: ListView.builder(
                  itemCount: recomendacoes.length,
                  itemBuilder: (BuildContext context, int index) {
                    ItemRecomendacaoImovel recomendacao = recomendacoes[index];
                    return Container(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                child: (ClipRRect(
                                  child: Image.asset(recomendacao.userImageUrl),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ))),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(recomendacao.userName,
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
                                        Text(recomendacao.descricaoRecomendacao,
                                            style: TextStyle(fontSize: 16)),
                                        Text(
                                          recomendacao.dataRecomendacao,
                                        )
                                      ],
                                    ),
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
                              height: 25,
                            )),
                          ),
                        ]),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ));
                  }),
            )
          ],
        ),
      ),
    );
  }

  static List<ItemRecomendacaoImovel> _loadRecomendacoes() {
    List<ItemRecomendacaoImovel> list = [];
    ItemRecomendacaoImovel item = ItemRecomendacaoImovel(
        'excelente empreendimento',
        'Veronica Duraes',
        '1',
        'assets/images/user/img_veronica.jpg',
        '11/01/2020');
    list.add(item);

    item = ItemRecomendacaoImovel('imovel de alto padrão', 'Lannes Neves', '2',
        'assets/images/user/img_lannes.jpg', '15/03/2020');
    list.add(item);

    item = ItemRecomendacaoImovel('eu super recomendo', 'Francyne Neves', '3',
        'assets/images/user/img_francine.jpg', '21/03/2020');
    list.add(item);

    return list;
  }
}
