import 'package:flutter/material.dart';
import 'package:housepass/models/avliacao_user_model.dart';
import 'package:housepass/pages/imovel/avaliacao/create_avaliacao_imovel_page.dart';
import 'package:housepass/pages/imovel/oferta/list_ofertas_page.dart';

class CardAvaliacoesDetailImovelWidget extends StatefulWidget {
  @override
  _CardAvaliacoesDetailImovelWidgetState createState() => _CardAvaliacoesDetailImovelWidgetState();
}

class _CardAvaliacoesDetailImovelWidgetState extends State<CardAvaliacoesDetailImovelWidget> {
  List<AvaliacaoUser> avaliacoes = _loadAvaliacoesImovel();

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
            child: Text(
              'Avaliações Imóvel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          subtitle: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 8, top: 15, right: 16),
                  height: 350,
                  child: ListView.builder(
                      itemCount: avaliacoes.length,
                      itemBuilder: (BuildContext context, int index) {
                        AvaliacaoUser avaliacao = avaliacoes[index];
                        return Container(
                            child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 70,
                                    width: 70,
                                    child: (ClipRRect(
                                      child:
                                          Image.asset(avaliacao.userImageUrl),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(40)),
                                    ))),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 15, right: 10, top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(avaliacao.userName,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.star),
                                            Icon(Icons.star),
                                            Icon(Icons.star),
                                            Icon(Icons.star),
                                            Icon(Icons.star),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(avaliacao.dataAvaliacao,
                                            style: TextStyle(fontSize: 14)),
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
                              height: 10,
                            )
                          ],
                        ));
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
                      MaterialPageRoute(
                          builder: (context) => ListaOfertasPage()),
                    );
                  },
                ),
              ),
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
    );
  }
  void choiceAction(String value) {
    if ( value == 'Adicionar Avaliação'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateAvaliacaoImovelPage()),
      );
    }
  }

  static List<AvaliacaoUser> _loadAvaliacoesImovel() {
    List<AvaliacaoUser> list = [];

    AvaliacaoUser item = AvaliacaoUser('assets/images/user/img_veronica.jpg',
        'Veronica Duraes', 3, '22/02/2021');
    list.add(item);

    item = AvaliacaoUser('assets/images/user/img_claudinha.jpg',
        'Claudia Ximenes', 3, '22/02/2021');
    list.add(item);

    item = AvaliacaoUser('assets/images/user/img_raphael.jpg',
        'Raphael Pinheiro', 3, '22/02/2021');
    list.add(item);

    return list;
  }


}

class Constants {
  static const String AdicionarAvaliacao = 'Adicionar Avaliação';
  static const String SobreAvaliacao = 'Sobre';
  static const String ThirdItem = 'Third Item';

  static const List<String> choices = <String>[
    AdicionarAvaliacao,
    SobreAvaliacao,
    ThirdItem,
  ];
}
