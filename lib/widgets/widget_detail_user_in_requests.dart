

import 'package:flutter/material.dart';

class DetailUserWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column (
        children: [
          Container(
              margin: EdgeInsets.only(top: 40),
              height: 200,
              width: 200,
              child: (ClipRRect(
                child: Image.asset('assets/images/user/img_claudinha.jpg'),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ))),
          Text(
            'Claudia Ximenes',
            style: TextStyle(fontSize: 20),
          ),
          Text(
            'Corretor',
            style: TextStyle(fontSize: 14),
          ),
        ],
      )
    );
  }

}