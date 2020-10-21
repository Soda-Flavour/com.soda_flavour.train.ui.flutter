import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/tabs_item/reservation_info/teacher_detail_reservation_step_item.comp.dart';

class TeacherDetailReservationStepComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10.0,
          right: 10.0,
          top: 30,
          bottom: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "텍스트테라피 / 전화상담 진행 과정",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 7.0,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 22.0,
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                direction: Axis.horizontal,
                spacing: 20.0,
                runSpacing: 30.0,
                children: [
                  TeacherDetailReservationStepItemComp(
                    icon: Icons.credit_card,
                    content: '상담신청 후 상담권결제',
                  ),
                  TeacherDetailReservationStepItemComp(
                    icon: Icons.calendar_today,
                    content: '상담방에서 일정예약',
                  ),
                  TeacherDetailReservationStepItemComp(
                    icon: Icons.speaker_notes,
                    content: '예약일 상담방에서 상담시작',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
