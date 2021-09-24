import 'package:flutter/material.dart';

class CounselingDetailAppBarComp extends StatelessWidget {
  const CounselingDetailAppBarComp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: [
          Text(
            '고하연 선생님과의 상담',
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
