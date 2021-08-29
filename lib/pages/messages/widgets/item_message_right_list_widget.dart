import 'package:flutter/material.dart';
import 'package:housepass/models/item_message_model.dart';

class ItemMessageRightWidget extends StatelessWidget {

  final ItemMessage itemMessage;

  ItemMessageRightWidget(this.itemMessage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      child: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    itemMessage.message,
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(itemMessage.userName,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500)),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(left: 16),
            child: CircleAvatar(
              backgroundImage:
              AssetImage(itemMessage.userImageUrl),
            ),
          ),
        ],
      ),
    );
  }

}