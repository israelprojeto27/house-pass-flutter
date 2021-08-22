import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:housepass/pages/imovel/avaliacao/list_avaliacao_imovel_page.dart';
import 'package:housepass/pages/imovel/comentario/list_comentario_page.dart';
import 'package:housepass/pages/imovel/oferta/list_ofertas_page.dart';
import 'package:housepass/pages/imovel/recomendacao/list_recomendacao_imovel_page.dart';
import 'package:housepass/pages/imovel/visitante/list_visitantes_page.dart';
import 'package:housepass/pages/user/avaliacao/list_avaliacao_user_page.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';
import 'package:housepass/pages/user/recomendacao/list_recomendacao_user_page.dart';

class NotificationsPage extends StatelessWidget {
  List<ItemNotification> notifications = _loadNotifications();

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
                    height: 100,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          spreadRadius: 2, blurRadius: 0, color: Colors.grey)
                    ]),
                    margin: EdgeInsets.all(7),
                    child: Row(
                      children: [
                        Container(
                            height: 70,
                            width: 70,
                            child: (ClipRRect(
                              child: Image.asset(item.imageUser),
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ))),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.only( left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(item.label, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                              SizedBox(height: 8,),
                              Text(item.description, style: TextStyle(fontSize: 16), maxLines: 3,),
                              Text(item.dateTime)
                            ],
                          ),
                        ),

                      ],
                    )),
              );
            }));
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
        MaterialPageRoute(builder: (context) => ListaOfertasPage()),
      );
    }
    else if (item.type == 'Visitante'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListaVisitantePage()),
      );
    }
    else if (item.type == 'Comentario'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListaComentariosPage()),
      );
    }
    else if ((item.type == 'Convite') || (item.type == 'Convidado')){
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
        MaterialPageRoute(builder: (context) => ListaAvaliacaoImovelPage()),
      );
    }
    else if (item.type == 'RecomendacaoImovel'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListaRecomendacaoImovelPage()),
      );
    }
    else if (item.type == 'AvaliacaoUsuario'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListaAvaliacaoUserPage()),
      );
    }
    else if (item.type == 'RecomendacaoUsuario'){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListaRecomendacaoUserPage()),
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
