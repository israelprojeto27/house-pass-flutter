import 'package:flutter/material.dart';
import 'package:housepass/pages/user/create/create_user_page.dart';
import 'package:housepass/pages/user/create/tipo_user_widget.dart';
import 'package:housepass/widgets/bottom_navigation_bar_menu.dart';

class LoginUserPage extends StatefulWidget {
  @override
  _LoginUserPageState createState() => _LoginUserPageState();
}

class _LoginUserPageState extends State<LoginUserPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HousePass'),
      ),
      body: Container(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(labelText: 'Login'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password'),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigationBarApp()));
                    },
                    child: Text('Entrar'),
                  ),
                ),
                Container(
                    child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                      InkWell(
                        child: Text(
                          'Esqueceu sua senha? ',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        onTap: () {},
                      ),
                      SizedBox(width: 12),
                      InkWell(
                        child: Text(
                          'Criar Usuario',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateUserPage()));
                        },
                      ),
                    ]),
                  ],
                ))
              ],
            ),
          )),
    );
  }
}
