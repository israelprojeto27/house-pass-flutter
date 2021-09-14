import 'package:flutter/material.dart';

class DetailPostTypeImovel extends StatefulWidget {
  @override
  _DetailPostTypeImovelState createState() => _DetailPostTypeImovelState();
}

class _DetailPostTypeImovelState extends State<DetailPostTypeImovel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detalhes Post'),
        ),
        body: Center (
            child: Text('Tela de detalhe de timeline para Posts do tipo Imovel')
        )
    );
  }
}
