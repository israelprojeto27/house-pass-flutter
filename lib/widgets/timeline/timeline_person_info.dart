import 'package:flutter/material.dart';

class TimelineInfoPersonPostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
            width: 50,
            height: 40,
            child: Image.asset('assets/images/user/img_roana.jpg')
        ),
        title: Text("Roana Robredo"),
        subtitle: Text("Corretor", style: TextStyle(color: Colors.red),),
      ),
    );
  }
}
