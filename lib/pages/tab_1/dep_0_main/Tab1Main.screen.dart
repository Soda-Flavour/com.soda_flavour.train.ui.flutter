import 'dart:ffi';

import 'package:counseling_flutter/main.dart';
import 'package:flutter/material.dart';

class Tab1MainScreen extends StatefulWidget {
  static const String routeName = '/Tab1Main';

  @override
  _Tab1MainScreenState createState() => _Tab1MainScreenState();
}

class _Tab1MainScreenState extends State<Tab1MainScreen>
    with AutomaticKeepAliveClientMixin {
  bool loading = false;
  final List<String> entries = <String>['소다맛환타', '콜라', 'axa8380'];
  final List<String> racket = <String>[
    'Graphene 360+ Gravity Pro',
    'Graphene 360+ speed MP',
    'Blade V7 (18x20)'
  ];
  final List<String> tension = <String>['54-54', '50-48', '48-46'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: Container(
          alignment: FractionalOffset.centerRight,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppColors['appbar_border'],
                width: 1.5,
                style: BorderStyle.solid,
              ),
            ),
          ),
          child: AppBar(
            elevation: 0.0,
            bottomOpacity: 0.0,
            automaticallyImplyLeading: false, //왼쪽 화살표 뒤로 없애기
            backgroundColor: AppColors['appbar_background'],
            title: Text(
              '상담사 찾기',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                letterSpacing: 0.07,
                color: AppColors['appbar_title'],
                fontSize: 22.0,
              ),
            ),
            centerTitle: true,
            actions: <Widget>[
              new IconButton(
                icon: new Icon(
                  Icons.search,
                  size: 30.0,
                  color: AppColors['appbar_icon'],
                ),
                onPressed: () => Navigator.of(context).pop(null),
              ),
            ],
          ),
        ),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              // padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              // itemExtent: 90,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 35,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                  side: BorderSide(
                                    width: 1.4,
                                    color: AppColors['btn_border_gray'],
                                  ),
                                ),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Text(
                                          "고민키워드",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.07,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      child: new Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 20.0,
                                        color: const Color(0xff898989),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Container(
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                  side: BorderSide(
                                    width: 1.4,
                                    color: AppColors['btn_border_gray'],
                                  ),
                                ),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        child: Text(
                                          "상담 유형",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w600,
                                            letterSpacing: 0.07,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      child: new Icon(
                                        Icons.keyboard_arrow_down,
                                        size: 20.0,
                                        color: const Color(0xff898989),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              child: new Icon(
                                Icons.sort,
                                size: 30.0,
                                color: AppColors['appbar_icon'],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }
                if (index == 1) {
                  return Container(
                    color: const Color(0xffEBBBAE),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("심리 주치의"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("24시간 무제한 심리상담 "),
                              Text("가능한 상담사 보러가기 "),
                              new Icon(
                                Icons.keyboard_arrow_right,
                                size: 18.0,
                                color: AppColors['appbar_icon'],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }
                if (index == 2) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "검색 결과 50건",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.05,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4.0,
                                  ),
                                  new Icon(
                                    Icons.help_outline,
                                    size: 22.0,
                                    color: const Color(0xff848484),
                                  ),
                                ],
                              ),
                              Container(
                                // color: Colors.purple,

                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Text(
                                        "고민 연관순",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xffCDCDCD),
                                          letterSpacing: 0.05,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                          left: BorderSide(
                                            //                   <--- left side
                                            color: const Color(0xffCDCDCD),
                                            width: 1.5,
                                          ),
                                          right: BorderSide(
                                            //                    <--- top side
                                            color: const Color(0xffCDCDCD),
                                            width: 1.5,
                                          ),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8),
                                        child: Row(
                                          children: <Widget>[
                                            Text(
                                              "가격순",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xffCDCDCD),
                                                letterSpacing: 0.05,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            new Icon(
                                              Icons.unfold_more,
                                              size: 16.0,
                                              color: const Color(0xff848484),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8),
                                      child: Text(
                                        "만족도순",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.05,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }
                return Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () => {
                        // Navigator.of(context)
                        //     .pushNamed(RacketListScreen.routeName)
                      },
                      leading: AspectRatio(
                        aspectRatio: 1 / 1,
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            color: Colors.white,
                            image: new DecorationImage(
                              image: ExactAssetImage(
                                  'assets/images/profile_1.jpeg'),
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ),
                      // leading: CircleAvatar(
                      //   radius: 25.0,
                      //   backgroundImage:
                      //       new AssetImage('assets/images/profile_1.jpeg'),
                      //   backgroundColor: Colors.white,
                      // ),
                      title: Text(
                        '${entries[index]}',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '${racket[index]} \n(tension: ${tension[index]})',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                    Divider(
                      color: Colors.black38,
                    )
                  ],
                );
              }),
    );
  }
}
