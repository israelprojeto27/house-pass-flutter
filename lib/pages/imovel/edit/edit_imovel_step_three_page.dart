import 'package:flutter/material.dart';

import 'edit_imovel_step_four_page.dart';

class EditImovelStepThreePage extends StatefulWidget {
  @override
  _EditImovelStepThreePageState createState() => _EditImovelStepThreePageState();
}

class _EditImovelStepThreePageState extends State<EditImovelStepThreePage> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Edição Imóvel - Passo 3')),
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
                            builder: (context) => EditImovelStepFourPage()),
                      );
                    },
                    child: Text('Avançar'),
                  ),
                )
              ],
            )));
  }
}
