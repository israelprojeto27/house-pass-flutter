// @dart=2.9
import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/message_page.dart';
import 'package:housepass/routes/routes.dart';
import 'package:housepass/widgets/bottom_navigation_bar_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BottomNavigationBarApp(),
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      routes: {
          Routes.messages: (context) => MessagePage()
      }
    );
  }

}
