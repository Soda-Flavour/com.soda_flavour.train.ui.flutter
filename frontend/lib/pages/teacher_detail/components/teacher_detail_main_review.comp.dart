import 'package:flutter/material.dart';

class TeacherDetailMainReviewComp extends StatelessWidget {
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
          left: 10,
          right: 10,
          top: 20,
          // bottom: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '★★★★★',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF058DFC),
                  ),
                ),
                Text(
                  'aaq9888님 / 2020.10.10 AM 12:40',
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFA1A6AC),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '마음 상태를 잘 알아봐 주시고 적절한 해결 방안도 제시해 주셔서좋아요. 상담 받고 많이 나아져서 잘 지내고 있습니다. 그래도 가끔 고민이 생기거나 제 마음을 잘 모르겠는 때 대화하고 나면 명료해져요. 혼자 고민하는 것보다 훨씬 건강한 해결 방법을 찾은 것 같아 너무 좋아요.',
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
