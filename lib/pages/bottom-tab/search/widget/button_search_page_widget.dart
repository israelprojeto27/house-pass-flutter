import 'package:flutter/material.dart';

class ButtonSearchPageWidget extends StatelessWidget {
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
                        fontSize: 18,
                      ),
                      cursorColor: Colors.black12,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Informe uma localização',
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
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.search,
                        size: 20,
                        color: Colors.black),
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
