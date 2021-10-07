import 'package:flutter/material.dart';
import 'package:housepass/models/event_user_model.dart';
import 'package:housepass/pages/user/event/detail_event_user_page.dart';
import 'package:housepass/pages/user/event/list_event_user_page.dart';

class AccountEventsWidget extends StatelessWidget {
  List<EventUserModel> events = _loadEventsUser();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15, left: 10),
              child: Text(
                "Eventos",
                style: Theme.of(context).textTheme.title,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Column(
                      children: events
                          .map((item) => InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => DetailEventUserPage()),
                              );
                            },
                            child: ListTile(
                                  leading: ClipRRect(
                                    child: Image.asset(item.imageUrl),
                                  ),
                                  title: Text(item.name),
                                  subtitle: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        item.description,
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        item.dataEvent,
                                        style: TextStyle(
                                            color: Colors.red, fontSize: 12),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      )
                                    ],
                                  ),
                                  isThreeLine: true,
                                ),
                          ))
                          .toList(),
                    ),
                    SizedBox(height: 8,),
                    Center(
                        child: ElevatedButton(
                          child: Text('Ver mais'),
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ListEventsUserPage()),
                            );
                          },
                        )
                    ),
                    SizedBox(height: 20,),
                  ],
                ))
          ],
        ));
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
