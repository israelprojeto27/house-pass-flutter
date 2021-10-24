import 'package:flutter/material.dart';
import 'package:housepass/models/connections_user_model.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';

class ListCorretoresByImobiliariaPage extends StatefulWidget {
  @override
  _ListCorretoresByImobiliariaPageState createState() => _ListCorretoresByImobiliariaPageState();
}

class _ListCorretoresByImobiliariaPageState extends State<ListCorretoresByImobiliariaPage> {

  List<ConnectionUserModel> corretores = _loadCorretores();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Corretores Imobiliária'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: Center(
          child: Column(
            children: corretores
                .map((item) => InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailUserPage()),
                );
              },
              child: ListTile(
                leading: ClipOval(
                  child: Image.asset(item.userImageUrl),
                ),
                title: Text(item.userName),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.userProfile,
                      style: TextStyle(
                          color: Colors.red, fontSize: 16),
                    ),
                    Text(
                      item.userLocation,
                      style: TextStyle(
                          color: Colors.red),
                    ),
                  ],
                ),
                isThreeLine: true,),
            ))
                .toList(),
          ),
        ),
      ),
    );
  }

  static List<ConnectionUserModel> _loadCorretores() {
    List<ConnectionUserModel> list = [];
    ConnectionUserModel connection = ConnectionUserModel('Raphael Pinheiro', 'assets/images/user/img_raphael.jpg', 'Inga, Niterio,  RJ', '1', 'Corretor');
    list.add(connection);

    connection = ConnectionUserModel('Veronica Duraes', 'assets/images/user/img_veronica.jpg', 'Recreio, Rio de Janeiro, RJ', '2', 'Cliente');
    list.add(connection);

    connection = ConnectionUserModel('Roana Robredo', 'assets/images/user/img_roana.jpg', 'Meier, Rio de Janeiro, RJ', '3', 'Cliente');
    list.add(connection);

    return list;
  }
}
