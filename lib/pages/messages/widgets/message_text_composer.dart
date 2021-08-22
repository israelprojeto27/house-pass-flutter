import 'package:flutter/material.dart';

class TextComposer extends StatefulWidget {
  @override
  _TextComposerState createState() => _TextComposerState();
}

class _TextComposerState extends State<TextComposer> {

  bool _isComposing = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Icon(Icons.text_fields),
          SizedBox(width:8),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: 'Digite uma mensagem'),
              onChanged: (text){
                setState(() {
                  _isComposing = text.isNotEmpty;
                });
              },
              onSubmitted: (text){

              },
            )
          ),
          IconButton(
           onPressed: _isComposing ? (){

          }: null,
            icon: Icon(Icons.send))
        ],
      )
    );
  }
}