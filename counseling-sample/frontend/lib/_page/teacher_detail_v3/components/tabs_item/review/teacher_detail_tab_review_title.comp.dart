import 'package:flutter/material.dart';

class TeacherDetailTabReviewTitleComp extends StatelessWidget {
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
                  "상담 후기",
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
          ],
        ),
      ),
    );
  }
}
