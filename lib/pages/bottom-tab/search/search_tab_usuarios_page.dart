import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/search/widget/usuarios/button_search_usuarios_page_widget.dart';
import 'package:housepass/pages/bottom-tab/search/widget/usuarios/filter_tipo_usuario_page.dart';

class SearchTabUsuariosPage extends StatefulWidget {
  @override
  _SearchTabUsuariosPageState createState() => _SearchTabUsuariosPageState();
}

class _SearchTabUsuariosPageState extends State<SearchTabUsuariosPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ButtonSearchUsuariosPageWidget(),
        FilterTipoUsuarioWidgetPage()
      ],
    );
  }
}
