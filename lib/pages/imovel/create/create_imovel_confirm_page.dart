import 'package:flutter/material.dart';

class CreateImovelConfirmPage extends StatefulWidget {
  @override
  _CreateImovelConfirmPageState createState() =>
      _CreateImovelConfirmPageState();
}

class _CreateImovelConfirmPageState extends State<CreateImovelConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro Imóvel - Confirmação')),
      body: ListView(
        children: [
          Container(
              padding: EdgeInsets.all(32),
              child: Image(
                  image: AssetImage('assets/images/imovel/img_imovel_1.jpg'))),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Tipo Imóvel',
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.redAccent)),
                  initialValue: 'Apartamento',
                  readOnly: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Ação',
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.redAccent)),
                  initialValue: 'Venda',
                  readOnly: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Localização',
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.redAccent)),
                  initialValue: 'Leblon, Rio de Janeiro, RJ',
                  readOnly: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Valor em R\$',
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.redAccent)),
                  initialValue: '120.000,00',
                  readOnly: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Área em m²',
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.redAccent)),
                  initialValue: '350 ',
                  readOnly: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Titulo',
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.redAccent)),
                  initialValue: 'Luxo Residence Palace',
                  readOnly: true,
                ),
                TextFormField(
                  maxLines: 4,
                  decoration: InputDecoration(
                      labelText: 'Descrição',
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.redAccent)),
                  initialValue: 'Prédio de alto padrão, bem localizado e próximo à praia',
                  readOnly: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Quantidade Banheiro',
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.redAccent)),
                  initialValue: '3',
                  readOnly: true,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Quantidade Garagem',
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: Colors.redAccent)),
                  initialValue: '2',
                  readOnly: true,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Confirmar'),
          )
        ],
      ),
    );
  }
}
