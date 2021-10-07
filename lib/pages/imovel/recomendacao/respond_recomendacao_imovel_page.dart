import 'package:flutter/material.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';
import 'package:housepass/widgets/widget_detail_user_in_requests.dart';

class RespondRecomendacaoImovelPage extends StatefulWidget {
  @override
  _RespondRecomendacaoImovelPageState createState() =>
      _RespondRecomendacaoImovelPageState();
}

class _RespondRecomendacaoImovelPageState
    extends State<RespondRecomendacaoImovelPage> {
  bool isResponded = false;
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Recomendação sobre o imóvel'),
        ),
        body: ListView(
          children: [
            Center(
                child: Column(
              children: [
                DetailImovelWidget(),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                  child: DetailUserWidget(),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailUserPage()),
                    );
                  },
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    'Este imovel é espetacular e muito bem localizado',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                isResponded
                    ? Container(
                        margin: EdgeInsets.only(top: 20, bottom: 70),
                        child: Text(message, style: TextStyle(fontSize: 20)))
                    : Row(
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
        ));
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
