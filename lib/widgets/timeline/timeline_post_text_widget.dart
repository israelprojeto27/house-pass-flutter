import 'package:flutter/material.dart';
import 'package:housepass/pages/timeline/detail_post_timeline.dart';


class TimelinePostTextDescriptionWidget extends StatefulWidget {

  final String typePost;

  const TimelinePostTextDescriptionWidget(this.typePost);

  @override
  _TimelinePostTextDescriptionWidgetState createState() => _TimelinePostTextDescriptionWidgetState();
}

class _TimelinePostTextDescriptionWidgetState extends State<TimelinePostTextDescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 12),
      padding: EdgeInsets.all(0),
      width:  MediaQuery.of(context).size.width,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPostTimeline(widget.typePost)),
          );
        },
        child: Text(
          'Novos empreendimentos de luxo vão ser lançados em breve na região da Barra da tijuca e recreio',
          style: Theme.of(context).textTheme.body1,
          maxLines: 3,
        ),
      ),
    );
  }
}


