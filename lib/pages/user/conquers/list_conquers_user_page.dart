import 'package:flutter/material.dart';
import 'package:housepass/models/conquer_user_model.dart';

class ListConquersUserPage extends StatefulWidget {
  @override
  _ListConquersUserPageState createState() => _ListConquersUserPageState();
}

class _ListConquersUserPageState extends State<ListConquersUserPage> {

  List<ConquerUserModel> conquers = _loadConquers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conquistas  Usuário'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: Center(
          child: Column(
            children: conquers
                .map((item) => Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: ListTile(
              leading: ClipRRect(
                  child: Image.asset(item.imageUrl),
              ),
              title: Text(item.description),
              subtitle: Text(item.dataConquer),
              ),
                ))
                .toList(),
          ),
        ),
      ),
    );
  }

  static List<ConquerUserModel> _loadConquers() {
    List<ConquerUserModel> list = [];

    ConquerUserModel conquer = ConquerUserModel('1', 'assets/images/imovel/img_imovel_1.jpg', 'Venda em leilão deste predio luxuoso', '11/01/2021');
    list.add(conquer);

    conquer = ConquerUserModel('2', 'assets/images/imovel/img_imovel_2.jpg', 'Grande aquisição de condominios', '22/02/2021');
    list.add(conquer);

    conquer = ConquerUserModel('3', 'assets/images/imovel/img_imovel_3.jpg', 'Venda de predio na barra', '06/03/2021');
    list.add(conquer);
    return list;
  }
}
