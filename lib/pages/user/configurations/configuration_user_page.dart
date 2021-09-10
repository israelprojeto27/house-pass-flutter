import 'package:flutter/material.dart';
import 'package:housepass/pages/user/configurations/widgets/item_select_widget_configuration_page.dart';
import 'package:housepass/pages/user/configurations/widgets/item_switch_widget_configuration_page.dart';

class ConfigurationUserPage extends StatefulWidget {
  @override
  _ConfigurationUserPageState createState() => _ConfigurationUserPageState();
}

class _ConfigurationUserPageState extends State<ConfigurationUserPage> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:  AppBar(
       title: Text('Configurações Usuário'),
     ),
      body: Padding (
        padding: EdgeInsets.only(top: 10, left: 10),
        child: Column(
          children: [
            ItemSwitchConfigurationWidget('Receber Convites'),
            ItemSwitchConfigurationWidget('Exibir minha conta em buscas na plataforma'),
            ItemSwitchConfigurationWidget('Exibir meus imóveis em buscas na plataforma'),
            ItemSwitchConfigurationWidget('Receber ofertas sobre meus imóveis'),
            ItemSelectConfigurationPage('Quem pode enviar ofertas'),
            ItemSwitchConfigurationWidget('Receber comentários em meus imóveis'),
            ItemSelectConfigurationPage('Quem pode enviar comentários'),
            ItemSwitchConfigurationWidget('Permitir compartilhar publicações'),
            ItemSelectConfigurationPage('Quem pode compartilhar minhas publicações'),
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40), // double.infinity is the width and 30 is the height
                ) ,
                  onPressed: (){},
                  child: Text('Salvar'),),
            )
          ],
        )
      ),
    );
  }
}
