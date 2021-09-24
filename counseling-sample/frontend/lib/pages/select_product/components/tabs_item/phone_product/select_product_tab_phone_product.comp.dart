import 'package:flutter/material.dart';
import 'package:frontend/pages/select_product/components/tabs_item/common/select_product_tab_item.comp.dart';
import 'package:frontend/pages/teacher_detail/components/teacher_detail_dot_text_row.comp.dart';

class SelectProductTabPhoneProductComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      itemBuilder: (context, index) {
        if (index == 0) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '텍스트 테라피는 이런분들깨 추천해요!',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 2.0,
              ),
              TeacherDetailDotTextRowComp(
                content: '채팅으로 이야기하는게 편해요.',
              ),
              TeacherDetailDotTextRowComp(
                content: '상담 받은 내용을 나중에 다시 보고 싶어요.',
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: 1,
              ),
              Text(
                '상담권 결제 후 상담사와 일정을 조율하여 예약 상담으로 진행됩니다.',
                style: TextStyle(fontSize: 12.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                '추천 프로그램',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          );
        } else {
          return SelectProductTabItemComp();
        }
      },
    );
  }
}
