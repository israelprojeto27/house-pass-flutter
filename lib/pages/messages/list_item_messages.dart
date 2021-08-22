import 'package:flutter/material.dart';
import 'package:housepass/models/item_message_model.dart';
import 'package:housepass/models/message_model.dart';
import 'package:housepass/pages/messages/widgets/message_text_composer.dart';

class ListItemsMessagesPage extends StatelessWidget {
  final Message message;
  ListItemsMessagesPage(this.message);

  List<ItemMessage> itemsMessage = _loadItemMessages();
  String userCurrentId = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  height: 50,
                  width: 50,
                  child: (ClipRRect(
                    child: Image.asset(message.imageUser),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ))),
              SizedBox(
                width: 10,
              ),
              Text(message.nameUser)
            ],
          )),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
              itemCount: itemsMessage.length,
              itemBuilder: (BuildContext context, int index){
                ItemMessage itemMessage = itemsMessage[index];
                return Container (
                    child: itemMessage.userId == userCurrentId ?
                    Container(
                        margin: EdgeInsets.only(left: 30, top: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(itemMessage.message, style: TextStyle(fontSize: 16, ),)
                    )
                        :
                    Container (
                        margin: EdgeInsets.only(right: 30, top: 10),
                        alignment: Alignment.centerRight,
                        child: Text(itemMessage.message, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
                    )
                );
              })),
          TextComposer()
        ],
      ),

    );
  }

  static List<ItemMessage> _loadItemMessages() {
    List<ItemMessage> list = [];

    ItemMessage item = ItemMessage('Cheguei agora', '1');
    list.add(item);

    item = ItemMessage('tudo bem', '2');
    list.add(item);

    item = ItemMessage('comprei todas as mercadorias', '1');
    list.add(item);

    item = ItemMessage('paguei com pix', '1');
    list.add(item);

    item = ItemMessage('ok fechado', '2');
    list.add(item);

    return list;
  }
}
