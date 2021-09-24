import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vibe_clone/controller/BottomNav.ctrl.dart';
import 'package:vibe_clone/pages/chart/Chart.page.dart';
import 'package:vibe_clone/pages/dashboard/Dashboard.page.dart';
import 'package:vibe_clone/pages/dashboard/blank.page.dart';
import 'package:vibe_clone/pages/search/Search.page.dart';
import 'package:vibe_clone/pages/storage/Storage.page.dart';
import 'package:vibe_clone/pages/video/Video.page.dart';

class BottomNavPage extends StatelessWidget {
  final BottomNavCtrl _bottomNavCtrl = Get.put(BottomNavCtrl());
  double iconSize = 35.0;

  List<Widget> mainPages = [
    BlankPage(),
    ChartPage(),
    VideoPage(),
    SearchPage(),
    StoragePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => mainPages.elementAt(_bottomNavCtrl.selectIndex),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Color(0xffFE004F),
          unselectedItemColor: Color(0xff676767),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) => _bottomNavCtrl.selectIndex = index,
          currentIndex: _bottomNavCtrl.selectIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.water_damage,
                size: iconSize,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.emoji_events_outlined,
                size: iconSize,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.live_tv,
                size: iconSize,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: iconSize,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: iconSize,
              ),
              label: "",
            )
          ],
        ),
      ),
    );
  }
}
