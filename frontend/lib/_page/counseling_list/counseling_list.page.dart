import 'package:flutter/material.dart';
import 'package:frontend/models/data.dart';
import 'package:frontend/pages/counseling_chat_room/counseling_chat_room.page.dart';
import 'package:frontend/pages/counseling_list/components/chat_room_list_ltem.dart';

import 'package:frontend/utils/constants.dart';
import 'package:get/get.dart';

class CounselingListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        elevation: 0.0,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            '나의 상담',
            style: Constants.titleStyle,
          ),
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: Icon(Icons.add_circle_outline),
        //     color: Colors.white,
        //     iconSize: 30.0,
        //     onPressed: () {},
        //   )
        // ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 90),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: Theme.of(context).brightness == Brightness.light
                ? Constants.lightBGColors
                : Constants.darkBGColors,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  autofocus: false,
                  onChanged: (v) {},
                  decoration: InputDecoration(
                    contentPadding: new EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    focusColor: Colors.white,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Search',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: Constants.border,
                    disabledBorder: Constants.border,
                    border: Constants.border,
                    errorBorder: Constants.border,
                    focusedErrorBorder: Constants.border,
                    focusedBorder: Constants.border,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 80),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Get.to(CounselingChatRoomPage(),
                              arguments: Data.chatRooms[index]);
                        },
                        child: ChatRoomListItem(
                          chatRoom: Data.chatRooms[index],
                        ));
                  },
                  itemCount: Data.chatRooms.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
