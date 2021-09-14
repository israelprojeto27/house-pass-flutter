
import 'package:flutter/material.dart';
import 'package:housepass/pages/timeline/detail_post_type_image.dart';

class TimelinePostImageDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPostTypeImage()),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child:  AspectRatio(
          aspectRatio: 2,
          child: Image.asset(
            'assets/images/imovel/img_imovel_2.jpg',
            fit: BoxFit.cover,
          ),
        )
      ),
    );
  }
}