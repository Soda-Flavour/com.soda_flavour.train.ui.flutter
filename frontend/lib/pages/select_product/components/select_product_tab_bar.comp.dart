import 'package:flutter/material.dart';

class SelectProductTabBarComp extends StatelessWidget {
  final TabController tabController;
  final Function onTap;

  const SelectProductTabBarComp({Key key, this.tabController, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      onTap: onTap,
      controller: tabController,
      isScrollable: true,
      indicatorColor: Colors.black,
      indicatorWeight: 2.0,
      labelColor: Colors.black,
      unselectedLabelColor: Colors.grey,
      labelPadding: const EdgeInsets.symmetric(horizontal: 10.0),
      tabs: [
        Tab(
          child: Text(
            '텍스트 테라피',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            '전화상담',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            '대면상담',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        // Tab(
        //   child: Text(
        //     'Service',
        //     style: TextStyle(
        //       fontWeight: FontWeight.w600,
        //     ),
        //   ),
        // ),
        // Tab(
        //   child: Text(
        //     'Alliance',
        //     style: TextStyle(
        //       fontWeight: FontWeight.w600,
        //     ),
        //   ),
        // )
      ],
    );
  }
}
