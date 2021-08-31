import 'package:flutter/material.dart';

class TimelinePostQuantLikesViewsSharesCommentsWidget extends StatelessWidget {
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
                width: 300,
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.thumb_up_alt,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "120 likes",
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
                onTap: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.thumb_up_alt,
                      color: Colors.grey,
                      size: 16,
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
              Row(
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
              Row(
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
              )
            ],
          )
        ],
      ),
    );
  }
}
