import 'package:flutter/material.dart';
import 'create_imovel_step_three_page.dart';

class CreateImovelStepTwoPage extends StatefulWidget {
  @override
  _CreateImovelStepTwoPageState createState() => _CreateImovelStepTwoPageState();
}

class _CreateImovelStepTwoPageState extends State<CreateImovelStepTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Cadastro Imóvel - Passo 2')
      ),
      body: ListView(
        children: [
          Text('Tela de cadastro de imovel - passo 2'),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateImovelStepThreePage()),
              );
            },
            child: Text('Avançar'),
          )
        ],
      ),
    );
  }
}
