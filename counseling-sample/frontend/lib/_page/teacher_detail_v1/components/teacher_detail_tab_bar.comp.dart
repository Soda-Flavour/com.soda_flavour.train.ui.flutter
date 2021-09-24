import 'package:flutter/material.dart';

class TeacherDetailTabBarComp extends StatelessWidget {
  final TabController tabController;
  final Function onTap;

  const TeacherDetailTabBarComp({Key key, this.tabController, this.onTap})
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
            'All',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Account ',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Loan',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Service',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Tab(
          child: Text(
            'Alliance',
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }
}
