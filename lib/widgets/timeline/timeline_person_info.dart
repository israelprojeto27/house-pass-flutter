import 'package:flutter/material.dart';
import 'package:housepass/pages/imovel/detail/detail_imovel_page.dart';
import 'package:housepass/pages/imovel/edit/edit_imovel_step_one_page.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';

class TimelineInfoPersonPostWidget extends StatefulWidget {
  @override
  _TimelineInfoPersonPostWidgetState createState() =>
      _TimelineInfoPersonPostWidgetState();
}

class _TimelineInfoPersonPostWidgetState
    extends State<TimelineInfoPersonPostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Container(
            width: 50,
            height: 40,
            child: InkWell(
              child: Image.asset('assets/images/user/img_eu_jitjitsu.jpg'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailUserPage()),
                );
              },
            )),
        title: InkWell(
          child: Text("Israel Barreto"),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailUserPage()),
            );
          },
        ),
        subtitle: Text(
          "Corretor",
          style: TextStyle(color: Colors.red),
        ),
        trailing: PopupMenuButton<String>(
          icon: Icon(Icons.more_vert),
          onSelected: choiceAction,
          itemBuilder: (BuildContext context) {
            return Constants.choices.map((String choice) {
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
      ),
    );
  }

  void choiceAction(String value) {
    print('Opcao selecionada: ' + value);
    if (value == 'Detalhes Imóvel') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailImovelPage()),
      );
    } else if (value == 'Editar Imóvel') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EditImovelStepOnePage()),
      );
    }
  }
}

class Constants {
  static const String DetalhesImovel = 'Detalhes Imóvel';
  static const String EditarImovel =
      'Editar Imóvel'; // realizar um tratamento nesta opção para que seja exibido apenas para o dono do imovel
  static const String ThirdItem = 'Third Item';

  static const List<String> choices = <String>[
    DetalhesImovel,
    EditarImovel,
    ThirdItem,
  ];
}
