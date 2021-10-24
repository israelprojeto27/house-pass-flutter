import 'package:flutter/material.dart';

class FilterTipoUsuarioWidgetPage extends StatefulWidget {
  @override
  _FilterTipoUsuarioWidgetPageState createState() =>
      _FilterTipoUsuarioWidgetPageState();
}

class _FilterTipoUsuarioWidgetPageState
    extends State<FilterTipoUsuarioWidgetPage> {
  var _valuesList = ['Cliente', 'Corretor', 'Imobiliária', 'Administradora'];
  String dropdownValue = 'Cliente';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Tipo Usuario',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: MediaQuery.of(context).size.width > 360 ? 18 : 16,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 350,
              color: Colors.white,
              child: Center(
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
                      child: Container(
                        margin: EdgeInsets.only(left: 8),
                        child: SizedBox(
                          width: 250.0, // for example
                          child:
                              Text(dropDownStringItem, textAlign: TextAlign.start),
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue!;
                    });
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
