import 'package:flutter/material.dart';

import 'payment_complete_section_item.comp.dart';

class PaymentCompleteOrderDetailComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.0,
        ),
        Text(
          '주문 상세 정보',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        Divider(
          thickness: 1,
        ),
        PaymentCompleteSectionItemComp(
          title: '상품명:',
          content: '전화상담 10주 프로그램 50분권',
        ),
        PaymentCompleteSectionItemComp(
          title: '상품금액:',
          content: '500,000원',
        ),
        PaymentCompleteSectionItemComp(
          title: '할인금액:',
          content: '35,000원',
        ),
        PaymentCompleteSectionItemComp(
          title: '포인트 사용:',
          content: '5,000원',
        ),
        PaymentCompleteSectionItemComp(
          title: '총계:',
          content: '465,000원',
        ),
        PaymentCompleteSectionItemComp(
          title: '결제방법:',
          content: '카드결제',
        ),
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 30.0,
        ),
        Text(
          '결제 정보',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20.0,
          ),
        ),
        Divider(
          thickness: 1,
        ),
        PaymentCompleteSectionItemComp(
          title: '승인번호:',
          content: '3246432543',
        ),
        PaymentCompleteSectionItemComp(
          title: '결제금액:',
          content: '465,000원',
        ),
        PaymentCompleteSectionItemComp(
          title: '영수증:',
          content: '영수증 출력',
        ),
        Divider(
          thickness: 1,
        ),
      ],
    );
  }
}
