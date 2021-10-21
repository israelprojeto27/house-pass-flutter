import 'package:flutter/material.dart';

class EditEventUserPage extends StatefulWidget {
  @override
  _EditEventUserPageState createState() => _EditEventUserPageState();
}

class _EditEventUserPageState extends State<EditEventUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Editar Evento'),),
      body: Center(child: Text('tela de edição de um evento')),
    );
  }
}
