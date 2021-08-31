import 'package:flutter/material.dart';

class AccountBasicInformationWidget extends StatelessWidget {

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
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Informações Básicas",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Column(
            children:[
              ListTile(
                leading: Icon(Icons.map_sharp, color: Colors.red,),
                title: Text("Localização"),
                subtitle: Text("Niteroi, Rio de Janeiro, Brasil", style: TextStyle(color: Colors.red),),
              ),
              ListTile(
                leading: Icon(Icons.mail, color: Colors.red,),
                title: Text("Email"),
                subtitle: Text("claudia.ximenes@gmail.com", style: TextStyle(color: Colors.red),),
              ),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.red,),
                title: Text("Telefone"),
                subtitle: Text("(21) 9845165511", style: TextStyle(color: Colors.red),),
              ),
              ListTile(
                leading: Icon(Icons.web_asset, color: Colors.red,),
                title: Text("Website"),
                subtitle: Text("lagosimoveis.com.br", style: TextStyle(color: Colors.red),),
              ),
              ListTile(
                leading: Icon(Icons.description, color: Colors.red,),
                title: Text("Sobre"),
                subtitle: Text("10 anos de experiência no mercado imobiliarios", style: TextStyle(color: Colors.red),),
              ),
            ]
          ),
        ],
      ),
    );
  }
}
