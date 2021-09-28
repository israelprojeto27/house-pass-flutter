import 'package:flutter/material.dart';
import 'package:housepass/models/imovel_model.dart';
import 'package:housepass/widgets/timeline/timeline_post_image_widget.dart';
import 'package:housepass/widgets/timeline/timeline_post_imovel_widget.dart';
import 'timeline_likes_views_shares_comments.dart';
import 'timeline_person_info.dart';
import 'timeline_post_text_widget.dart';

class BasePost extends StatefulWidget {

  final String typePost;
  BasePost(this.typePost);

  @override
  _BasePostState createState() => _BasePostState();
}

class _BasePostState extends State<BasePost> {

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
      child: Column(
        children: <Widget>[
          TimelineInfoPersonPostWidget(),
          TimelinePostTextDescriptionWidget(widget.typePost),
          _loadPostByType(widget.typePost),
          TimelinePostQuantLikesViewsSharesCommentsWidget()
        ],
      ),
    );
  }

  _loadPostByType(String typePost) {
    if ( typePost == 'imovel'){
      return Container (
        child:TimelinePostImovelDescriptionWidget(imovel: _loadDetailImovel()),
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

  ImovelModel _loadDetailImovel(){
    ImovelModel imovel = ImovelModel('1', 'assets/images/imovel/img_imovel_1.jpg', 'Luxo Palace Copacabana', 'Avenida Copacabana', 'R\$ 150.000,00', 'Apartamento', 'Venda', '500 m²', '1 Banheiro', '1 Garagem', '1 Suite');
    return imovel;
  }
}


