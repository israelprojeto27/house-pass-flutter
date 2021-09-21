import 'package:flutter/material.dart';

class EditImovelPage extends StatefulWidget {
  @override
  _EditImovelPageState createState() => _EditImovelPageState();
}

class _EditImovelPageState extends State<EditImovelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Edição Imóvel'),
        ),
        body: Center(
          child: Text('Tela de Edição informações imovel'),
        )
    );
  }
}
