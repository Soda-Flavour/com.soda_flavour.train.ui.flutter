import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:frontend/_page/counseling_chat_room/counseling_chat_room.page.dart';
import 'package:frontend/models/data.dart';
import 'package:get/get.dart';

class CounselingDetailRowItemComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '상담방',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notification_important,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(
                          '새로운 상담내용이 있습니다.',
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              FlatButton(
                color: Colors.blue,
                child: Text('참여하기'),
                onPressed: () {
                  Get.to(CounselingChatRoomPage(),
                      arguments: Data.chatRooms[0]);
                },
              )
            ],
          ),
        ),
        DottedLine()
      ],
    );
  }
}
