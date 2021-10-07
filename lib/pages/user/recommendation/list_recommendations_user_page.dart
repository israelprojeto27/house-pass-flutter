import 'package:flutter/material.dart';
import 'package:housepass/models/recomendacao_user_model.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';

class ListRecommendationsUserPage extends StatefulWidget {
  @override
  _ListRecommendationsUserPageState createState() => _ListRecommendationsUserPageState();
}

class _ListRecommendationsUserPageState extends State<ListRecommendationsUserPage> {

  List<RecomendacaoUserModel> recomendacoes = _loadRecomendacoesUser();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recomendações Usuário'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16),
        child: Center(
          child: Column(
            children: [
              Column(
                children: recomendacoes
                    .map((item) => InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => DetailUserPage()),
                        );
                      },
                      child: ListTile(
                  leading: ClipOval(
                      child: Image.asset(item.userImageUrl),
                  ),
                  title: Text(item.userName),
                  subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.descricaoRecomendacao,
                          style: TextStyle(
                              color: Colors.red),
                        ),
                        SizedBox(height: 16,)
                      ],
                  ),
                  isThreeLine: true,),
                    ))
                    .toList(),
              ),
              SizedBox(height: 16,)
            ],
          ),
        ),
      ),
    );
  }

  static List<RecomendacaoUserModel> _loadRecomendacoesUser() {
    List<RecomendacaoUserModel> list = [];
    RecomendacaoUserModel recommendation = RecomendacaoUserModel('Raphael Pinheiro', 'assets/images/user/img_raphael.jpg', 'Corretor', '1', 'A Claudia é uma excelente profissional com larga experiencia no mercado');
    list.add(recommendation);

    recommendation = RecomendacaoUserModel('Veronica Duraes', 'assets/images/user/img_veronica.jpg', 'Cliente', '2', 'Fiz muitos negócios com a Claúdia e ela sempre foi uma excelente profissional');
    list.add(recommendation);

    recommendation = RecomendacaoUserModel('Roana Robredo', 'assets/images/user/img_roana.jpg', 'Cliente', '3', 'Grande corretora do Rio de Janeiro e eu aprovo');
    list.add(recommendation);

    return list;
  }
}
