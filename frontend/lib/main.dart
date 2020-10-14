import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/cubits/main_bottom_navigator.cubit.dart';

import 'package:get/get.dart';

import 'pages/join/join.page.dart';
import 'pages/login/login.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainBottomNavigatorCubit>(
          create: (context) => MainBottomNavigatorCubit(),
        )
      ],
      child: GetMaterialApp(
        title: 'Counseing',
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
