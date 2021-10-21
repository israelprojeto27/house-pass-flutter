import 'package:flutter/material.dart';
import 'package:housepass/pages/user/configurations/configuration_user_page.dart';
import 'package:housepass/pages/user/edit/edit_account_user_page.dart';
import 'package:housepass/pages/user/login/login_user_page.dart';


class AccountProfileWidget extends StatefulWidget {

  final bool isAccount;
  AccountProfileWidget(this.isAccount);

  @override
  _AccountProfileWidgetState createState() => _AccountProfileWidgetState();
}

class _AccountProfileWidgetState extends State<AccountProfileWidget> {

  String typeConnection = 'isConnected';

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
                _loadButtonConfigurations(context, widget.isAccount),
                _loadButtonEdit(context, widget.isAccount),
                _loadButtonLogout(context, widget.isAccount),
                _loadButtonInviteConnection(context, widget.isAccount),

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
      onPressed: () {

        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
            LoginUserPage()), (Route<dynamic> route) => false);
      },
    );

    Widget cancelButton = ElevatedButton(
      child: Text("Cancelar"),
      onPressed: () {
        Navigator.pop(context, true);
      },
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

    String labelInvite = '';

    if ( typeConnection == 'isConnected' ){
      setState(() {
          labelInvite = 'Cancelar Conexão';
      });
    }
    else if ( typeConnection == 'inviteSent' ){
      setState(() {
        labelInvite = 'Cancelar Convite';
      });
    }
    else {
      setState(() {
        labelInvite = 'Enviar Convite';
      });
    }

    print('label: ' + labelInvite );

    if (!isAccount){
      return Positioned(
        child: ElevatedButton(
          child: Text(labelInvite),
          onPressed: () {
            if ( typeConnection == 'isConnected' ){
              showAlertCancelConnection(context);
            }
            else if ( typeConnection == 'inviteSent' ){
              showAlertCancelInviteSent(context);
            }
            else {
              setState(() {
                typeConnection = 'inviteSent';
              });
            }
          },
        ),
        right: 15,
        top: 110,
      );
    }
    else {
      return Container();
    }
  }

  showAlertCancelConnection(BuildContext context)
  {
    // configura o button
    Widget confirmButton = ElevatedButton(
      child: Text("Confirmar"),
      onPressed: () {
        setState(() {
          typeConnection = '';
        });
        Navigator.pop(context, true);
      },
    );

    Widget cancelButton = ElevatedButton(
      child: Text("Cancelar"),
      onPressed: () {
        Navigator.pop(context, true);
      },
    );

    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Cancelar conexão"),
      content: Text("Você deseja realmente cancelar conexão com este usuário?"),
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


  showAlertCancelInviteSent(BuildContext context)
  {
    // configura o button
    Widget confirmButton = ElevatedButton(
      child: Text("Confirmar"),
      onPressed: () {

        setState(() {
          typeConnection = '';
        });
        Navigator.pop(context, true);
      },
    );

    Widget cancelButton = ElevatedButton(
      child: Text("Cancelar"),
      onPressed: () {
        Navigator.pop(context, true);
      },
    );

    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Cancelar convite"),
      content: Text("Você deseja realmente cancelar o convite enviado para este usuário?"),
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

}


