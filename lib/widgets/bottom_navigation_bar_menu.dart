import 'package:flutter/material.dart';
import 'package:housepass/pages/bottom-tab/account_page.dart';
import 'package:housepass/pages/bottom-tab/notifications_page.dart';
import 'package:housepass/pages/bottom-tab/search_page.dart';
import 'package:housepass/pages/bottom-tab/timeline_page.dart';

import 'button_message_app_bar.dart';

class BottomNavigationBarApp extends StatefulWidget {
  const BottomNavigationBarApp({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarApp> createState() => _BottomNavigationBarApp();
}

class _BottomNavigationBarApp extends State<BottomNavigationBarApp> {
  int _selectedIndex = 0;

  final List<Widget> _pageOptions = <Widget>[
    TimelinePage(),
    SearchPage(),
    NotificationsPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: Text('HousePass'),
        actions: <Widget>[
          ButtoMessageAppBar(),
        ],
      ),
       body: Center (
         child: _pageOptions[_selectedIndex],
       ),
      bottomNavigationBar: BottomNavigationBar (
          items:  [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account'),
          ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
