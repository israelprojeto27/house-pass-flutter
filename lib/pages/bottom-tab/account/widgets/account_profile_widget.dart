import 'package:flutter/material.dart';
import 'package:housepass/pages/user/configurations/configuration_user_page.dart';
import 'package:housepass/pages/user/edit/edit_account_user_page.dart';

class AccountProfileWidget extends StatelessWidget {

  final bool isAccount;

  AccountProfileWidget(this.isAccount);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 5),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  margin: EdgeInsets.only(top: 32, left: 16),
                  width: 130.0,
                  height: 130.0,
                  decoration: new BoxDecoration(
                    color: const Color(0xff7c94b6),
                    image: new DecorationImage(
                      image: new AssetImage('assets/images/user/img_claudinha.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    new BorderRadius.all(new Radius.circular(70.0)),
                    border: new Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                ),
                _loadButtonConfigurations(context, this.isAccount),
                _loadButtonEdit(context, this.isAccount),
                _loadButtonLogout(context, this.isAccount),
                _loadButtonInviteConnection(context, this.isAccount),

                SizedBox(height: 25)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Claudia Ximenes",
                    style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Corretor",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Lagos Imobiliaria",
                    style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: <Widget>[
                      Text("110 connections",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 17,
                              color: Colors.redAccent))
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }

  _loadButtonEdit(BuildContext context, bool isAccount) {
    if ( isAccount ){
      return Positioned(
        child:
        IconButton(
          icon: Icon (Icons.edit),
          color: Colors.redAccent,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditAccountUserPage()),
            );
          },
        ),
        right: 45,
        top: 110,
      );
    }
    else {
      return Container();
    }

  }

  _loadButtonConfigurations(BuildContext context, bool isAccount) {
    if ( isAccount ){
      return  Positioned(
        child: IconButton(
          icon: Icon (Icons.settings),
          color: Colors.redAccent,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ConfigurationUserPage()),
            );
          },
        ),
        right: 90,
        top: 110,
      );
    }
    else {
      return Container();
    }
  }

  _loadButtonLogout(BuildContext context, bool isAccount) {
    if ( isAccount ){
      return  Positioned(
        child: IconButton(
          icon: Icon (Icons.exit_to_app),
          color: Colors.redAccent,
          onPressed: () {
            showAlertDialog(context);
          },
        ),
        right: 5,
        top: 110,
      );
    }
    else {
      return Container();
    }
  }


  showAlertDialog(BuildContext context)
  {
    // configura o button
    Widget confirmButton = ElevatedButton(
      child: Text("Confirmar"),
      onPressed: () { },
    );

    Widget cancelButton = ElevatedButton(
      child: Text("Cancelar"),
      onPressed: () { },
    );

    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Logout"),
      content: Text("Você confirma que deseja sair do aplicativo?"),
      actions: [
        cancelButton,
        confirmButton
      ],
    );
    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  _loadButtonInviteConnection(BuildContext context, bool isAccount) {
    if (!isAccount){
      return Positioned(
        child: ElevatedButton(
          child: Text('Enviar Convite'),
          onPressed: () {
          },
        ),
        right: 50,
        top: 110,
      );
    }
    else {
      return Container();
    }
  }
}
