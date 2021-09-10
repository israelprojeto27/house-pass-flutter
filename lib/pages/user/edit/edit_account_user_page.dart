import 'package:flutter/material.dart';

class EditAccountUserPage extends StatefulWidget {
  @override
  _EditAccountUserPageState createState() => _EditAccountUserPageState();
}

class _EditAccountUserPageState extends State<EditAccountUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  AppBar(
          title: Text('Edição Informações Usuário'),
        ),
        body: Center (
            child: Text('Tela de edição de informações usuario')
        )
    );
  }
}
