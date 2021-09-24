import 'package:flutter/material.dart';

class CounselingDetailTeacherInfoComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                  color: Colors.black,
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
    );
  }
}
