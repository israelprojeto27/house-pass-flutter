import 'package:flutter/material.dart';
import 'package:housepass/models/imovel_model.dart';
import 'package:housepass/pages/messages/widgets/message_text_composer.dart';
import 'package:housepass/pages/timeline/widgets/detail_timeline_comentarios_widget.dart';
import 'package:housepass/widgets/timeline/timeline_person_info.dart';
import 'package:housepass/widgets/timeline/timeline_post_image_widget.dart';
import 'package:housepass/widgets/timeline/timeline_post_imovel_widget.dart';
import 'package:housepass/widgets/timeline/timeline_post_text_widget.dart';

class TimelinePostCommentsPage extends StatefulWidget {

  final String typePost;

  TimelinePostCommentsPage(this.typePost);

  @override
  _TimelinePostCommentsPageState createState() => _TimelinePostCommentsPageState();
}

class _TimelinePostCommentsPageState extends State<TimelinePostCommentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comentários Post')
      ),
      body: ListView(
        children: [
          TimelineInfoPersonPostWidget(),
          TimelinePostTextDescriptionWidget(widget.typePost),
          _loadPostByType(widget.typePost),
          Card(
            child: TextComposer('Digite um comentário aqui'),
            elevation: 8,
            margin: EdgeInsets.all(8),
          ),
          DetailTimelineComentarioWidget(),
        ],
      )
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
