import 'package:flutter/material.dart';
import 'package:housepass/pages/imovel/create/create_imovel_step_one_page.dart';
import 'package:housepass/pages/timeline/photo/add_photo_timeline_page.dart';
import 'package:housepass/pages/timeline/text/add_text_timeline_page.dart';
import 'package:housepass/pages/user/event/create_event_user_page.dart';
import 'package:housepass/widgets/timeline/timeline_base_post.dart';

class PublishPage extends StatefulWidget {
  @override
  _PublishPageState createState() => _PublishPageState();
}

class _PublishPageState extends State<PublishPage> {

  TextStyle _styleButtonFilterSelected = TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18);
  TextStyle _styleButtonFilterUnSelected = TextStyle(color: Colors.white, fontSize: 14);

  TextStyle _styleButtonTodas = TextStyle(color: Colors.white, fontSize: 14);
  TextStyle _styleButtonImoveis = TextStyle(color: Colors.white, fontSize: 14);
  TextStyle _styleButtonFotos = TextStyle(color: Colors.white, fontSize: 14);
  TextStyle _styleButtonTextos = TextStyle(color: Colors.white, fontSize: 14);

  int indexButton = 1;

  @override
  void initState() {
    _styleButtonTodas = _styleButtonFilterSelected;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Text('Todas', style: _styleButtonTodas),
                  onPressed: () {
                    setState(() {
                      indexButton = 1;
                      _updateStyleButtonsFilters(indexButton);
                    });
                  },
                ),
                ElevatedButton(
                  child: Text('Imóveis',  style: _styleButtonImoveis),
                  onPressed: () {
                    setState(() {
                      indexButton = 2;
                      _updateStyleButtonsFilters(indexButton);
                    });
                  },
                ),
                ElevatedButton(
                  child: Text('Fotos',  style: _styleButtonFotos),
                  onPressed: () {
                    setState(() {
                      indexButton = 3;
                      _updateStyleButtonsFilters(indexButton);
                    });
                  },
                ),
                ElevatedButton(
                  child: Text('Textos',  style: _styleButtonTextos),
                  onPressed: () {
                    setState(() {
                      indexButton = 4;
                      _updateStyleButtonsFilters(indexButton);
                    });
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(bottom: 5),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                Column(
                    children:[
                      BasePost('text'),
                      BasePost('image'),
                      BasePost('imovel'),
                    ]
                ),
              ],
            ),
          ),

        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          _configurandoModalBottomSheet(context);
        },
        child: new Icon(Icons.add),
      ),
    );
  }

  void _configurandoModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: new Icon(Icons.house),
                    title: new Text('Adicionar Imóvel'),
                    onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    CreateImovelStepOnePage()),
                          ),
                        }),
                ListTile(
                  leading: new Icon(Icons.camera),
                  title: new Text('Adicionar Foto'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AddPhotoTimelinePage()),
                    ),
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.edit),
                  title: new Text('Escrever uma Publicação'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              AddTextTimelinePage()),
                    ),
                  },
                ),
                ListTile(
                  leading: new Icon(Icons.event),
                  title: new Text('Criar Evento'),
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              CreateEventUserPage()),
                    ),
                  },
                ),
              ],
            ),
          );
        });
  }
  void _updateStyleButtonsFilters(int index) {
    if (index == 1){
      _styleButtonTodas   = _styleButtonFilterSelected;
      _styleButtonImoveis = _styleButtonFilterUnSelected;
      _styleButtonFotos   = _styleButtonFilterUnSelected;
      _styleButtonTextos  = _styleButtonFilterUnSelected;
    }
    else if (index == 2){
      _styleButtonTodas   = _styleButtonFilterUnSelected;
      _styleButtonImoveis = _styleButtonFilterSelected;
      _styleButtonFotos   = _styleButtonFilterUnSelected;
      _styleButtonTextos  = _styleButtonFilterUnSelected;
    }
    else if (index == 3){
      _styleButtonTodas   = _styleButtonFilterUnSelected;
      _styleButtonImoveis = _styleButtonFilterUnSelected;
      _styleButtonFotos   = _styleButtonFilterSelected;
      _styleButtonTextos  = _styleButtonFilterUnSelected;
    }
    else if (index == 4){
      _styleButtonTodas   = _styleButtonFilterUnSelected;
      _styleButtonImoveis = _styleButtonFilterUnSelected;
      _styleButtonFotos   = _styleButtonFilterUnSelected;
      _styleButtonTextos  = _styleButtonFilterSelected;
    }
  }
}


