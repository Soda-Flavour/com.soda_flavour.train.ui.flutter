import 'package:flutter/material.dart';

class TeacherDetailAppBarComp extends StatelessWidget {
  const TeacherDetailAppBarComp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: [
          Text(
            '상담사 프로필',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
