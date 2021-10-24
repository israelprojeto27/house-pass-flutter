import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/search/widget/imoveis/item_filter_quant_search_page.dart';


class FilterQuantItemsSearchPage  extends StatefulWidget {

  final Function onChangedBanheiro;
  final Function onChangedGaragem;
  final Function onChangedQuarto;
  final Function onChangedSuite;

  const FilterQuantItemsSearchPage({required this.onChangedBanheiro,
                                    required this.onChangedGaragem,
                                    required this.onChangedQuarto,
                                    required this.onChangedSuite});

  @override
  _FilterQuantItemsSearchPageState createState() => _FilterQuantItemsSearchPageState();
}

class _FilterQuantItemsSearchPageState extends State<FilterQuantItemsSearchPage > {

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
                      ItemFilterQuantSearchPage(label: 'Banheiro', onChanged: widget.onChangedBanheiro),
                      ItemFilterQuantSearchPage(label:'Garagem', onChanged: widget.onChangedGaragem),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ItemFilterQuantSearchPage(label:'Quarto', onChanged: widget.onChangedQuarto),
                      ItemFilterQuantSearchPage(label:'Suite', onChanged:  widget.onChangedSuite),
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

