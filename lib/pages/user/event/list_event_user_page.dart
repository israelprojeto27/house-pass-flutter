import 'package:flutter/material.dart';
import 'package:housepass/models/event_user_model.dart';

import 'detail_event_user_page.dart';

class ListEventsUserPage extends StatefulWidget {
  @override
  _ListEventsUserPageState createState() => _ListEventsUserPageState();
}

class _ListEventsUserPageState extends State<ListEventsUserPage> {

  List<EventUserModel> events = _loadEventsUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista Eventos'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: Center(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailEventUserPage()),
                  );
                },
                child: Column(
                  children: events
                      .map((item) => ListTile(
                    leading: ClipRRect(
                      child: Image.asset(item.imageUrl),
                    ),
                    title: Text(item.name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.description,
                          style: TextStyle(
                              color: Colors.red),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          item.dataEvent,
                          style: TextStyle(
                              color: Colors.red, fontSize: 12),
                        ),
                        SizedBox(height: 16,)
                      ],
                    ),
                    isThreeLine: true,))
                      .toList(),
                ),
              ),
              SizedBox(height: 16,)
            ],
          ),
        ),
      ),
    );
  }

  static List<EventUserModel> _loadEventsUser() {

    List<EventUserModel> list = [];

    EventUserModel event = EventUserModel(
        '1',
        'Grande Feirão Caixa',
        'inumeros apartamentos com preço abaixo do mercado',
        'assets/images/event/img_event1.jpg',
        '11/10/2021');
    list.add(event);

    event = EventUserModel(
        '2',
        'Lançamento Grant Hyatt',
        'venda de apartamentos de luxo na Barra da Tijuca',
        'assets/images/event/img_event2.jpg',
        '23/10/2021');
    list.add(event);

    event = EventUserModel(
        '3',
        'Luxo Palace Copacabana',
        'grande leilão de empreendimento em copacabana',
        'assets/images/event/img_event3.jpg',
        '12/11/2021');
    list.add(event);

    return list;
  }
}
