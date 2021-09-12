import 'package:flutter/material.dart';

import 'input_field_edit_widget.dart';
import 'input_photo_user_edit_widget.dart';

class EditAccountUserPage extends StatefulWidget {
  @override
  _EditAccountUserPageState createState() => _EditAccountUserPageState();
}

class _EditAccountUserPageState extends State<EditAccountUserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Edição Informações Usuário'),
        ),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            children: [
              InputPhotoUserEditWidget(),
              Center (
                child:IconButton(icon: Icon(Icons.camera_alt), onPressed: (){},),
              ),
              InputFieldEditWidget('Nome', Icons.account_box),
              InputFieldEditWidget('Email', Icons.mail),
              InputFieldEditWidget('Localização', Icons.map_sharp),
              InputFieldEditWidget('Telefone', Icons.phone),
              InputFieldEditWidget('WebSite', Icons.web_asset),
              InputFieldEditWidget('Sobre', Icons.description),
              SizedBox(height: 30,),
              SizedBox(
                height: 35,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40), // double.infinity is the width and 30 is the height
                  ) ,
                  onPressed: () {},
                  child: Text('Salvar'),
                ),
              )
            ],
          ),
        )));
  }
}
