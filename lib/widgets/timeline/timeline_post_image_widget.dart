
import 'package:flutter/material.dart';

class TimelinePostImageDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child:  AspectRatio(
        aspectRatio: 2,
        child: Image.asset(
          'assets/images/imovel/img_imovel_2.jpg',
          fit: BoxFit.cover,
        ),
      )
    );
  }
}