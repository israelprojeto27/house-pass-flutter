import 'package:flutter/material.dart';

class AddTextTimelinePage extends StatefulWidget {
  @override
  _AddTextTimelinePageState createState() => _AddTextTimelinePageState();
}

class _AddTextTimelinePageState extends State<AddTextTimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Publicar Foto')
      ),
      body: Text('Tela para escrever uma publicação'),
    );
  }
}
