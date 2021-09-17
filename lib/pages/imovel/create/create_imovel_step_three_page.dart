import 'package:flutter/material.dart';

import 'create_imovel_confirm_page.dart';
import 'create_imovel_step_two_page.dart';

class CreateImovelStepThreePage extends StatefulWidget {
  @override
  _CreateImovelStepThreePageState createState() =>
      _CreateImovelStepThreePageState();
}

class _CreateImovelStepThreePageState extends State<CreateImovelStepThreePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cadastro Imóvel - Passo 3')),
        body: ListView(
          children: [
            Text('Tela de cadastro de imovel - passo 3'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateImovelConfirmPage(),
                  ),
                );
              },
              child: Text('Avançar'),
            )
          ],
        ));
  }
}
