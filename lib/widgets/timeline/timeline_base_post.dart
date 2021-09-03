import 'package:flutter/material.dart';
import 'package:housepass/widgets/timeline/timeline_post_image_widget.dart';
import 'package:housepass/widgets/timeline/timeline_post_imovel_widget.dart';
import 'timeline_likes_views_shares_comments.dart';
import 'timeline_person_info.dart';
import 'timeline_post_text_widget.dart';

class BasePost extends StatelessWidget {
  final String typePost;
  BasePost(this.typePost);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          TimelineInfoPersonPostWidget(),
          TimelinePostTextDescriptionWidget(),
          _loadPostByType(typePost),
          TimelinePostQuantLikesViewsSharesCommentsWidget()
        ],
      ),
    );
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
