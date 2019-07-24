import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CategoryPage.dart';
import 'HomePage.dart';
import 'NotificationPage.dart';
import 'MePage.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final _bottomNavigationColor = Colors.blue;
  int _currentIndex = 0;
  List<Widget> pages = List<Widget>();

  @override
  void initState() {
    super.initState();
    // pages..add(Home())..add(Category());
    pages.add(HomePage());
    pages.add(CategoryPage());
    pages.add(NotificationPage());
    pages.add(MePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shop,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'HOME',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Category',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_important,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Notification',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _bottomNavigationColor,
            ),
            title: Text(
              'Me',
              style: TextStyle(color: _bottomNavigationColor),
            ),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: pages[_currentIndex],
    );
  }
}
