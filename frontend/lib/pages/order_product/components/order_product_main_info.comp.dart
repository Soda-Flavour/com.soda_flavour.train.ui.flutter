import 'package:flutter/material.dart';
import 'package:frontend/pages/order_product/components/order_product_check_text_row.comp.dart';

class OrderProductMainInfoComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.grey,
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 10,
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '[효과 UP]',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '전화상담 10주 프로그램 50분권',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '50분 X 10회',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  '유효기간ㅣ 결제 후 70일 이내',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
            Divider(
              thickness: 1,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  '추천대상',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                OrderProductCheckTextRowComp(content: '고민 기간이 1년 이상이에요.'),
                OrderProductCheckTextRowComp(
                    content: '더 이상 혼자 해결할 수 없어서 누군가의 도움이 필요해요.'),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  '상담권 소개',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  '10주 프로그램은 오랜 시간 동안 지속된 심리문제나 고민이 있으신 분들이 상담을 시작하기에 좋은 프로그램입니다. 가족문제나 자존가므 오랫동안 해결되지 않느 감정, 복잡한 문제들에 대해 근본적인 원인을 정리하여 원인을 정리하며 함께 문제를 해결해나갈 수 있습니다.',
                  style: TextStyle(height: 1.4),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
