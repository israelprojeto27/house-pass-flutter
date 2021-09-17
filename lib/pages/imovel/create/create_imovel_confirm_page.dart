import 'package:flutter/material.dart';


class CreateImovelConfirmPage extends StatefulWidget {
  @override
  _CreateImovelConfirmPageState createState() => _CreateImovelConfirmPageState();
}

class _CreateImovelConfirmPageState extends State<CreateImovelConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Cadastro Imóvel - Confirmação')
      ),
      body: ListView(
        children: [
          Text('Tela de cadastro de imovel - Confirmação'),
          ElevatedButton(
            onPressed: () {
            },
            child: Text('Confirmar'),
          )
        ],
      ),
    );
  }
}
