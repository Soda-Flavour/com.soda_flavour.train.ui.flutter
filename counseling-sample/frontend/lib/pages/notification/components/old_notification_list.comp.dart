import 'package:flutter/material.dart';
import 'package:frontend/pages/notification/components/notification_item.comp.dart';

class OldNotificationListComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '확인한 알림',
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
            title: '상담 종료',
            content: "모든 상담회차가 종료되었습니다. 상담사님 리뷰를 작성해주세요.",
            icon: Icons.notifications_active_outlined,
            date: '2020.10.13',
          ),
          SizedBox(
            height: 20,
          ),
          NotificationItemComp(
            title: '결제 알림',
            content: "20회 상품권 결제가 완료되었습니다.",
            icon: Icons.add_alert,
            date: '2020.10.10',
          ),
          SizedBox(
            height: 20,
          ),
          NotificationItemComp(
            title: '상담알림',
            content: "김하연 상담사님과 함께하는 상담이 오늘 있습니다.",
            icon: Icons.notifications_active_outlined,
            date: '2020.10.10',
          ),
        ],
      ),
    );
  }
}
