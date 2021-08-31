import 'package:flutter/material.dart';


class AccountRecommendationsWidget extends StatelessWidget {
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
              "Recomendações",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
                children:[
                  ListTile(
                    leading: ClipOval(child: Image.asset('assets/images/user/img_roana.jpg'),),
                    title: Text("Roana Robredo"),
                    subtitle: Text("A Claudia é uma excelente profissional com larga experiencia no mercado", style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic),),
                  ),
                  SizedBox(height: 20,),
                  ListTile(
                    leading: ClipOval(child: Image.asset('assets/images/user/img_veronica.jpg'),),
                    title: Text("Veronica Duraes"),
                    subtitle: Text("Fiz muitos negócios com a Claúdia e ela sempre foi uma excelente profissional", style: TextStyle(color: Colors.red, fontStyle: FontStyle.italic),),
                  ),
                  SizedBox(height: 20,),
                  ListTile(
                    leading: ClipOval(child: Image.asset('assets/images/user/img_raphael.jpg'),),
                    title: Text("Lannes Neves"),
                    subtitle: Text("Grande corretora do Rio de Janeiro e eu aprovo", style: TextStyle(color: Colors.red),),
                  ),SizedBox(height: 20,),
                  Center(
                    child: ElevatedButton(
                      child: Text('Ver mais'),
                      onPressed: () { },
                    ),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
