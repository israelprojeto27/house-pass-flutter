import 'package:flutter/material.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';

class CardUsuarioDetailImovelWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailUserPage()),
        );
      },
      child: Card(
        elevation: 8,
        margin: EdgeInsets.all(8),
        child: ListTile(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Usuário Imóvel', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    child: (ClipRRect(
                      child: Image.asset('assets/images/user/img_eu_jitjitsu.jpg'),
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ))),
                Expanded(
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text('Israel Barreto'),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text('Corretor'),
                        Text('Leblon, Rio de Janeiro, RJ'),
                      ],),
                    )

                  ),
                )
              ],
            ),
          ),

        ),
      ),
    );;
  }
}
