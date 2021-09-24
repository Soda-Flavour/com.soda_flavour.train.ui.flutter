import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:frontend/pages/counseling_reservation/counseling_reservation.page.dart';
import 'package:get/get.dart';

class CounselingDetailTitleItemComp extends StatelessWidget {
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
                    '50분 상담권',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 2.0,
                  ),
                  Text(
                    '5/7회 사용됨(예약완료 포함)',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              FlatButton(
                color: Colors.blue,
                child: Text('예약하기'),
                onPressed: () {
                  Get.to(CounselingReservationPage());
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
