import 'package:flutter/material.dart';

class ItemQuantItemWidget extends StatelessWidget {

  final String label;
  final String quant;

  const ItemQuantItemWidget(this.label, this.quant);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Text(this.label, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Text(this.quant, style: TextStyle(fontSize: 16,))
      ],
    );
  }
}
