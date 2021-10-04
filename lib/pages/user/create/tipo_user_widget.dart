import 'package:flutter/material.dart';

class TipoImovelWidget extends StatefulWidget {
  final Function onChanged;

  TipoImovelWidget({required this.onChanged});

  @override
  _TipoImovelWidgetState createState() => _TipoImovelWidgetState();
}

class _TipoImovelWidgetState extends State<TipoImovelWidget> {
  int id = 1;
  var _valuesList = [
    'Cliente',
    'Corretor',
    'Imobiliária',
    'Empreendedor',
    'Administradora'
  ];
  String dropdownValue = 'Cliente';

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                'Tipo Cliente',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.width > 360 ? 18 : 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Container(
                width: 500,
                color: Colors.white,
                child: DropdownButton(
                  value: dropdownValue,
                  elevation: 16,
                  isExpanded: true,
                  underline: Container(
                color: Colors.transparent,
                  ),
                  items: _valuesList.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: SizedBox(
                    width: 200, // for example
                    child: Text(dropDownStringItem,
                        textAlign: TextAlign.center),
                  ),
                );
                  }).toList(),
                  onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                  widget.onChanged(dropdownValue);
                });
                  },
                )),
          ],
        ));
  }
}
