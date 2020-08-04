import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:counseling_flutter/src/helper/AppConfig.dart';
import 'package:counseling_flutter/pages/BottomNaviController.dart';

const AppColors = {
  "appbar_title": Color(0xff000000),
  "appbar_background": Color(0xffffffff),
  "appbar_icon": Color(0xff000000),
  "appbar_border": Color(0xffE2E2E2),
  "btn_border_gray": Color(0xffE2E2E2),
};

class MyApp extends StatelessWidget {
  final appConfiguration;
  MyApp(this.appConfiguration);

  static const AppColors = {
    "main": Color(0xffffffff),
    "appbar_background": Color(0xffffffff),
  };

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppConfig>.value(
          value: appConfiguration,
        ),
      ],
      child: MaterialApp(
        title: 'Counsling',
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
          BottomNaviController.routeName: (context) => BottomNaviController(),
        },
      ),
    );
  }
}
