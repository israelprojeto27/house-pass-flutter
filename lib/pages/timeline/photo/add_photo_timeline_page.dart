import 'package:flutter/material.dart';

class AddPhotoTimelinePage extends StatefulWidget {
  @override
  _AddPhotoTimelinePageState createState() => _AddPhotoTimelinePageState();
}

class _AddPhotoTimelinePageState extends State<AddPhotoTimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Publicar Foto')
      ),
      body: Text('Tela para publicar foto'),
    );
  }
}
