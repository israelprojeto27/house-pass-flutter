import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/search/widget/imoveis/filter_acao_imovel_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/imoveis/filter_tipo_imovel_widget.dart';

import 'create_imovel_step_two_page.dart';

class CreateImovelStepOnePage extends StatefulWidget {
  @override
  _CreateImovelStepOnePageState createState() =>
      _CreateImovelStepOnePageState();
}

class _CreateImovelStepOnePageState extends State<CreateImovelStepOnePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro Imóvel - Passo 1')),
      body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [

              FilterTipoImovelWidget(
                onChanged: (int newValue) {
                  setState(() {

                  });
                },
              ),

              FilterTipoAcaoWidget(
                onChanged: (String newValue) {
                  setState(() {

                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Área em m²'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: 'Valor em R\$'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CreateImovelStepTwoPage()),
                    );
                  },
                  child: Text('Avançar'),
                ),
              )


            ],
          )),
    );
  }
}
