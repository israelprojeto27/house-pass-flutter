import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/search/widget/button_search_page_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_acao_imovel_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_price_search_page_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_quant_items_search_page_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_tipo_imovel_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_area_search_page.dart';


class SearchTabImoveisPage extends StatefulWidget {

  final localizacaoController = TextEditingController();
  RangeValues priceValue = RangeValues(0, 10000);
  String tipoAcao = 'Venda';
  int indexTipoImovel = 0;

  String quantBanheiro = '0';
  String quantGaragem = '0';
  String quantQuarto = '0';
  String quantSuite = '0';

  RangeValues areaValue = RangeValues(0, 10000);

  @override
  _SearchTabImoveisPageState createState() => _SearchTabImoveisPageState();
}

class _SearchTabImoveisPageState extends State<SearchTabImoveisPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 8),
              child: ButtonSearchPageWidget(
                  widget.priceValue,
                  widget.tipoAcao,
                  widget.indexTipoImovel,
                  widget.quantBanheiro,
                  widget.quantGaragem,
                  widget.quantQuarto,
                  widget.quantSuite,
                  widget.areaValue),
            ),
            FilterPriceSearchPageWidget(
              onChanged: (RangeValues newValue) {
                setState(() {
                  widget.priceValue = newValue;
                });
              },
            ),
            FilterTipoAcaoWidget(
              onChanged: (String newValue) {
                setState(() {
                  widget.tipoAcao = newValue;
                });
              },
            ),
            FilterTipoImovelWidget(
              onChanged: (int newValue) {
                setState(() {
                  widget.indexTipoImovel = newValue;
                });
              },
            ),
            FilterQuantItemsSearchPage(
              onChangedBanheiro: (String newValue) {
                setState(() {
                  widget.quantBanheiro = newValue;
                });
              },
              onChangedGaragem: (String newValue) {
                setState(() {
                  widget.quantGaragem = newValue;
                });
              },
              onChangedQuarto: (String newValue) {
                setState(() {
                  widget.quantQuarto = newValue;
                });
              },
              onChangedSuite: (String newValue) {
                setState(() {
                  widget.quantSuite = newValue;
                });
              },
            ),
            FilterAreaSearchPage(
              onChanged: (RangeValues newValue) {
                setState(() {
                  widget.areaValue = newValue;
                });
              },
            ),
          ],
        ));
  }
}
