import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class AddPhotoTimelinePage extends StatefulWidget {
  @override
  _AddPhotoTimelinePageState createState() => _AddPhotoTimelinePageState();
}

class _AddPhotoTimelinePageState extends State<AddPhotoTimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Publicar Foto'),
          actions: [
            ElevatedButton(
              child: Text('Publicar'),
              onPressed: ()  {
              },
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
              child: IconButton(
                  onPressed: () async{
                    print('clicou para abrir galeria ');
                    final ImagePicker _picker = ImagePicker();
                    final XFile? imgFile =
                    await _picker.pickImage(source: ImageSource.gallery);
                    if (imgFile == null) return;
                  },
                  icon: Icon(
                    Icons.photo_camera,
                    size: 100,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 6,
                    decoration: InputDecoration.collapsed(hintText: "Digite aqui o seu texto"),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
