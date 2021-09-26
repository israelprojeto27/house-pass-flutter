import 'package:flutter/material.dart';
import 'package:housepass/models/avaliacao_user_model.dart';
import 'package:housepass/pages/user/evaluation/list_avaliacao_user_page.dart';
import 'package:housepass/pages/user/recommendation/list_recommendations_user_page.dart';

class AccountEvaluationsWidget extends StatelessWidget {
  List<AvaliacaoUserModel> avaliacoes = _loadAvaliacoesUser();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text(
              "Avaliações",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: avaliacoes
                      .map((item) => ListTile(
                            leading: ClipOval(
                              child: Image.asset(item.userImageUrl),
                            ),
                            title: Text(item.userName),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.star,
                                          size: 18,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star, size: 18)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star, size: 18)),
                                    IconButton(
                                        onPressed: () {},
                                        icon:
                                            Icon(Icons.star_border, size: 18)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.star_border, size: 18))
                                  ],
                                ),
                                Text(
                                  item.dataAvaliacao,
                                  style: TextStyle(color: Colors.red),
                                ),

                                SizedBox(
                                  height: 24,
                                )
                              ],
                            ),
                          ))
                      .toList(),
                ),
                SizedBox(
                  height: 8,
                ),
                Center(
                    child: ElevatedButton(
                  child: Text('Ver mais'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListaAvaliacaoUserPage()),
                    );
                  },
                )),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static List<AvaliacaoUserModel> _loadAvaliacoesUser() {
    List<AvaliacaoUserModel> list = [];

    AvaliacaoUserModel avaliacao = AvaliacaoUserModel('Lannes Neves', 0,
        'Corretor', 'assets/images/user/img_veronica.jpg', '11/12/2021');
    list.add(avaliacao);

    avaliacao = AvaliacaoUserModel('Roana Robredo', 0, 'Cliente',
        'assets/images/user/img_roana.jpg', '23/10/2021');
    list.add(avaliacao);

    avaliacao = AvaliacaoUserModel('Francyne Neves', 0, 'Corretor',
        'assets/images/user/img_roana.jpg', '06/09/2021');
    list.add(avaliacao);

    return list;
  }
}
