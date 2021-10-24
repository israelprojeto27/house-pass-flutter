import 'package:flutter/material.dart';
import 'package:housepass/models/message_model.dart';
import 'package:housepass/pages/messages/list_item_messages.dart';

class MessagePage extends StatelessWidget {
  static const String routeName = '/messages';
  List<Message> messages = _loadListMessages();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mensagens"),
        ),
        body: ListView.builder(
            itemCount: messages.length,
            itemBuilder: (BuildContext context, int index) {
              Message message = messages[index];
              return InkWell (
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ListItemsMessagesPage(message)));
                },
                child: Container(
                    height: 80,
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
                            child: Image.asset(message.imageUser),
                          )
                      ),
                      title:  Text(message.nameUser, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(message.lastMessage, style: TextStyle(fontSize: 16), maxLines: 3,),
                          SizedBox(height:4 ),
                          Text(message.date)
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
    if (value == 'Excluir Mensagem') {

    }
  }

  static List<Message> _loadListMessages() {
    List<Message> list = [];
    Message message = Message('assets/images/user/img_roana.jpg',
        'Roana Robredo', 'te enviei o convite', '2 dias');
    list.add(message);

    message = Message('assets/images/user/img_lannes.jpg', 'Lannes Neves',
        'recebi a mercadoria', '13 dias');
    list.add(message);

    message = Message('assets/images/user/img_francine.jpg', 'Francyne Neves',
        'eu quero te ver', '3 dias');
    list.add(message);
    return list;
  }
}

class Constants {
  static const String ExcluirMensagem = 'Excluir Mensagem';

  static const List<String> choices = <String>[
    ExcluirMensagem
  ];
}



