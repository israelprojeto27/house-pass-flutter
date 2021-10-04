import 'package:flutter/material.dart';
import 'package:housepass/pages/user/create/tipo_user_widget.dart';

class CreateUserPage extends StatefulWidget {
  @override
  _CreateUserPageState createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Conta'),
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
                  decoration: InputDecoration(labelText: 'Nome'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: 'Email'),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Confirma Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TipoImovelWidget(
                  onChanged: (String newValue) {
                    setState(() {

                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('Criar'),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
