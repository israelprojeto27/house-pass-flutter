import 'package:flutter/material.dart';
import 'package:housepass/pages/imovel/avaliacao/list_avaliacao_imovel_page.dart';
import 'package:housepass/pages/imovel/avaliacao/view_one_avaliacao_imovel.dart';
import 'package:housepass/pages/imovel/comentario/view_one_comentario_page.dart';
import 'package:housepass/pages/imovel/oferta/view_one_oferta_page.dart';
import 'package:housepass/pages/imovel/recomendacao/respond_recomendacao_imovel_page.dart';
import 'package:housepass/pages/imovel/visitante/view_one_visitante_page.dart';
import 'package:housepass/pages/user/evaluation/view_one_avaliacao_user_page.dart';
import 'package:housepass/pages/user/invite/invite_received_respond.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';
import 'package:housepass/pages/user/recommendation/respond_recomendacao_user_page.dart';

class NotificationsPage extends StatelessWidget {
  List<ItemNotification> notifications = _loadNotifications();

  double size = 120;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (BuildContext context, int index) {
              ItemNotification item = notifications[index];
              return InkWell(
                onTap: () {
                  _loadDetailNotification(context, item);
                },
                child: Container(
                    height: 95,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2, blurRadius: 0, color: Colors.black12)
                    ]),
                    margin: EdgeInsets.all(7),
                    child: ListTile(
                        leading: CircleAvatar(radius: (32),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius:BorderRadius.circular(100),
                              child: Image.asset(item.imageUser),
                            )
                        ),
                      title:  Text(item.label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.description, style: TextStyle(fontSize: 16), maxLines: 3,),
                          SizedBox(height:4 ),
                          Text(item.dateTime)
                        ],
                      ),
                      trailing: PopupMenuButton<String>(
                        icon: Icon(Icons.more_vert, color: Colors.black,),
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
            }));
  }

  void choiceAction(String value) {
    print('Opcao selecionada: ' + value);
    if (value == 'Excluir Notificação') {

    }
  }

  static List<ItemNotification> _loadNotifications() {
    List<ItemNotification> list = [];
    ItemNotification item = ItemNotification(
        'assets/images/user/img_claudinha.jpg',
        'Oferta',
        'Oferta',
        'Voce recebeu uma nova oferta',
        '11 dias');
    list.add(item);

    item = ItemNotification('assets/images/user/img_francine.jpg', 'Visitante', 'Visitante',
        'Voce recebeu uma nova visualização', '5 dias');
    list.add(item);

    item = ItemNotification('assets/images/user/img_israel.jpg', 'Comentario', 'Comentario',
        'Voce recebeu um novo comentario', '3 dias');
    list.add(item);

    item = ItemNotification('assets/images/user/img_lannes.jpg', 'Convite', 'Convite',
        'Voce recebeu um novo convite ', '2 dias');
    list.add(item);

    item = ItemNotification('assets/images/user/img_roana.jpg', 'Convidado', 'Convidado',
        'Fulano aceitou o seu convite ', '2 dias');
    list.add(item);

    item = ItemNotification('assets/images/user/img_claudinha.jpg', 'AvaliacaoUsuario', 'Avaliação Usuário',
        'Voce recebeu uma nova avaliação ', '2 dias');
    list.add(item);

    item = ItemNotification('assets/images/user/img_claudinha.jpg', 'RecomendacaoUsuario', 'Recomendação Usuário',
        'Voce recebeu uma nova recomendação ', '2 dias');
    list.add(item);

    item = ItemNotification('assets/images/user/img_veronica.jpg', 'AvaliacaoImovel', 'Avaliação Imóvel',
        'Você recebeu uma avaliação em um \nde seus imóveis ', '2 dias');
    list.add(item);

    item = ItemNotification('assets/images/user/img_lannes.jpg', 'RecomendacaoImovel', 'Recomendação Imovel',
        'Você recebeu uma recomendação \nsobre um de seus imóveis ', '2 dias');
    list.add(item);

    return list;
  }

  void _loadDetailNotification(BuildContext context, ItemNotification item) {
    if (item.type == 'Oferta'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewOneOfertaPage()),
      );
    }
    else if (item.type == 'Visitante'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewOneVisitantePage()),
      );
    }
    else if (item.type == 'Comentario'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewOneComentariosPage()),
      );
    }
    else if (item.type == 'Convite') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => InviteReceivedRespond()),
      );
    }
    else if (item.type == 'Convidado'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailUserPage()),
      );
    }
    else if (item.type == 'Comentario'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListaAvaliacaoImovelPage()),
      );
    }
    else if (item.type == 'AvaliacaoImovel'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewOneAvaliacaoImovelPage()),
      );
    }
    else if (item.type == 'RecomendacaoImovel'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RespondRecomendacaoImovelPage()),
      );
    }
    else if (item.type == 'AvaliacaoUsuario'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ViewOneAvaliacaoUserPage()),
      );
    }
    else if (item.type == 'RecomendacaoUsuario'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RespondRecomendacaoUserPage()),
      );
    }
  }
}

class ItemNotification {
  String imageUser;
  String type;
  String label;
  String description;
  String dateTime;

  ItemNotification(this.imageUser, this.type, this.label, this.description, this.dateTime);
}

class Constants {
  static const String ExcluirNotificacao = 'Excluir Notificação';

  static const List<String> choices = <String>[
    ExcluirNotificacao
  ];
}
