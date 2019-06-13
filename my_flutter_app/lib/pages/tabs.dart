import 'package:flutter/material.dart';
import 'tabs/HomePage.dart';
import 'tabs/CategoryPage.dart';
import 'tabs/SettingsPage.dart';
class Tabs extends StatefulWidget {
  Tabs({Key key}) : super(key: key);

  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _pageList = [
    HomePage(),
    CategoryPage(),
    SettingsPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("MyFlutterApp"),
        ),
        body: this._pageList[this._currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this._currentIndex,
          onTap: (int index) {
            setState(() {
              this._currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("Category")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text("Settings")
            )
          ],
        ),
      ),
    );
  }
}