import 'package:flutter/material.dart';
import 'package:housepass/pages/user/configurations/widgets/item_select_widget_configuration_page.dart';
import 'package:housepass/pages/user/configurations/widgets/item_switch_widget_configuration_page.dart';

class ConfigurationUserPage extends StatefulWidget {
  @override
  _ConfigurationUserPageState createState() => _ConfigurationUserPageState();
}

class _ConfigurationUserPageState extends State<ConfigurationUserPage> {
  bool isSwitched = false;

  bool isSwitchedRecebeConvite = false;
  bool isSwitchedExibeContaBuscas = false;
  bool isSwitchedExibeMeusImoveisBuscas = false;
  bool isSwitchedRecebeOfertasImoveis = false;
  String optionQuemPodeEnviarOfertas = '';
  bool isSwitchedRecebeComentariosImoveis = false;
  String optionQuemPodeEnviarComentarios = '';
  bool isSwitchedPermiteCompartilhaPublicacoes = false;
  String optionQuemPodeCompartilharPublicacoes = '';

  void initState() {
    super.initState();
    isSwitchedExibeContaBuscas = true;
    optionQuemPodeEnviarOfertas = 'Conexões';
    optionQuemPodeEnviarComentarios = 'Todos';
    optionQuemPodeCompartilharPublicacoes = 'Ninguem';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações Usuário'),
      ),
      body: Padding(
          padding: EdgeInsets.only(top: 10, left: 10),
          child: Column(
            children: [
              ItemSwitchConfigurationWidget(
                label: 'Receber Convites',
                defaultValue: isSwitchedRecebeConvite,
                onChanged: (bool newValue) {
                  setState(() {
                    isSwitchedRecebeConvite = newValue;
                  });
                },
              ),
              ItemSwitchConfigurationWidget(
                label: 'Exibir minha conta em buscas na plataforma',
                defaultValue: isSwitchedExibeContaBuscas,
                onChanged: (bool newValue) {
                  setState(() {
                    isSwitchedExibeContaBuscas = newValue;
                  });
                },
              ),
              ItemSwitchConfigurationWidget(
                label: 'Exibir meus imóveis em buscas na plataforma',
                defaultValue: isSwitchedExibeMeusImoveisBuscas,
                onChanged: (bool newValue) {
                  setState(() {
                    isSwitchedExibeMeusImoveisBuscas = newValue;
                  });
                },
              ),
              ItemSwitchConfigurationWidget(
                label: 'Receber ofertas sobre meus imóveis',
                defaultValue: isSwitchedRecebeOfertasImoveis,
                onChanged: (bool newValue) {
                  setState(() {
                    isSwitchedRecebeOfertasImoveis = newValue;
                  });
                },
              ),
              ItemSelectConfigurationPage(
                label: 'Quem pode enviar ofertas',
                defaultValue: optionQuemPodeEnviarOfertas,
                onChanged: (String newValue) {
                  setState(() {
                    optionQuemPodeEnviarOfertas = newValue;
                  });
                },
              ),
              ItemSwitchConfigurationWidget(
                label: 'Receber comentários em meus imóveis',
                defaultValue: isSwitchedRecebeConvite,
                onChanged: (bool newValue) {
                  setState(() {
                    isSwitchedRecebeComentariosImoveis = newValue;
                  });
                },
              ),
              ItemSelectConfigurationPage(
                label: 'Quem pode enviar comentários',
                defaultValue: optionQuemPodeEnviarComentarios,
                onChanged: (String newValue) {
                  setState(() {
                    optionQuemPodeEnviarComentarios = newValue;
                  });
                },
              ),
              ItemSwitchConfigurationWidget(
                label: 'Permitir compartilhar publicações',
                defaultValue: isSwitchedRecebeConvite,
                onChanged: (bool newValue) {
                  setState(() {
                    isSwitchedPermiteCompartilhaPublicacoes = newValue;
                  });
                },
              ),
              ItemSelectConfigurationPage(
                label: 'Quem pode compartilhar minhas publicações',
                defaultValue: optionQuemPodeCompartilharPublicacoes,
                onChanged: (String newValue) {
                  setState(() {
                    optionQuemPodeCompartilharPublicacoes = newValue;
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity,
                        40), // double.infinity is the width and 30 is the height
                  ),
                  onPressed: () {
                    print("Retorno exibe contas: " +
                        isSwitchedExibeContaBuscas.toString());

                    print("Retorno quem pode enviar convite: " +
                        optionQuemPodeEnviarOfertas.toString());
                  },
                  child: Text('Salvar'),
                ),
              )
            ],
          )),
    );
  }
}
