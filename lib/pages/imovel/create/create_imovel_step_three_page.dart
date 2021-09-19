import 'package:flutter/material.dart';

import 'create_imovel_confirm_page.dart';
import 'create_imovel_step_four_page.dart';
import 'create_imovel_step_two_page.dart';

class CreateImovelStepThreePage extends StatefulWidget {
  @override
  _CreateImovelStepThreePageState createState() =>
      _CreateImovelStepThreePageState();
}

class _CreateImovelStepThreePageState extends State<CreateImovelStepThreePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cadastro Imóvel - Passo 3')),
        body: Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.all(20),
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Localização'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 64),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreateImovelStepFourPage()),
                      );
                    },
                    child: Text('Avançar'),
                  ),
                )
              ],
            )));
  }
}
