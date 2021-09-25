import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_basic_info_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_connections_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_conquers_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_corretores_by_imobiliaria_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_evalutations_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_events_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_imoveis_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_profile_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_recommendations_widget.dart';
import 'package:housepass/pages/bottom-tab/account/widgets/account_timeline_widget.dart';

class DetailUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes Usuario'),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AccountProfileWidget(false),
                  AccountBasicInformationWidget(),
                  AccountConnectionsWidget(),
                  AccountRecommendationsWidget(),
                  AccountEvaluationsWidget(),
                  AccountConquersWidget(), // vai ser usador por usuarios perfil corretor
                  AccountEventsWidget(), // vai ser usador por usuarios perfil corretor e imobiliaria
                  AccountCorretoresByImobiliariaWidget(), // usado por usuarios perfil imobiliaria para listar seus corretores
                  AccountImoveisWidget(), // usuarios por todos usuarios para listar os seus imoveis
                  AccountTimelineWidget()
                ],
              ),
            );
          })
    );
  }
}
