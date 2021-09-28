
import 'package:flutter/material.dart';
import 'package:housepass/models/imovel_model.dart';
import 'package:housepass/pages/timeline/detail_post_timeline.dart';

class TimelinePostImovelDescriptionWidget extends StatelessWidget {

  final ImovelModel imovel;
  TimelinePostImovelDescriptionWidget({required this.imovel});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPostTimeline('imovel')),
        );
      },
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 2,
                child: Image.asset(
                  this.imovel.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.imovel.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                  Text(this.imovel.location, style: TextStyle(fontSize: 16)),
                  SizedBox(height: 8),
                  Text(this.imovel.price, style: TextStyle(fontSize: 22)),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(this.imovel.type, style: TextStyle(fontSize: 14)),
                      Text(this.imovel.action, style: TextStyle(fontSize: 14)),
                      Text(this.imovel.area, style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(this.imovel.quantBanheiro, style: TextStyle(fontSize: 14)),
                      Text(this.imovel.quantGaragem, style: TextStyle(fontSize: 14)),
                      Text(this.imovel.quantSuite, style: TextStyle(fontSize: 14)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Divider(
                    color: Colors.black,
                    height: 12,
                  )
                ],
              ),
            ],
          )
      ),
    );
  }
}