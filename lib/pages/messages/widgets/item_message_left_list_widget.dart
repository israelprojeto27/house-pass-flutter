import 'package:flutter/material.dart';
import 'package:housepass/models/item_message_model.dart';

class ItemMessageLeftWidget extends StatelessWidget {

  final ItemMessage itemMessage;

  ItemMessageLeftWidget(this.itemMessage);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage:
              AssetImage(itemMessage.userImageUrl),
            ),
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
              ))
        ],
      ),
    );
  }

}