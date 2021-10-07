import 'package:flutter/material.dart';

class ForgotPasswordUserPage extends StatefulWidget {
  @override
  _ForgotPasswordUserPageState createState() => _ForgotPasswordUserPageState();
}

class _ForgotPasswordUserPageState extends State<ForgotPasswordUserPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueceu sua senha'),
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
                  decoration: InputDecoration(labelText: 'Informe seu Email'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Resetar Senha'),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
