import 'package:flutter/material.dart';
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
}
