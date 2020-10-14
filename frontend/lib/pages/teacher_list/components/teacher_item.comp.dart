import 'package:flutter/material.dart';

class TeacherItemComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFAE04B),
      ),
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://water-flavour.com/public/image/repo/face_1.png'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Spacer(),

                      Text(
                        '김진영 상담사 ★',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '나를 안아줄때 행복이내 것이 됩니다.',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.more_vert,
                  size: 25,
                  color: Colors.black.withOpacity(0.4),
                )
              ],
            ),
            Text(
              "180개의 리뷰",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "텍스트 상담",
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "|",
                  style: TextStyle(
                    color: Color(0xffD8C441),
                  ),
                ),
                Expanded(
                  child: Text(
                    "전화 상담",
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
