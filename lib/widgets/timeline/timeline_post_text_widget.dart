import 'package:flutter/material.dart';

class TimelinePostTextDescriptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 12),
      padding: EdgeInsets.all(0),
      width:  MediaQuery.of(context).size.width,
      child: Text(
        'Novos empreendimentos de luxo vão ser lançados em breve na região da Barra da tijuca e recreio',
        style: Theme.of(context).textTheme.body1,
        maxLines: 3,
      ),
    );
  }
}
