import 'package:flutter/material.dart';

class DetailPostTypeImage extends StatefulWidget {
  @override
  _DetailPostTypeImageState createState() => _DetailPostTypeImageState();
}

class _DetailPostTypeImageState extends State<DetailPostTypeImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes Post'),
      ),
      body: Center (
        child: Text('Tela de detalhe de timeline para Posts do tipo Image')
      )
    );
  }
}
