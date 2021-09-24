import 'package:flutter/material.dart';
import 'package:frontend/pages/notification/components/notification_item.comp.dart';

class NotificationListComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '새로운 알림',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          NotificationItemComp(
            title: '상담 알림',
            content: "김하연 상담사님과의 상담이 오늘있습니다. 시간을 확인해주세요",
            icon: Icons.mail_outline,
            date: '2020.3.23',
          ),
          SizedBox(
            height: 20,
          ),
          NotificationItemComp(
            title: '남은 상담기한',
            content: "남은 상담회차가 4회 남았습니다. 해당 상담은 2020.9.30일 이후로는 사용하실수 없습니다.",
            icon: Icons.add_alert,
            date: '2020.3.23',
          ),
          SizedBox(
            height: 20,
          ),
          NotificationItemComp(
            title: '상담 종료',
            content: "상담이 종료되었습니다.",
            icon: Icons.notifications_active_outlined,
            date: '2020.3.23',
          ),
        ],
      ),
    );
  }
}
