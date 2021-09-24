import 'package:flutter/material.dart';
import 'package:frontend/models/data.dart';
import 'package:frontend/pages/counseling_chat_room/counseling_chat_room.page.dart';
import 'package:frontend/pages/counseling_list/components/chat_room_list_ltem.dart';
import 'package:frontend/pages/counseling_list/components/counseling_app_bar.comp.dart';

import 'package:frontend/utils/constants.dart';
import 'package:get/get.dart';

class CounselingListPage extends StatelessWidget {
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
              key: PageStorageKey<String>("나의상담"),
              slivers: [
                SliverAppBar(
                  titleSpacing: 10,
                  title: CounselingAppBarComp(),
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: false,
                  elevation: 0.0,
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(CounselingChatRoomPage(),
                            arguments: Data.chatRooms[index]);
                      },
                      child: ChatRoomListItem(
                        chatRoom: Data.chatRooms[index],
                      ),
                    );
                  }, childCount: Data.chatRooms.length),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
