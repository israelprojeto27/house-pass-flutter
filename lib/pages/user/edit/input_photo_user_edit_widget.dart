import 'package:flutter/material.dart';

class InputPhotoUserEditWidget extends StatefulWidget {
  @override
  _InputPhotoUserEditWidgetState createState() => _InputPhotoUserEditWidgetState();
}

class _InputPhotoUserEditWidgetState extends State<InputPhotoUserEditWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10),
      width: 150.0,
      height: 150.0,
      decoration: new BoxDecoration(
        color: const Color(0xff7c94b6),
        image: new DecorationImage(
          image: new AssetImage('assets/images/user/img_claudinha.jpg', ),
          fit: BoxFit.cover,
        ),
        borderRadius: new BorderRadius.all(new Radius.circular(70.0)),
        border: new Border.all(
          color: Colors.white,
          width: 4.0,
        ),
      ),
    );
  }
}
