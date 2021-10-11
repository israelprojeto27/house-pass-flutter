import 'package:flutter/material.dart';
import 'package:housepass/widgets/timeline/timeline_post_comments_page.dart';
import 'package:housepass/widgets/timeline/timeline_post_share_page.dart';

class TimelinePostQuantLikesViewsSharesCommentsWidget extends StatefulWidget {
  @override
  _TimelinePostQuantLikesViewsSharesCommentsWidgetState createState() => _TimelinePostQuantLikesViewsSharesCommentsWidgetState();
}

class _TimelinePostQuantLikesViewsSharesCommentsWidgetState extends State<TimelinePostQuantLikesViewsSharesCommentsWidget> {

  Color colorLike = Colors.grey;
  bool isLikeClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      padding: EdgeInsets.only(bottom: 10),
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Container(
            height: 38,
            child: ListTile(
              leading: Container(
                height: 15,
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.thumb_up_alt,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "120K likes",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.visibility,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "250 views",
                      style: TextStyle(fontSize: 12),
                    ),

                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.forum,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "150 comments",
                      style: TextStyle(fontSize: 12),
                    ),

                  ],
                ),
              ),
            ),
          ),
          Divider(
            endIndent: 19,
            indent: 19,
            color: Colors.grey,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    if (isLikeClicked){
                      isLikeClicked = false;
                      this.colorLike = Colors.grey;
                    }
                    else {
                      isLikeClicked = true;
                      this.colorLike = Colors.black;
                    }
                  });
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      child: Icon(
                        Icons.thumb_up_alt,
                        color: colorLike,
                        size: 16,
                      ),

                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Like",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              GestureDetector(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.forum,
                      color: Colors.grey,
                      size: 16,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Comment",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TimelinePostCommentsPage('image')),
                  );
                },
              ),
              GestureDetector(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.share,
                      color: Colors.grey,
                      size: 16,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Share",
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TimelinePostSharePage('image')),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
