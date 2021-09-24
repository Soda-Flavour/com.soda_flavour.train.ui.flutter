import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend/cubits/main_bottom_navigator.cubit.dart';

import 'package:frontend/pages/counseling_list/counseling_list.page.dart';
import 'package:frontend/pages/more/more.page.dart';
import 'package:frontend/pages/notification/notification.page.dart';
import 'package:frontend/pages/teacher_list/teacher_list.page.dart';

class MainBottomNavigatorPage extends StatelessWidget {
  int initPage;

  MainBottomNavigatorPage({int initPage = 0}) {
    this.initPage = initPage;
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBottomNavigatorCubit, int>(
      builder: (_, state) {
        if (initPage != 0) {
          state = 1;
          initPage = 0;
        }
        return WillPopScope(
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                _changeBottomNav(_, index);
              },
              currentIndex: state,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.apps,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  label: "",
                ),
              ],
            ),
            body: _buildBody(state),
          ),
        );
      },
    );
  }

  void _changeBottomNav(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.bloc<MainBottomNavigatorCubit>().getTeacherListPage();
        break;
      case 1:
        context.bloc<MainBottomNavigatorCubit>().getCounselingListPage();
        break;
      case 2:
        context.bloc<MainBottomNavigatorCubit>().getNotificationPage();
        break;
      case 3:
        context.bloc<MainBottomNavigatorCubit>().getMorePage();
        break;
    }
  }

  Widget _buildBody(index) {
    switch (index) {
      case 0:
        return TeacherListPage();
      case 1:
        return CounselingListPage();
      case 2:
        return NotificationPage();
      case 3:
        return MorePage();
    }
  }
}
