import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tennist_flutter/pages/account/FindPassword.screen.dart';
import 'package:tennist_flutter/pages/account/LogIn.screen.dart';
import 'package:tennist_flutter/pages/account/SignUp.screen.dart';
import 'package:tennist_flutter/pages/tab_1/dep_1_racket_list/RacketList.screen.dart';
import 'package:tennist_flutter/pages/tab_1/dep_2_racket_history/RacketHistory.screen.dart';
import 'package:tennist_flutter/pages/tab_1/dep_3_user_racket_history_detail/RacketHistoryDetail.screen.dart';
import 'package:tennist_flutter/pages/tab_3/manage_racket/detail_racket/detail_history/AddUserRacketHistory.screen.dart';
import 'package:tennist_flutter/pages/tab_3/manage_racket/detail_racket/detail_history/UserRacketHistory.screen.dart';
import 'package:tennist_flutter/pages/tab_3/profile/ProfileList.screen.dart';
import 'package:tennist_flutter/pages/tab_3/profile/basic_info/BasicInfoForm.screen.dart';
import 'package:tennist_flutter/pages/tab_3/profile/physical_info/PhysicalInfoForm.screen.dart';
import 'package:tennist_flutter/pages/tab_3/profile/tennis_info/TennisInfoForm.screen.dart';
import 'package:tennist_flutter/pages/tab_3/manage_racket/UserRacketList.screen.dart';
import 'package:tennist_flutter/pages/tab_3/manage_racket/add_racket/dep_1_select_racket_company/SelectRacketCompany.screen.dart';
import 'package:tennist_flutter/pages/tab_3/manage_racket/add_racket/dep_2_select_racket_version/SelectRacketVersion.screen.dart';
import 'package:tennist_flutter/pages/tab_3/manage_racket/add_racket/dep_3_select_racket/SelectRacket.screen.dart';
import 'package:tennist_flutter/pages/tab_3/setting/SettingList.screen.dart';

import 'package:tennist_flutter/src/helper/AppConfig.dart';
import 'package:tennist_flutter/pages/BottomNaviController.dart';
import 'package:tennist_flutter/src/provider/LoadingProvider.dart';

class MyApp extends StatelessWidget {
  final appConfiguration;

  MyApp(this.appConfiguration);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppConfig>.value(
          value: appConfiguration,
        ),
        ChangeNotifierProxyProvider<AppConfig, LoadingProvider>(
          create: (_) => LoadingProvider(),
          update: (_, appConfig, loadingNotifier) {
            return loadingNotifier;
          },
        ),
      ],
      child: MaterialApp(
        title: 'Tennist',
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xfff9fafb),
          // inputDecorationTheme: new InputDecorationTheme(
          //   labelStyle: new TextStyle(color: Color(0xff8A94A8)),
          // ),
        ),
        // theme: ThemeData(
        //   // primarySwatch: Colors.blue,
        //   visualDensity: VisualDensity.adaptivePlatformDensity,
        // ),
        home: BottomNaviController(),
        routes: {
          '/bottomNavi': (context) => BottomNaviController(),
          RacketListScreen.routeName: (context) => RacketListScreen(),
          RacketHistoryScreen.routeName: (context) => RacketHistoryScreen(),
          RacketHistoryDetailScreen.routeName: (context) =>
              RacketHistoryDetailScreen(),
          ProfileListScreen.routeName: (context) => ProfileListScreen(),
          UserRacketListScreen.routeName: (context) => UserRacketListScreen(),
          UserRacketHistoryScreen.routeName: (context) =>
              UserRacketHistoryScreen(),
          AddUserRacketHistoryScreen.routeName: (context) =>
              AddUserRacketHistoryScreen(),
          SettingListScreen.routeName: (context) => SettingListScreen(),
          SelectRacketCompanyScreen.routeName: (context) =>
              SelectRacketCompanyScreen(),
          SelectRacketVersionScreen.routeName: (context) =>
              SelectRacketVersionScreen(),
          SelectRacketScreen.routeName: (context) => SelectRacketScreen(),
          BasicInfoFormScreen.routeName: (context) => BasicInfoFormScreen(),
          PhysicalInfoFormScreen.routeName: (context) =>
              PhysicalInfoFormScreen(),
          TennisInfoFormScreen.routeName: (context) => TennisInfoFormScreen(),
          LogInScreen.routeName: (context) => LogInScreen(),
          SignUpScreen.routeName: (context) => SignUpScreen(),
          FindPasswordScreen.routeName: (context) => FindPasswordScreen(),
        },
      ),
    );
  }
}
