import 'package:flutter/material.dart';
import 'package:frontend/pages/counseling_reservation_history/components/counseling_reservation_history_app_bar.comp.dart';
import 'package:frontend/pages/counseling_reservation_history/components/counseling_reservation_history_tab_bar.comp.dart';
import 'package:frontend/pages/counseling_reservation_history/components/counseling_reservation_tab_coming_consultation.comp.dart';
import 'package:frontend/pages/counseling_reservation_history/components/counseling_reservation_tab_past_consultation.comp%20copy.dart';

import 'package:get/get.dart';

class CounselingReservationHistoryPage extends StatefulWidget {
  @override
  _CounselingReservationHistoryPageState createState() =>
      _CounselingReservationHistoryPageState();
}

class _CounselingReservationHistoryPageState
    extends State<CounselingReservationHistoryPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _tabController = TabController(length: 2, vsync: this);
    // _scrollController.addListener(() {
    //   _onScroll();
    // });
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            constraints: BoxConstraints(
              maxWidth: 632,
            ),
            child: NestedScrollView(
              key: PageStorageKey<String>("teacher_detail"),
              controller: _scrollController,
              headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    titleSpacing: 10,
                    title: CounselingReservationHistoryAppBarComp(),
                    backgroundColor: Colors.white,
                    leading: BackButton(
                      color: Colors.black,
                    ),
                    automaticallyImplyLeading: true,
                    elevation: 0.0,
                    pinned: true,
                  ),
                  SliverAppBar(
                    titleSpacing: 0,
                    title: CounselingReservationHistoryTabBarComp(
                      tabController: _tabController,
                      // onTap: _onTabToScroll,
                    ),
                    backgroundColor: Colors.white,
                    automaticallyImplyLeading: false,
                    elevation: 0.0,
                    pinned: true,
                  ),
                ];
              },
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: <Widget>[
                  CounselingReservationHistoryTabPastConsultationComp(),
                  CounselingReservationHistoryTabComingConsultationComp(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
