import 'package:flutter/material.dart';
import 'package:frontend/pages/select_product/components/select_product_app_bar.comp.dart';
import 'package:frontend/pages/select_product/components/select_product_main_info.comp.dart';
import 'package:frontend/pages/select_product/components/select_product_tab_bar.comp.dart';
import 'package:frontend/pages/select_product/components/tabs_item/meet_product/select_product_tab_meet_product.comp.dart';
import 'package:frontend/pages/select_product/components/tabs_item/phone_product/select_product_tab_phone_product.comp.dart';
import 'package:frontend/pages/select_product/components/tabs_item/text_product/select_product_tab_text_product.comp.dart';

class SelectProductPage extends StatefulWidget {
  const SelectProductPage({Key key}) : super(key: key);

  @override
  _SelectProductPageState createState() => _SelectProductPageState();
}

class _SelectProductPageState extends State<SelectProductPage>
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
          constraints: BoxConstraints(
            maxWidth: 632,
          ),
          child: NestedScrollView(
            controller: _scrollController,
            headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  titleSpacing: 10,
                  title: SelectProductAppBarComp(),
                  backgroundColor: Colors.white,
                  leading: BackButton(
                    color: Colors.black,
                  ),
                  automaticallyImplyLeading: true,
                  elevation: 0.0,
                  pinned: true,
                ),
                SliverToBoxAdapter(
                  child: SelectProductMainInfoComp(),
                ),
                SliverToBoxAdapter(
                  child: Divider(
                    thickness: 1.0,
                  ),
                ),
                SliverAppBar(
                  titleSpacing: 0,
                  title: SelectProductTabBarComp(
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
                SelectProductTabTextProductComp(),
                SelectProductTabPhoneProductComp(),
                SelectProductTabMeetProductComp(),
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
