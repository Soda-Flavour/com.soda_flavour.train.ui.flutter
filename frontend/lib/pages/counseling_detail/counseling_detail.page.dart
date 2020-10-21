import 'package:flutter/material.dart';
import 'package:frontend/pages/counseling_detail/components/counseling_detail_app_bar.comp.dart';
import 'package:frontend/pages/counseling_detail/components/counseling_detail_button_item.comp.dart';
import 'package:frontend/pages/counseling_detail/components/counseling_detail_row_item.comp.dart';
import 'package:frontend/pages/counseling_detail/components/counseling_detail_teacher_info.comp.dart';
import 'package:frontend/pages/counseling_detail/components/counseling_detail_title_item.comp.dart';
import 'package:frontend/pages/counseling_reservation/counseling_reservation.page.dart';
import 'package:frontend/pages/counseling_reservation_history/counseling_reservation_history.page.dart';
import 'package:get/get.dart';

class CounselingDetailPage extends StatelessWidget {
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
            child: CustomScrollView(
              key: PageStorageKey<String>("counseling_detail"),
              slivers: [
                SliverAppBar(
                  titleSpacing: 10,
                  title: CounselingDetailAppBarComp(),
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: true,
                  leading: BackButton(
                    color: Colors.black,
                  ),
                  elevation: 0.0,
                  pinned: true,
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15.0),
                  sliver: SliverToBoxAdapter(
                    child: CounselingDetailTeacherInfoComp(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      Text(
                        '문자상담',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  sliver: SliverToBoxAdapter(
                      child: CounselingDetailTitleItemComp()),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  sliver:
                      SliverToBoxAdapter(child: CounselingDetailRowItemComp()),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  sliver: SliverToBoxAdapter(
                    child: CounselingDetailButtonComp(
                      btnText: '예약내역보기',
                      onTap: () {
                        Get.to(CounselingReservationHistoryPage());
                      },
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(top: 40.0),
                  sliver: SliverToBoxAdapter(
                    child: Row(
                      children: [
                        Text(
                          '전화상담',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  sliver: SliverToBoxAdapter(
                      child: CounselingDetailTitleItemComp()),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  sliver:
                      SliverToBoxAdapter(child: CounselingDetailRowItemComp()),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  sliver: SliverToBoxAdapter(
                    child: CounselingDetailButtonComp(
                      btnText: '예약내역보기',
                      onTap: () {
                        Get.to(CounselingReservationHistoryPage());
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
