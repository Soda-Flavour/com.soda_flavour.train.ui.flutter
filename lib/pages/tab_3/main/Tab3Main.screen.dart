import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:tennist_flutter/pages/tab_3/profile/ProfileList.screen.dart';
import 'package:tennist_flutter/pages/tab_3/manage_racket/UserRacketList.screen.dart';
import 'package:tennist_flutter/pages/tab_3/setting/SettingList.screen.dart';
import 'package:tennist_flutter/src/widget/NeedLoginPopup.dart';
import 'package:tennist_flutter/src/helper/ApiReciver.dart';
import 'package:tennist_flutter/src/helper/AuthHelper.dart';

class Tab3MainScreen extends StatefulWidget {
  static const String routeName = '/Tab3Main';

  @override
  _Tab3MainScreenState createState() => _Tab3MainScreenState();
}

class _Tab3MainScreenState extends State<Tab3MainScreen> {
  final storage = new FlutterSecureStorage();
  final isLogin = false;

  @override
  void initState() {
    super.initState();
    //TODO: 해당 응답이 3040번 에러이면 로그인이 안되어 있는 것이다. ==> 로그인 페이지 로딩
    // ApiReciver.POST(
    //     'http://localhost:3000/api/v1/auth/checkAccessToken', null, true);
  }

  Widget buildProfile() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: <Widget>[
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage:
                        new AssetImage('assets/images/profile_1.jpeg'),
                  ),
                  // CircleAvatar(
                  //   radius: 12.0,
                  //   backgroundColor: const Color(0xff48caf5),
                  //   backgroundImage: new AssetImage(
                  //     'assets/images/outline_create_white.png',
                  //   ),
                  // ),
                  CircleAvatar(
                    radius: 12,
                    backgroundColor: const Color(0xff48caf5),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/outline_create_white.png',
                        width: 18.0,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        child: Text(
                          '소다맛환타',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Container(
                          width: double.infinity,
                          child: Text(
                            'NTRP 2.5  BaseLiner',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: const Color(0xff141414),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 35.0),
                child: Text(
                  '마이페이지',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          // final item = snapshot.data[index];

          if (index == 0) {
            return buildProfile();
          }

          if (index == 1) {
            return Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Container(
                color: const Color(0xff004e80),
                width: double.infinity,
                height: 80.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            child: Text(
                              'NTRP',
                              style: TextStyle(
                                letterSpacing: .1,
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  '2.5',
                                  style: TextStyle(
                                    letterSpacing: .1,
                                    color: const Color(0xffd6d5d5),
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40.0, 6.0, 0, 0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            child: Text(
                              'STYLE',
                              style: TextStyle(
                                letterSpacing: 0.1,
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  'Baseliner',
                                  style: TextStyle(
                                    letterSpacing: .1,
                                    color: const Color(0xffd6d5d5),
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }

          if (index == 2) {
            return GestureDetector(
              onTap: () {
                NeedLoginPopup().showNeedLoginDialogBox(context);
                // Navigator.of(context).pushNamed(ProfileListScreen.routeName);
                print("Container was tapped");
              },
              child: Column(
                children: <Widget>[
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                  ),
                  Container(
                    height: 55,
                    color: Colors.white,
                    child: ListTile(
                      title: Text(
                        '프로필 관리',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                  Divider(
                    height: .1,
                    color: Colors.black38,
                  )
                ],
              ),
            );
          }
          if (index == 3) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(UserRacketListScreen.routeName);
                print("Container was tapped");
              },
              child: Column(
                children: <Widget>[
                  Container(
                    height: 55,
                    color: Colors.white,
                    child: ListTile(
                      title: Text(
                        '라켓 관리',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ],
              ),
            );
          }

          if (index == 4) {
            return Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(SettingListScreen.routeName);
                    print("Container was tapped");
                  },
                  child: Container(
                    height: 55,
                    alignment: Alignment.center,
                    color: Colors.white,
                    child: ListTile(
                      title: Text(
                        '설정',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Icon(Icons.keyboard_arrow_right),
                    ),
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
