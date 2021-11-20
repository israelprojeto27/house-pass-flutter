import 'package:flutter/material.dart';
import 'package:housepass/models/user_resume_model.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';

class ResultSearchUsuariosPage extends StatefulWidget {
  @override
  _ResultSearchUsuariosPageState createState() => _ResultSearchUsuariosPageState();
}

class _ResultSearchUsuariosPageState extends State<ResultSearchUsuariosPage> {

// other
  List<UserResumeModel> users = _loadUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado Busca Usuários'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: Center(
          child: Column(
            children: users
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

  static List<UserResumeModel> _loadUser() {
    List<UserResumeModel> list = [];
    UserResumeModel user = UserResumeModel('Raphael Pinheiro', 'assets/images/user/img_raphael.jpg', 'Inga, Niterio,  RJ', '1', 'Corretor');
    list.add(user);

    user = UserResumeModel('Veronica Duraes', 'assets/images/user/img_veronica.jpg', 'Recreio, Rio de Janeiro, RJ', '2', 'Cliente');
    list.add(user);

    user = UserResumeModel('Roana Robredo', 'assets/images/user/img_roana.jpg', 'Meier, Rio de Janeiro, RJ', '3', 'Cliente');
    list.add(user);

    return list;
  }
}
