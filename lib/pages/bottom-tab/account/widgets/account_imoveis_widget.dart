import 'package:flutter/material.dart';
import 'package:housepass/models/imovel_model.dart';
import 'package:housepass/pages/user/conquers/list_conquers_user_page.dart';
import 'package:housepass/widgets/timeline/timeline_post_imovel_widget.dart';

class AccountImoveisWidget extends StatelessWidget {

  List<ImovelModel> imoveis = _loadImoveis();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15, left: 10),
            child: Text(
              "Imóveis",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: imoveis
                      .map((item) =>  TimelinePostImovelDescriptionWidget(imovel: item))
                      .toList(),
                ),
                SizedBox(
                  height: 8,
                ),
                Center(
                    child: ElevatedButton(
                      child: Text('Ver mais'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListConquersUserPage()),
                        );
                      },
                    )),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static List<ImovelModel> _loadImoveis() {

    List<ImovelModel> list = [];
    ImovelModel imovel = ImovelModel('1', 'assets/images/imovel/img_imovel_1.jpg', 'Luxo Palace Copacabana', 'Avenida Copacabana', 'R\$ 150.000,00', 'Apartamento', 'Venda', '500 m²', '1 Banheiro', '1 Garagem', '1 Suite');
    list.add(imovel);

    imovel = ImovelModel('2', 'assets/images/imovel/img_imovel_2.jpg', 'Pousada Sal e Sol', 'Rua das Flores, Cabo Frio, RJ', 'R\$ 230.000,00', 'Pousada', 'Aluguel', '200 m²', '1 Banheiro', '1 Garagem', '1 Suite');
    list.add(imovel);

    imovel = ImovelModel('3', 'assets/images/imovel/img_imovel_3.jpg', 'Loft Boa Viagem', 'Rua Passo da Patria, Boa Viagem, RJ', 'R\$ 1.440.000,00', 'Loft', 'Temporada', '1100 m²', '1 Banheiro', '1 Garagem', '1 Suite');
    list.add(imovel);

    return list;
  }
}
