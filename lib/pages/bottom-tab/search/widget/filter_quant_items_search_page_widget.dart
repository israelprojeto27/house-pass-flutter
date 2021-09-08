import 'package:flutter/material.dart';

import 'filter_area_search_page.dart';
import 'item_filter_quant_search_page.dart';


class FilterQuantItemsSearchPage  extends StatefulWidget {

  @override
  _FilterQuantItemsSearchPageState createState() => _FilterQuantItemsSearchPageState();
}

class _FilterQuantItemsSearchPageState extends State<FilterQuantItemsSearchPage > {

  var _valuesList = ['0','1', '2', '3', '4', '5', '6 0u mais'];
  String dropdownValue = '0';

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Quantidade Itens',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: MediaQuery.of(context).size.width > 360 ? 18 : 16,
                    fontWeight: FontWeight.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ItemFilterQuantSearchPage('Banheiro'),
                      ItemFilterQuantSearchPage('Garagem'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ItemFilterQuantSearchPage('Quarto'),
                      ItemFilterQuantSearchPage('Suite'),
                    ],
                  ),
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

