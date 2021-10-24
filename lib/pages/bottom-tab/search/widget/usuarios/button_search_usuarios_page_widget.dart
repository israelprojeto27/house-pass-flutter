import 'package:flutter/material.dart';

import '../../result_search_usuarios_page.dart';

class ButtonSearchUsuariosPageWidget extends StatefulWidget {
  @override
  _ButtonSearchUsuariosPageWidgetState createState() => _ButtonSearchUsuariosPageWidgetState();
}

class _ButtonSearchUsuariosPageWidgetState extends State<ButtonSearchUsuariosPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container (
      child : Padding(
        padding: const EdgeInsets.only(left: 16, right: 16,  bottom: 8),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(38.0),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          offset: const Offset(0, 2),
                          blurRadius: 8.0),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 4, bottom: 4),
                    child: TextField(
                      onChanged: (String txt) {},
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                      cursorColor: Colors.black12,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Informe um nome, email ou CRECI',
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: const BorderRadius.all(
                  Radius.circular(38.0),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      offset: const Offset(0, 2),
                      blurRadius: 8.0),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ResultSearchUsuariosPage()),
                          );
                        },
                        icon: Icon(
                          Icons.search,
                          size: 20,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
