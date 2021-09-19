import 'package:flutter/material.dart';

import 'create_imovel_confirm_page.dart';

class CreateImovelStepFourPage extends StatefulWidget {
  @override
  _CreateImovelStepFourPageState createState() =>
      _CreateImovelStepFourPageState();
}

class _CreateImovelStepFourPageState extends State<CreateImovelStepFourPage> {
  List<String> imoveis = _loadImoveis();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cadastro Imóvel - Passo 4')),
        body: ListView(
          padding: EdgeInsets.all(8),
          children: [
            Center(
                child: Text(
              'Galeria de Fotos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 8,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.image),
              iconSize: 150,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(8),
              height: 350,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: imoveis.length,
                itemBuilder: (BuildContext context, int index) {
                  String urlImovel = imoveis[index];
                  return Container(
                    margin: EdgeInsets.all(8),
                    child: Image(
                      image: AssetImage(urlImovel),
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CreateImovelConfirmPage()),
                  );
                },
                child: Text('Avançar'),
              ),
            )
          ],
        ));
  }

  static List<String> _loadImoveis() {
    List<String> list = [];
    String urlImovel = 'assets/images/imovel/img_imovel_1.jpg';
    list.add(urlImovel);

    urlImovel = 'assets/images/imovel/img_imovel_2.jpg';
    list.add(urlImovel);

    urlImovel = 'assets/images/imovel/img_imovel_3.jpg';
    list.add(urlImovel);

    urlImovel = 'assets/images/imovel/img_imovel_4.jpg';
    list.add(urlImovel);


    return list;
  }
}
