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
          title: Text("Messages"),
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
                    child: Row(
                      children: [
                        Container(
                            height: 70,
                            width: 70,
                            child: (ClipRRect(
                              child: Image.asset(message.imageUser),
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ))),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.only( left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(message.nameUser, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                              SizedBox(height: 8,),
                              Text(message.lastMessage, style: TextStyle(fontSize: 16),),
                              Text(message.date)
                            ],
                          ),
                        ),
                      ],
                    )),
              );
            }));
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


