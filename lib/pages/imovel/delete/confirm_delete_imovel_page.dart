import 'package:flutter/material.dart';

class ConfirmDeleteImovelPage extends StatefulWidget {
  @override
  _ConfirmDeleteImovelPageState createState() => _ConfirmDeleteImovelPageState();
}

class _ConfirmDeleteImovelPageState extends State<ConfirmDeleteImovelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Remoção de Imóvel'),
        ),
        body: Center(
            child: Text('tela de confirmação de remoção de imovel')
        )
    );
  }
}
