import 'package:flutter/material.dart';

class DetailUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes Usuario'),
      ),
      body: Center(
          child: Container(
              margin: EdgeInsets.only(top: 10),
              child: ListView(
                children: [
                  Container(
                      height: 200,
                      width: 200,
                      child: (ClipRRect(
                        child:
                            Image.asset('assets/images/user/img_veronica.jpg'),
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                      ))),
                  Column(
                    children: [
                      Text('Veronica Duraes',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w500)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mail),
                          SizedBox(width: 10),
                          Text('veronica.durates@gmail.com'),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ))),
    );
  }
}
