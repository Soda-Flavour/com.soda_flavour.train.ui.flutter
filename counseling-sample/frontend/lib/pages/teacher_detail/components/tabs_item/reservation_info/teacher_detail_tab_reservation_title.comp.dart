import 'package:flutter/material.dart';

class TeacherDetailTabReservationTitleComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 18.0,
        ),
        Text(
          '텍스트테라피 / 전화상담',
          style: TextStyle(
              color: Color(0xFF058DFC),
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text('앱을 통해 진행하는 비대면 심리상담입니다.'),
      ],
    );
  }
}
