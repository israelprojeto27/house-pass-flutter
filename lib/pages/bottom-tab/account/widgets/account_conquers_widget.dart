import 'package:flutter/material.dart';
import 'package:housepass/models/conquer_user_model.dart';
import 'package:housepass/pages/user/conquers/list_conquers_user_page.dart';


class AccountConquersWidget extends StatelessWidget {
  List<ConquerUserModel> conquers = _loadConquers();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text(
              "Conquistas",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: conquers
                      .map((item) => Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: ListTile(
                              leading: ClipRRect(
                                child: Image.asset(item.imageUrl),
                              ),
                              title: Text(
                                item.description,
                              ),
                              subtitle: Text(item.dataConquer),
                            ),
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: 8,
                ),
                Center(
                    child: ElevatedButton(
                  child: Text('Ver mais'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListConquersUserPage()),
                    );
                  },
                )),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static List<ConquerUserModel> _loadConquers() {
    List<ConquerUserModel> list = [];

    ConquerUserModel conquer = ConquerUserModel(
        '1',
        'assets/images/imovel/img_imovel_1.jpg',
        'Venda em leilão deste predio luxuoso',
        '11/01/2021');
    list.add(conquer);

    conquer = ConquerUserModel('2', 'assets/images/imovel/img_imovel_2.jpg',
        'Grande aquisição de condominios', '22/02/2021');
    list.add(conquer);

    conquer = ConquerUserModel('3', 'assets/images/imovel/img_imovel_3.jpg',
        'Venda de predio na barra', '06/03/2021');
    list.add(conquer);
    return list;
  }
}
