import 'package:flutter/material.dart';
import 'package:housepass/models/imovel_model.dart';
import 'package:housepass/widgets/timeline/timeline_person_info.dart';
import 'package:housepass/widgets/timeline/timeline_post_imovel_widget.dart';

class ResultSearchImoveisPage extends StatefulWidget {
  @override
  _ResultSearchImoveisPageState createState() =>
      _ResultSearchImoveisPageState();
}

class _ResultSearchImoveisPageState extends State<ResultSearchImoveisPage> {

  List<ImovelModel> imoveis = _loadListImovel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resultado Busca Imóveis')),
      body: ListView.builder(
            itemCount: imoveis.length,
            itemBuilder: (BuildContext context, int index) {
              ImovelModel imovel = imoveis[index];
              return Column(
                children: [
                  TimelineInfoPersonPostWidget(),
                  TimelinePostImovelDescriptionWidget(imovel: imovel),
                ],
              );
            }
      ),
    );
  }
}

ImovelModel _loadDetailImovel() {
  ImovelModel imovel = ImovelModel(
      '1',
      'assets/images/imovel/img_imovel_1.jpg',
      'Luxo Palace Copacabana',
      'Avenida Copacabana',
      'R\$ 150.000,00',
      'Apartamento',
      'Venda',
      '500 m²',
      '1 Banheiro',
      '1 Garagem',
      '1 Suite');
  return imovel;
}

List<ImovelModel> _loadListImovel() {
  List<ImovelModel> list = [];
  ImovelModel imovel = ImovelModel(
      '1',
      'assets/images/imovel/img_imovel_1.jpg',
      'Luxo Palace Copacabana',
      'Avenida Copacabana',
      'R\$ 150.000,00',
      'Apartamento',
      'Venda',
      '500 m²',
      '1 Banheiro',
      '1 Garagem',
      '1 Suite');
  list.add(imovel);

  imovel = ImovelModel(
      '2',
      'assets/images/imovel/img_imovel_2.jpg',
      'Pousada Sal e Sol',
      'Cabo Frio',
      'R\$ 230.000,00',
      'Pousada',
      'Venda',
      '2300 m²',
      '1 Banheiro',
      '1 Garagem',
      '1 Suite');
  list.add(imovel);

  imovel = ImovelModel(
      '2',
      'assets/images/imovel/img_imovel_3.jpg',
      'Flat Boa Viagem',
      'Noiteroi',
      'R\$ 550.000,00',
      'Flat',
      'Aluguel',
      '1100 m²',
      '1 Banheiro',
      '1 Garagem',
      '1 Suite');
  list.add(imovel);

  return list;
}
