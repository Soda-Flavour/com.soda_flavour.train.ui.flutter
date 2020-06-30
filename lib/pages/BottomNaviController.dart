import 'package:flutter/material.dart';
import 'package:tennist_flutter/pages/tab_1/main/Tab1Main.screen.dart';
import 'package:tennist_flutter/pages/tab_2/main/Tab2Main.screen.dart';
import 'package:tennist_flutter/pages/tab_3/main/Tab3Main.screen.dart';

class BottomNaviController extends StatefulWidget {
  static const String routeName = '/bottomNavi';
  @override
  _BottomNaviControllerState createState() => _BottomNaviControllerState();
}

class _BottomNaviControllerState extends State<BottomNaviController> {
  int _selectedIndex = 0;
  PageController pageController = PageController();

  void _onItemTapped(int index) {
    pageController.jumpToPage(index);
  }

  void _onPageChanged(int index) {
    setState(() => _selectedIndex = index);
  }

  final List<Widget> _widgets = <Widget>[
    Tab1MainScreen(),
    Tab2MainScreen(),
    Tab3MainScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_1),
            title: Text('Tab 1'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            title: Text('Tab 2'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_3),
            title: Text('Tab 3'),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.amber[100],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: _onPageChanged,
        children: _widgets,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
