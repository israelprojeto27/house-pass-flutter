import 'package:flutter/material.dart';
import 'package:direct_select/direct_select.dart';


class FilterTipoImovelWidget extends StatefulWidget {
  @override
  _FilterTipoImovelWidgetState createState() => _FilterTipoImovelWidgetState();
}

class _FilterTipoImovelWidgetState extends State<FilterTipoImovelWidget> {

  int id = 1;
  double fontSize = 15.0;

  final elements1 = [
    "Apartamento",
    "Casa",
    "Loft",
    "Hotel",
    "Galpão",
    "Pousada",
    "Casa Vila",
    "Kitinete",
    "Quarto",
  ];


  List<Widget> _buildItems1() {
    return elements1
        .map((val) => MySelectionItem( title : val ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child:  Column (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Tipo Imóvel',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.width > 360 ? 18 : 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DirectSelect(
                      itemExtent: 55.0,
                      selectedIndex: id,
                      backgroundColor: Colors.white,
                      child: MySelectionItem(
                        isForList: false,
                        title: elements1[id],
                      ),
                      onSelectedItemChanged: (index) {
                        setState(() {
                          id = index;
                          print('Index selecionado: ${index}'  );
                        });
                      },
                      items: _buildItems1()),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              height: 25,
            )
          ],
        )
    );
  }
}


//You can use any Widget
class MySelectionItem extends StatelessWidget {
  final String title;
  final bool isForList;

  const MySelectionItem({Key? key, required this.title, this.isForList = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: isForList
          ? Padding(
        child: _buildItem(context),
        padding: EdgeInsets.all(10.0),
      )
          : Card(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        child: Stack(
          children: <Widget>[
            _buildItem(context),
            Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.arrow_drop_down),
            )
          ],
        ),
      ),
    );
  }

  _buildItem(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Text(title),
    );
  }
}