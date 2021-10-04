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
          title: Text('Escrever uma Publicação'),
        actions: [
          ElevatedButton(
            child: Text('Publicar'),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  maxLines: 8,
                  decoration: InputDecoration.collapsed(hintText: "Digite aqui o seu texto"),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
