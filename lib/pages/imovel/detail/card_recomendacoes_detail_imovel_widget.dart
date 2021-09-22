import 'package:flutter/material.dart';
import 'package:housepass/models/recomendacao_imovel_model.dart';
import 'package:housepass/pages/imovel/oferta/list_ofertas_page.dart';
import 'package:housepass/pages/imovel/recomendacao/create_recomendacao_imovel_page.dart';

class CardRecomendacoesDetailImovelWidget extends StatefulWidget {
  @override
  _CardRecomendacoesDetailImovelWidgetState createState() => _CardRecomendacoesDetailImovelWidgetState();
}

class _CardRecomendacoesDetailImovelWidgetState extends State<CardRecomendacoesDetailImovelWidget> {

  List<ItemRecomendacaoImovel> recomendacoes = _loadRecomendacoesImovel();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      child: Card(
        elevation: 8,
        margin: EdgeInsets.all(8),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Recomendações Imóvel', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
          ),
          subtitle: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 8, top: 15, right: 16),
                  height: 350,
                  child: ListView.builder(
                      itemCount: recomendacoes.length,
                      itemBuilder: (BuildContext context, int index) {
                        ItemRecomendacaoImovel itemRecomendacao = recomendacoes[index];
                        return Container(
                            child: Column (
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        height: 70,
                                        width: 70,
                                        child: (ClipRRect(
                                          child: Image.asset(itemRecomendacao.userImageUrl),
                                          borderRadius: BorderRadius.all(Radius.circular(40)),
                                        ))),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(left: 15, right:10, top: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(itemRecomendacao.userName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                            SizedBox(height: 8,),
                                            Text(itemRecomendacao.descricaoRecomendacao, style: TextStyle(fontSize: 18), maxLines: 3,),
                                            SizedBox(height: 16,),
                                            Text(itemRecomendacao.dataRecomendacao, style: TextStyle(fontSize: 14)),
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
                                SizedBox(height: 10,)
                              ],
                            )
                        );
                      })),
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
    );;
  }

  void choiceAction(String value) {
    if ( value == 'Adicionar Recomendação'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateRecomendacaoImovelPage()),
      );
    }
  }

  static List<ItemRecomendacaoImovel> _loadRecomendacoesImovel() {
    List<ItemRecomendacaoImovel> list = [];

    ItemRecomendacaoImovel item = ItemRecomendacaoImovel('Excelente empreendimento, vale a pena', 'Lannes Neves', '1', 'assets/images/user/img_veronica.jpg', '22/02/2021');
    list.add(item);

    item = ItemRecomendacaoImovel('Bem localizado e luxuoso',  'Joyce Tavares', '2', 'assets/images/user/img_veronica.jpg', '13/05/2021');
    list.add(item);

    item = ItemRecomendacaoImovel('Ótimo espaço e perto da praia', 'Francyne Barreto','1', 'assets/images/user/img_francine.jpg', '11/01/2021');
    list.add(item);

    return list;
  }
}

class Constants {
  static const String AdicionarRecomendacao = 'Adicionar Recomendação';
  static const String SobreRecomendacao = 'Sobre';
  static const String ThirdItem = 'Third Item';

  static const List<String> choices = <String>[
    AdicionarRecomendacao,
    SobreRecomendacao,
    ThirdItem,
  ];
}

