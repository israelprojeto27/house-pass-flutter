import 'package:flutter/material.dart';

class ItemValorImovelWidget extends StatelessWidget {

  final String label;
  final String value;

  const ItemValorImovelWidget(this.label, this.value);
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(this.label, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(this.value, style: TextStyle(fontSize: 16,))
        ],
      ),
    );
  }
}
