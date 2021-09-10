import 'package:flutter/material.dart';

class ItemSelectConfigurationPage extends StatefulWidget {
  final String label;

  ItemSelectConfigurationPage(this.label);

  @override
  _ItemSelectConfigurationPageState createState() =>
      _ItemSelectConfigurationPageState();
}

class _ItemSelectConfigurationPageState  extends State<ItemSelectConfigurationPage> {
  var _valuesList = ['Todos', 'Conexões', 'Ninguem'];
  String dropdownValue = 'Todos';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.label),
        DropdownButton(
          value: dropdownValue,
          elevation: 16,
          underline: Container(
            color: Colors.transparent,
          ),
          items: _valuesList.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: SizedBox(
                width: 80.0, // for example
                child: Text(dropDownStringItem, textAlign: TextAlign.left),
              ),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
        ),
      ],
    );
  }
}
