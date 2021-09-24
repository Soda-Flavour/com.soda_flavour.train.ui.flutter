import 'package:flutter/material.dart';
import 'package:frontend/models/data.dart';
import 'package:frontend/pages/notification/components/notification_app_bar.comp.dart';
import 'package:frontend/pages/notification/components/notification_item.comp.dart';
import 'package:frontend/pages/notification/components/notification_list.comp.dart';
import 'package:frontend/pages/notification/components/old_notification_list.comp.dart';

import 'package:frontend/utils/constants.dart';

class NotificationPage extends StatelessWidget {
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
              key: PageStorageKey<String>("notification"),
              slivers: [
                SliverAppBar(
                  titleSpacing: 10,
                  title: NotificationAppBarComp(),
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  elevation: 0.0,
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    NotificationListComp(),
                    SizedBox(
                      height: 20,
                    ),
                    OldNotificationListComp(),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
