import 'package:flutter/material.dart';
import 'package:housepass/widgets/timeline/timeline_base_post.dart';

class AccountTimelineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "Publicações",
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Column(
              children:[
                BasePost(),
              ]
          ),
        ],
      ),
    );
  }
}
