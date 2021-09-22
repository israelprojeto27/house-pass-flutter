import 'package:flutter/material.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

class CreateOfertaImovelPage extends StatefulWidget {
  @override
  _CreateOfertaImovelPageState createState() => _CreateOfertaImovelPageState();
}

class _CreateOfertaImovelPageState extends State<CreateOfertaImovelPage> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adicionar Nova Oferta'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailImovelWidget(),
            SizedBox(height: 8),
            Divider(
              color: Colors.black,
              height: 25,
            ),
            Form(
              key: _formKey,
              child: Flexible(
                flex: 3,
                child: ListView(
                  children: [
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16),
                      child: Text('Valor Oferta', maxLines: 4,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        child: Text('Adicionar'),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}



