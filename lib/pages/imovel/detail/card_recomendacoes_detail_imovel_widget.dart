import 'package:flutter/material.dart';
import 'package:housepass/models/recomendacao_imovel_model.dart';
import 'package:housepass/pages/imovel/oferta/list_ofertas_page.dart';
import 'package:housepass/pages/imovel/recomendacao/create_recomendacao_imovel_page.dart';
import 'package:housepass/pages/imovel/recomendacao/list_recomendacoes_imovel_page.dart';

class CardRecomendacoesDetailImovelWidget extends StatefulWidget {
  @override
  _CardRecomendacoesDetailImovelWidgetState createState() =>
      _CardRecomendacoesDetailImovelWidgetState();
}

class _CardRecomendacoesDetailImovelWidgetState
    extends State<CardRecomendacoesDetailImovelWidget> {
  List<ItemRecomendacaoImovel> recomendacoes = _loadRecomendacoesImovel();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 430,
      child: Card(
        elevation: 8,
        margin: EdgeInsets.all(8),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Recomendações Imóvel',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          subtitle: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: recomendacoes
                    .map((item) => ListTile(
                          leading: ClipOval(
                            child: Image.asset(item.userImageUrl),
                          ),
                          title: Text(item.userName),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.descricaoRecomendacao,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic),
                              ),
                              Text(
                                item.dataRecomendacao,
                                style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                          isThreeLine: true,
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
                          builder: (context) => ListRecomendacoesImovelPage()),
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
    ;
  }

  void choiceAction(String value) {
    if (value == 'Adicionar Recomendação') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateRecomendacaoImovelPage()),
      );
    }
  }

  static List<ItemRecomendacaoImovel> _loadRecomendacoesImovel() {
    List<ItemRecomendacaoImovel> list = [];

    ItemRecomendacaoImovel item = ItemRecomendacaoImovel(
        'Excelente empreendimento, vale a pena',
        'Lannes Neves',
        '1',
        'assets/images/user/img_veronica.jpg',
        '22/02/2021');
    list.add(item);

    item = ItemRecomendacaoImovel('Bem localizado e luxuoso', 'Joyce Tavares',
        '2', 'assets/images/user/img_veronica.jpg', '13/05/2021');
    list.add(item);

    item = ItemRecomendacaoImovel(
        'Ótimo espaço e perto da praia',
        'Francyne Barreto',
        '1',
        'assets/images/user/img_francine.jpg',
        '11/01/2021');
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
