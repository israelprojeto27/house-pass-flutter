import 'package:flutter/material.dart';

class CreateEventUserPage extends StatefulWidget {
  @override
  _CreateEventUserPageState createState() => _CreateEventUserPageState();
}

class _CreateEventUserPageState extends State<CreateEventUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Criar Evento')
      ),
      body: Text('Tela para cadastrar um novo evento'),
    );
  }
}
