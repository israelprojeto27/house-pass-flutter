import 'package:flutter/material.dart';

import 'input_field_edit_widget.dart';
import 'input_photo_user_edit_widget.dart';

class EditAccountUserPage extends StatefulWidget {
  @override
  _EditAccountUserPageState createState() => _EditAccountUserPageState();
}

class _EditAccountUserPageState extends State<EditAccountUserPage> {

  final nomeController = TextEditingController();
  final emailController = TextEditingController();
  final localizacaoController = TextEditingController();
  final telefoneController = TextEditingController();
  final webSiteController = TextEditingController();
  final sobreController = TextEditingController();

  void initState(){
    super.initState();
    nomeController.text = 'Claudia Ximenes';
    emailController.text = 'claudia.ximenes@gmail.com';
    telefoneController.text = '(21) 9977-1511';
    localizacaoController.text = 'Rio de Janeiro, RJ';
    webSiteController.text = '';
    sobreController.text = 'Anos de experiencia no mercado imobiliario';
  }


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
              InputFieldEditWidget('Nome', Icons.account_box, nomeController,1 ),
              InputFieldEditWidget('Email', Icons.mail, emailController, 1),
              InputFieldEditWidget('Localização', Icons.map_sharp, localizacaoController, 1),
              InputFieldEditWidget('Telefone', Icons.phone, telefoneController, 1),
              InputFieldEditWidget('WebSite', Icons.web_asset, webSiteController, 1),
              InputFieldEditWidget('Sobre', Icons.description, sobreController, 3),
              SizedBox(height: 30,),
              SizedBox(
                height: 35,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 40), // double.infinity is the width and 30 is the height
                  ) ,
                  onPressed: () {
                    print("Nome recuperado: " + nomeController.text );
                    print("Email recuperado: " + emailController.text );
                    print("Localizacao recuperado: " + localizacaoController.text );
                    print("Telefone recuperado: " + telefoneController.text );
                    print("WebSite recuperado: " + webSiteController.text );
                    print("Sobre recuperado: " + sobreController.text );

                  },
                  child: Text('Salvar'),
                ),
              )
            ],
          ),
        )));
  }
}
