import 'package:flutter/material.dart';
import 'package:frontend/_page/teacher_detail_v2/components/teacher_detail_Info.comp.dart';
import 'package:frontend/_page/teacher_detail_v2/components/teacher_detail_career.comp.dart';
import 'package:frontend/_page/teacher_detail_v2/components/teacher_detail_you_tube_player.comp.dart';

import 'package:frontend/pages/teacher_detail/components/teacher_detail_account_card.comp.dart';
import 'package:frontend/pages/teacher_detail/components/teacher_detail_app_bar.comp.dart';

import 'package:frontend/pages/teacher_detail/components/teacher_detail_loan_card.comp.dart';
import 'package:frontend/pages/teacher_detail/components/teacher_detail_main_info.comp.dart';
import 'package:frontend/pages/teacher_detail/components/teacher_detail_main_review.comp.dart';
import 'package:frontend/pages/teacher_detail/components/teacher_detail_tab_bar.comp.dart';

class TeacherDetailPage extends StatefulWidget {
  const TeacherDetailPage({Key key}) : super(key: key);

  @override
  _TeacherDetailPageState createState() => _TeacherDetailPageState();
}

class _TeacherDetailPageState extends State<TeacherDetailPage>
    with TickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  final infoKey = new GlobalKey();
  final accountKey = new GlobalKey();
  final loanKey = new GlobalKey();
  // final serviceKey = new GlobalKey();
  // final allianceKey = new GlobalKey();

  double adHeight = 0;
  double accountHeight = 0;
  double loanHeight = 0;
  // double serviceHeight = 0;
  // double allianceHeight = 0;
  bool isTabToScroll = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _tabController = TabController(length: 3, vsync: this);
    _scrollController.addListener(() {
      _onScroll();
    });
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
            child: CustomScrollView(
              key: PageStorageKey<String>("teacher_detail"),
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  titleSpacing: 10,
                  title: TeacherDetailAppBarComp(),
                  backgroundColor: Colors.white,
                  leading: BackButton(
                    color: Colors.black,
                  ),
                  automaticallyImplyLeading: true,
                  elevation: 0.0,
                  pinned: true,
                ),
                SliverToBoxAdapter(
                  child: TeacherDetailMainInfoComp(),
                ),
                SliverToBoxAdapter(
                  child: TeacherDetailMainReviewComp(),
                ),
                SliverAppBar(
                  titleSpacing: 0,
                  title: TeacherDetailTabBarComp(
                    tabController: _tabController,
                    onTap: _onTabToScroll,
                  ),
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  elevation: 0.0,
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    TeacherDetailYouTubePlayerComp(),
                    TeacherDetailInfoComp(
                      key: infoKey,
                    ),
                    TeacherDetailCareerComp(),
                    // TeacherDetailAccountCardcomp(
                    //   key: accountKey,
                    // ),
                    // TeacherDetailLoanCardComp(
                    //   key: loanKey,
                    // ),
                    // TeacherDetailServiceCardComp(
                    //   key: serviceKey,
                    // ),
                    // TeacherDetailAllianceCardComp(
                    //   key: allianceKey,
                    // ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onScroll() {
    if (isTabToScroll) return;

    if (infoKey.currentContext != null) {
      adHeight = infoKey.currentContext.size.height;
    }
    if (accountKey.currentContext != null) {
      accountHeight = accountKey.currentContext.size.height;
    }
    if (loanKey.currentContext != null) {
      loanHeight = loanKey.currentContext.size.height;
    }
    // if (serviceKey.currentContext != null) {
    //   serviceHeight = serviceKey.currentContext.size.height;
    // }
    // if (allianceKey.currentContext != null) {
    //   allianceHeight = allianceKey.currentContext.size.height;
    // }

    if (_scrollController.offset <= adHeight) {
      _tabController.animateTo(0,
          duration: const Duration(milliseconds: 0), curve: Curves.linear);
    } else if (_scrollController.offset > adHeight &&
        _scrollController.offset <= adHeight + accountHeight) {
      _tabController.animateTo(1,
          duration: const Duration(milliseconds: 0), curve: Curves.linear);
    } else if (_scrollController.offset > adHeight + accountHeight &&
        _scrollController.offset <= adHeight + accountHeight + loanHeight) {
      if (_scrollController.offset >=
          _scrollController.position.maxScrollExtent) {
        _tabController.animateTo(2,
            duration: const Duration(milliseconds: 0), curve: Curves.linear);
      } else {
        _tabController.animateTo(1,
            duration: const Duration(milliseconds: 0), curve: Curves.linear);
      }
    }
  }

  void _onTabToScroll(int index) async {
    var keys = [infoKey, accountKey, loanKey];
    var previousIndex = _tabController.previousIndex;

    isTabToScroll = true;
    if (index == 0) {
      await _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    } else {
      if (previousIndex < index) {
        for (var i = previousIndex; i <= index; i++) {
          await _scrollController.position.ensureVisible(
            keys[i].currentContext.findRenderObject(),
            duration: const Duration(milliseconds: 100),
            curve: Curves.linear,
          );
        }
      } else {
        for (var i = previousIndex; i >= index; i--) {
          await _scrollController.position.ensureVisible(
            keys[i].currentContext.findRenderObject(),
            duration: const Duration(milliseconds: 100),
            curve: Curves.linear,
          );
        }
      }
    }
    isTabToScroll = false;
  }
}
