import 'package:flutter/material.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';
import 'package:housepass/widgets/widget_detail_user_in_requests.dart';

import 'list_avaliacao_imovel_page.dart';

class ViewOneAvaliacaoImovelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avaliações Imóvel'),
      ),
      body: Container(
        margin: EdgeInsets.only(bottom: 20),
        child: ListView(
          children: [
            DetailImovelWidget(),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                IconButton(onPressed: () {}, icon: Icon(Icons.star)),
                IconButton(onPressed: () {}, icon: Icon(Icons.star_border)),
                IconButton(onPressed: () {}, icon: Icon(Icons.star_border))
              ],
            ),
            DetailUserWidget(),
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(
                child: Text('Ver mais'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListaAvaliacaoImovelPage()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
