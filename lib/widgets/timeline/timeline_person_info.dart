import 'package:flutter/material.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';

class TimelineInfoPersonPostWidget extends StatefulWidget {


  @override
  _TimelineInfoPersonPostWidgetState createState() => _TimelineInfoPersonPostWidgetState();
}

class _TimelineInfoPersonPostWidgetState extends State<TimelineInfoPersonPostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
            width: 50,
            height: 40,
            child: Image.asset('assets/images/user/img_eu_jitjitsu.jpg')
        ),
        title: Text("Israel Barreto"),
        subtitle: Text("Corretor", style: TextStyle(color: Colors.red),),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailUserPage()),
          );
        },
      ),
    );
  }
}

