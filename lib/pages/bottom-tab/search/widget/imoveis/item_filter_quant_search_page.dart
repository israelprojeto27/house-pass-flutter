import 'package:flutter/material.dart';

class ItemFilterQuantSearchPage extends StatefulWidget {

  final String label;
  final Function onChanged;

  ItemFilterQuantSearchPage({required this.label, required this.onChanged});

  @override
  _ItemFilterQuantSearchPageState createState() =>
      _ItemFilterQuantSearchPageState();
}

class _ItemFilterQuantSearchPageState extends State<ItemFilterQuantSearchPage> {
  var _valuesList = ['0', '1', '2', '3', '4', '5', '6 0u mais'];
  String dropdownValue = '0';

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            widget.label,
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.grey,
                fontSize: MediaQuery.of(context).size.width > 360 ? 16 : 14,
                fontWeight: FontWeight.normal),
          ),
        ),
        Container(
          width: 150,
          color: Colors.white,
          child: Center(
            child: DropdownButton(
              value: dropdownValue,
              elevation: 16,
              isExpanded: true,
              underline: Container (
                 color: Colors.transparent,
              ),
              items: _valuesList.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: SizedBox(
                    width: 50.0, // for example
                    child: Text(dropDownStringItem, textAlign: TextAlign.center),
                  ) ,
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                  widget.onChanged(dropdownValue);
                });
              },
            ),
          ),
        )
      ],
    ));
  }
}
