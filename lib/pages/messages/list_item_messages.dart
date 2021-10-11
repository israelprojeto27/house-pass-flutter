import 'package:flutter/material.dart';
import 'package:housepass/models/item_message_model.dart';
import 'package:housepass/models/message_model.dart';
import 'package:housepass/pages/messages/widgets/item_message_left_list_widget.dart';
import 'package:housepass/pages/messages/widgets/item_message_right_list_widget.dart';
import 'package:housepass/pages/messages/widgets/message_text_composer.dart';

class ListItemsMessagesPage extends StatelessWidget {
  final Message message;

  ListItemsMessagesPage(this.message);

  List<ItemMessage> itemsMessage = _loadItemMessages();
  String userCurrentId = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
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
          Expanded(
              child: ListView.builder(
                  itemCount: itemsMessage.length,
                  itemBuilder: (BuildContext context, int index) {
                    ItemMessage itemMessage = itemsMessage[index];
                    return Container(
                        margin: EdgeInsets.only(top: 20),
                        child: itemMessage.userId == userCurrentId
                            ? ItemMessageLeftWidget(itemMessage)
                            : ItemMessageRightWidget(itemMessage));
                  })),
          Card(
            child: TextComposer(),
            elevation: 8,
            margin: EdgeInsets.all(8),
          )
        ],
      ),
    );
  }

  static List<ItemMessage> _loadItemMessages() {
    List<ItemMessage> list = [];

    ItemMessage item = ItemMessage(
        'Cheguei agora', '1', 'Roana', 'assets/images/user/img_roana.jpg');
    list.add(item);

    item = ItemMessage(
        'tudo bem', '2', 'Lannes', 'assets/images/user/img_lannes.jpg');
    list.add(item);

    item = ItemMessage('comprei todas as mercadorias', '1', 'Roana',
        'assets/images/user/img_roana.jpg');
    list.add(item);

    item = ItemMessage(
        'paguei com pix', '1', 'Roana', 'assets/images/user/img_roana.jpg');
    list.add(item);

    item = ItemMessage(
        'ok fechado', '2', 'Lannes', 'assets/images/user/img_lannes.jpg');
    list.add(item);

    return list;
  }
}
