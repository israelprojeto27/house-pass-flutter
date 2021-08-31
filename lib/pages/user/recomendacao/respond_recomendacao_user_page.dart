import 'package:flutter/material.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';
import 'package:housepass/widgets/widget_detail_user_in_requests.dart';

class RespondRecomendacaoUserPage extends StatefulWidget {
  @override
  _RespondRecomendacaoUserPageState createState() => _RespondRecomendacaoUserPageState();
}

class _RespondRecomendacaoUserPageState extends State<RespondRecomendacaoUserPage> {

  bool isResponded = false;
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recomendação sobre o usuario'),
      ),
      body: ListView(
        children: [
          Center(
              child: Column(
                children: [
                  DetailImovelWidget(),
                  DetailUserWidget(),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30, right: 30),
                    child: Text(
                      'A claudinha é uma excelente profissional com muitos anos no mercado',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  isResponded ?
                      Container (
                        margin: EdgeInsets.only(top: 20, bottom: 70),
                        child: Text(message, style: TextStyle(fontSize: 20))
                      )
                  :
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          iconSize: 100,
                          onPressed: () {
                            _approveRecommendation();
                          },
                          icon: Icon(Icons.cancel_outlined)),
                      IconButton(
                          iconSize: 100,
                          onPressed: () {
                            _refuseRecommendation();
                          },
                          icon: Icon(Icons.check_circle_outline)),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }

  void _approveRecommendation() {
    setState(() {
      isResponded = true;
      message = 'Recomendação foi aceita com sucesso';
    });
  }

  void _refuseRecommendation() {
    setState(() {
      isResponded = true;
      message = 'Recomendação foi reprovada com sucesso';
    });
  }
}
