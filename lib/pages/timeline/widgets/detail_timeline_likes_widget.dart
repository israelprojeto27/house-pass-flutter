import 'package:flutter/material.dart';
import 'package:housepass/pages/user/detail/detail_user_page.dart';

class DetailTimelineLikesWidget extends StatefulWidget {
  @override
  _DetailTimelineLikesWidgetState createState() =>
      _DetailTimelineLikesWidgetState();
}

class _DetailTimelineLikesWidgetState extends State<DetailTimelineLikesWidget> {

  List<String> userImages = _loadImagesUser();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16, top: 20),
          child: Text(
            'Gostaram',
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          child: Container(
            padding: EdgeInsets.only(top: 5, bottom: 5, left: 16, right: 16),
            alignment: Alignment.centerRight,
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: ListView.builder(
              itemCount: userImages.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                String urlImage = userImages[index];
                return Container(
                  height: 50,
                  margin: EdgeInsets.only(right: 6),
                  padding: EdgeInsets.only(top: 10, bottom: 10, left: 5),
                  child: InkWell(
                    child: ClipOval(
                      child: Image.asset(urlImage),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DetailUserPage()),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  static List<String> _loadImagesUser() {

    List<String> list = [];
    String imageUrl = 'assets/images/user/img_veronica.jpg';
    list.add(imageUrl);

    imageUrl = 'assets/images/user/img_francine.jpg';
    list.add(imageUrl);

    imageUrl = 'assets/images/user/img_claudinha.jpg';
    list.add(imageUrl);

    imageUrl = 'assets/images/user/img_raphael.jpg';
    list.add(imageUrl);

    return list;
  }
}
