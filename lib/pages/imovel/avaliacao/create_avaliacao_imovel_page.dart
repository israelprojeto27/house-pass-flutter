import 'package:flutter/material.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

class CreateAvaliacaoImovelPage extends StatefulWidget {
  @override
  _CreateAvaliacaoImovelPageState createState() =>
      _CreateAvaliacaoImovelPageState();
}

class _CreateAvaliacaoImovelPageState extends State<CreateAvaliacaoImovelPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Adicionar Nova Avaliação'),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16),
                      child: Text('Pontuação',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.star_border)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.star_border)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.star_border)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.star_border)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.star_border)),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16),
                      child: Text('Descrição',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, top: 16, right:20),
                      child: TextFormField(
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(16),
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        child: Text('Criar'),
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
