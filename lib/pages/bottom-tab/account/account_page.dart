import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_connections_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_conquers_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_corretores_by_imobiliaria_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_evalutations_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_events_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_imoveis_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_profile_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_basic_info_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_recommendations_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_timeline_widget.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
      return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountProfileWidget(true),
            AccountBasicInformationWidget(),
            AccountConnectionsWidget(),
            AccountRecommendationsWidget(true),
            AccountEvaluationsWidget(),
            AccountConquersWidget(), // vai ser usador por usuarios perfil corretor
            AccountEventsWidget(), // vai ser usador por usuarios perfil corretor e imobiliaria
            _loadListCorretoresImobiliaria(),
           // AccountCorretoresByImobiliariaWidget(), // usado por usuarios perfil imobiliaria para listar seus corretores
            AccountImoveisWidget(), // usuarios por todos usuarios para listar os seus imoveis
            AccountTimelineWidget()
          ],
        ),
      );
    });
  }

  _loadListCorretoresImobiliaria() {
    bool isImobiliaria = true;
    if (isImobiliaria){
      return AccountCorretoresByImobiliariaWidget();
    }
    else {
      return Container();
    }
  }
}
