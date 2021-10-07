import 'package:flutter/material.dart';

class DetailEventUserPage extends StatefulWidget {
  @override
  _DetailEventUserPageState createState() => _DetailEventUserPageState();
}

class _DetailEventUserPageState extends State<DetailEventUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Detalhes Evento')),
        body: Container(
            child: Column(
          children: [
            AspectRatio(
              aspectRatio: 2,
              child: Image.asset(
                'assets/images/event/img_event1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Grande Feirão Caixa',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'inumeros apartamentos com preço abaixo do mercado',
              style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              '11/10/2021',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 24,
            ),

            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Participantes',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.width > 360 ? 18 : 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        )));
  }
}

