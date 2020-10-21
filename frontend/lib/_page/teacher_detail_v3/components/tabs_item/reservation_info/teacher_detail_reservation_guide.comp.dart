import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/teacher_detail_dot_text_row.comp.dart';

class TeacherDetailReservationGuideComp extends StatelessWidget {
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
                  "상담 예약 안내",
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
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Column(
                children: [
                  TeacherDetailDotTextRowComp(
                    content: '상담 예약은 상담권 구매 후 상담방이 연결되면 상담사와 일정을 협의하여 확정합니다.',
                  ),
                  TeacherDetailDotTextRowComp(
                    content: '다른 상담 진행 중인 경우 첫응대까지 시간이 소요될 수 있습니다.',
                  ),
                  TeacherDetailDotTextRowComp(
                    content:
                        '원하는 일정이 맞지 않는 경우, 일대일 문의에 예약 희망 시간을 남겨주세요. 원하는 시간에 최대한 상담받으실 수 있도록 도움드리겠습니다.',
                  ),
                  TeacherDetailDotTextRowComp(
                    content:
                        '지금 빠르게 상담이 필요할 땐 바로상담을 이용해주세요. 상담사찾기 메뉴에서 바로상담 배너를 선택하면 지금 상담 가능한 상담사님을 확인하실 수 있습니다.',
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
