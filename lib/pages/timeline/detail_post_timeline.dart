import 'package:flutter/material.dart';
import 'package:housepass/pages/timeline/widgets/detail_timeline_comentarios_widget.dart';
import 'package:housepass/pages/timeline/widgets/detail_timeline_likes_widget.dart';
import 'package:housepass/widgets/timeline/timeline_likes_views_shares_comments.dart';
import 'package:housepass/widgets/timeline/timeline_person_info.dart';
import 'package:housepass/widgets/timeline/timeline_post_image_widget.dart';
import 'package:housepass/widgets/timeline/timeline_post_imovel_widget.dart';
import 'package:housepass/widgets/timeline/timeline_post_text_widget.dart';

class DetailPostTimeline extends StatefulWidget {

  final String typePost;

  DetailPostTimeline(this.typePost);

  @override
  _DetailPostTimelineState createState() => _DetailPostTimelineState();
}

class _DetailPostTimelineState extends State<DetailPostTimeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detalhes Post'),
        ),
        body: Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(0),
            child: ListView(
              children: [
                TimelineInfoPersonPostWidget(),
                TimelinePostTextDescriptionWidget(widget.typePost),
                _loadPostByType(widget.typePost),
                TimelinePostQuantLikesViewsSharesCommentsWidget(),
                DetailTimelineLikesWidget(),
                SizedBox(height: 10,),
                DetailTimelineComentarioWidget()
              ],
            )));
  }

  _loadPostByType(String typePost) {
    if ( typePost == 'imovel'){
      return Container (
        child:TimelinePostImovelDescriptionWidget(),
      );
    }
    else if ( typePost == 'image'){
      return Container (
        child:TimelinePostImageDescriptionWidget(),
      );
    }
    else if ( typePost == 'text'){
      return Container ();
    }
  }
}
