import 'package:flutter/material.dart';
import 'package:housepass/models/avliacao_user_model.dart';
import 'package:housepass/pages/imovel/avaliacao/create_avaliacao_imovel_page.dart';
import 'package:housepass/pages/imovel/avaliacao/list_avaliacao_imovel_page.dart';
import 'package:housepass/pages/imovel/oferta/list_ofertas_page.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';

class CardAvaliacoesDetailImovelWidget extends StatefulWidget {
  @override
  _CardAvaliacoesDetailImovelWidgetState createState() =>
      _CardAvaliacoesDetailImovelWidgetState();
}

class _CardAvaliacoesDetailImovelWidgetState
    extends State<CardAvaliacoesDetailImovelWidget> {
  List<AvaliacaoUser> avaliacoes = _loadAvaliacoesImovel();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
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
              Column(
                children: avaliacoes
                    .map((item) => InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailUserPage()),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                              leading: ClipOval(
                                child: Image.asset(item.userImageUrl),
                              ),
                              title: Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(item.userName),
                              ),
                              subtitle: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                  ],
                                ),
                              ),
                            ),
                      ),
                    ))
                    .toList(),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: ElevatedButton(
                  child: Text('Ver mais'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListaAvaliacaoImovelPage()),
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
    );
  }

  void choiceAction(String value) {
    if (value == 'Adicionar Avaliação') {
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
