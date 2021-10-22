import 'package:flutter/material.dart';

class GalleryPhotosImovelPage extends StatefulWidget {
  @override
  _GalleryPhotosImovelPageState createState() => _GalleryPhotosImovelPageState();
}

class _GalleryPhotosImovelPageState extends State<GalleryPhotosImovelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeria Fotos Imóvel'),
      ),
      body: Center(
        child: Text('tela de galeria de fotos de imovel')
      )
    );
  }
}
