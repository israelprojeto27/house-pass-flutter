import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/search/widget/button_search_page_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_acao_imovel_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_price_search_page_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_quant_items_search_page_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_tipo_imovel_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/filter_area_search_page.dart';

class SearchPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 8),
          child: ButtonSearchPageWidget(),
        ),
        FilterPriceSearchPageWidget(),
        FilterTipoAcaoWidget(),
        FilterTipoImovelWidget(),
        FilterQuantItemsSearchPage(),
        FilterAreaSearchPage(),

      ],
    ));
  }
}
