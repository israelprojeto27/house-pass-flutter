import 'package:flutter/material.dart';

import 'create_imovel_step_two_page.dart';

class CreateImovelStepOnePage extends StatefulWidget {
  @override
  _CreateImovelStepOnePageState createState() =>
      _CreateImovelStepOnePageState();
}

class _CreateImovelStepOnePageState extends State<CreateImovelStepOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cadastro Imóvel - Passo 1')),
        body: ListView(
          children: [
            Text('Tela de cadastro de imovel - passo 1'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CreateImovelStepTwoPage()),
                );
              },
              child: Text('Avançar'),
            )
          ],
        ));
  }
}
