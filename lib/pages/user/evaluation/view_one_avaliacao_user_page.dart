import 'package:flutter/material.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';

import 'list_avaliacao_user_page.dart';

class ViewOneAvaliacaoUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avaliações sobre Usuario'),
      ),
      body: Center(
          child: ListView(
        children: [
          Container(
              margin: EdgeInsets.only(top: 15),
              height: 250,
              width: 250,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailUserPage()),
                  );
                },
                child: ClipRRect(
                  child: Image.asset('assets/images/user/img_veronica.jpg'),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailUserPage()),
                    );
                  },
                  child: Text('Veronica Duraes',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 25))),
              Text('Cliente', style: TextStyle(fontSize: 20)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.star_border))
                ],
              ),
              SizedBox(height: 5),
              Text('Ele é um corretor muito competente ',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20)),
              SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                  child: Text('Ver mais'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListaAvaliacaoUserPage()),
                    );
                  },
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
