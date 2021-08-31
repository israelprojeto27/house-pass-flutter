import 'package:flutter/material.dart';


class AccountConnectionsWidget extends StatelessWidget {
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
              "Conexões",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Column(
                children:[
                  ListTile(
                    leading: ClipOval(child: Image.asset('assets/images/user/img_roana.jpg'),),
                    title: Text("Roana Robredo"),
                    subtitle: Text("Rio de Janeiro, Rio de Janeiro, Brasil", style: TextStyle(color: Colors.red),),
                  ),
                  ListTile(
                    leading: ClipOval(child: Image.asset('assets/images/user/img_veronica.jpg'),),
                    title: Text("Veronica Duraes"),
                    subtitle: Text("Recreio, Rio de Janeiro, Brasil", style: TextStyle(color: Colors.red),),
                  ),
                  ListTile(
                    leading: ClipOval(child: Image.asset('assets/images/user/img_raphael.jpg'),),
                    title: Text("Lannes Neves"),
                    subtitle: Text("Baixada, Rio de Janeiro, Brasil", style: TextStyle(color: Colors.red),),
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
