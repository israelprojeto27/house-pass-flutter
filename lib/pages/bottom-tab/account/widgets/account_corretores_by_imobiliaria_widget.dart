import 'package:flutter/material.dart';
import 'package:housepass/models/connections_user_model.dart';
import 'package:housepass/pages/user/corretores/list_corretores_by_imobiliaria_page.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';

class AccountCorretoresByImobiliariaWidget extends StatefulWidget {
  @override
  _AccountCorretoresByImobiliariaWidgetState createState() => _AccountCorretoresByImobiliariaWidgetState();
}

class _AccountCorretoresByImobiliariaWidgetState extends State<AccountCorretoresByImobiliariaWidget> {

  List<ConnectionUserModel> corretores = _loadCorretores();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Corrretores Imobiliária",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Column(
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
                SizedBox(height: 10,),
                Center(
                    child: ElevatedButton(
                      child: Text('Ver mais'),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ListCorretoresByImobiliariaPage()),
                        );
                      },
                    )
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ],
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
