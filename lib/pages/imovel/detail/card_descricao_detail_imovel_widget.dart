import 'package:flutter/material.dart';

class CardDescricaoDetailImovelWidget extends StatelessWidget {

  final String description;

  const CardDescricaoDetailImovelWidget(this.description) ;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Descrição", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(this.description),
        ),
      ),
    );
  }
}
