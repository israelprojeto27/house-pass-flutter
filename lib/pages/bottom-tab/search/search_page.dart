import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/search/search_tab_imoveis_page.dart';


class SearchPage extends StatefulWidget {

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
         toolbarHeight: 50.0,
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Imoveis',
              ),
              Tab(
                text: 'Usuários',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SearchTabImoveisPage(),
            Center(
              child: Text('Tela de usuarios'),
            ),
          ],
        )
      ),
    );
  }
}
