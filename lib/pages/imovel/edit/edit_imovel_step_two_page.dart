import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_quant_items_search_page_widget.dart';

import 'edit_imovel_step_three_page.dart';

class EditImovelStepTwoPage extends StatefulWidget {
  @override
  _EditImovelStepTwoPageState createState() => _EditImovelStepTwoPageState();
}

class _EditImovelStepTwoPageState extends State<EditImovelStepTwoPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edição Imóvel - Passo 2')),
      body: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Titulo'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Descrição'),
                ),
              ),

              FilterQuantItemsSearchPage(
                onChangedBanheiro: (String newValue) {
                  setState(() {

                  });
                },
                onChangedGaragem: (String newValue) {
                  setState(() {

                  });
                },
                onChangedQuarto: (String newValue) {
                  setState(() {

                  });
                },
                onChangedSuite: (String newValue) {
                  setState(() {

                  });
                },
              ),

              Container(
                margin: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditImovelStepThreePage()),
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
