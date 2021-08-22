
import 'package:flutter/material.dart';
import 'package:housepass/routes/routes.dart';

class ButtoMessageAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Routes.messages);
            },
            icon: Icon(
              Icons.message_rounded,
              color: Colors.white,
            ),
            iconSize: 20,
          )
    );
  }
}