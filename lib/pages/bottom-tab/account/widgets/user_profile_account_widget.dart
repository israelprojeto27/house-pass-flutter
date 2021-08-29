import 'package:flutter/material.dart';

class UserProfileAccountWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(top: 32, left: 16),
                  width: 130.0,
                  height: 130.0,
                  decoration: new BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: new DecorationImage(
                      image: new AssetImage('assets/images/user/img_claudinha.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    new BorderRadius.all(new Radius.circular(70.0)),
                    border: new Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                ),
                Positioned(
                  child: Icon(
                    Icons.edit,
                    color: Colors.redAccent,
                  ),
                  right: 10,
                  top: 110,
                ),
                Positioned(
                  child: Icon(
                    Icons.settings,
                    color: Colors.redAccent,
                  ),
                  right: 50,
                  top: 110,
                ),
                SizedBox(height: 25)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Claudia Ximenes",
                    style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Corretor",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lagos Imobiliaria",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text("110 connections",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                              color: Colors.redAccent))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
