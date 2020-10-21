import 'package:flutter/material.dart';

class CounselingReservationHistoryTabBarComp extends StatelessWidget {
  final TabController tabController;
  final Function onTap;

  const CounselingReservationHistoryTabBarComp(
      {Key key, this.tabController, this.onTap})
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
            '지나간 상담',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            '다가오는 상담',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
