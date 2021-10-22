import 'package:flutter/material.dart';
import 'package:housepass/pages/imovel/delete/confirm_delete_imovel_page.dart';
import 'package:housepass/pages/imovel/edit/edit_imovel_step_one_page.dart';
import 'package:housepass/pages/imovel/gallery_photos/gallery_photos_imovel_page.dart';
import 'package:housepass/widgets/widget_detail_imovel_in_lists.dart';

import 'card_avaliacoes_detail_imovel_widget.dart';
import 'card_descricao_detail_imovel_widget.dart';
import 'card_info_basica_detail_imovel_widget.dart';
import 'card_ofertas_detail_imovel_widget.dart';
import 'card_recomendacoes_detail_imovel_widget.dart';
import 'card_usuario_detail_imovel_widget.dart';
import 'card_valores_imovel_detail_widget.dart';


class DetailImovelPage extends StatefulWidget {
  @override
  _DetailImovelPageState createState() => _DetailImovelPageState();
}

class _DetailImovelPageState extends State<DetailImovelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detalhes Imóvel'),
          actions: [
            PopupMenuButton<String>(
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
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(bottom: 20),
          child: ListView(
            children: [
              DetailImovelWidget(),
              SizedBox(
                height: 24,
              ),
              CardDescricaoDetailImovelWidget('Imóvel padrão luxo, bem localizado, otimo espaço, proximo à praia e bem seguro'),
              SizedBox(
                height: 8,
              ),
              CardInfoBasicaDetailImovelWidget(),
              SizedBox(
                height: 8,
              ),
              CardValoresImovelDetailImovelWidget(),
              SizedBox(
                height: 8,
              ),
              CardUsuarioDetailImovelWidget(),
              SizedBox(
                height: 8,
              ),
              CardOfertasDetailImovelWidget(),
              SizedBox(
                height: 8,
              ),
              CardRecomendacoesDetailImovelWidget(),
              SizedBox(
                height: 8,
              ),
              CardAvaliacoesDetailImovelWidget(),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ));
  }

  void choiceAction(String value) {
    if (value == 'Editar Imóvel') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => EditImovelStepOnePage()),
      );
    } else if (value == 'Galeria Fotos') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GalleryPhotosImovelPage()),
      );
    }
    else if (value == 'Excluir Imóvel') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ConfirmDeleteImovelPage()),
      );
    }
  }
}

class Constants {
  static const String EditarImovel = 'Editar Imóvel';
  static const String GaleriaFotos = 'Galeria Fotos';
  static const String ExcluirImovel = 'Excluir Imóvel';

  static const List<String> choices = <String>[
    EditarImovel,
    GaleriaFotos,
    ExcluirImovel
  ];
}
