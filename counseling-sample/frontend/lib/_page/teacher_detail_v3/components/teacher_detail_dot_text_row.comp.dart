import 'package:flutter/material.dart';

class TeacherDetailDotTextRowComp extends StatelessWidget {
  final String content;

  const TeacherDetailDotTextRowComp({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.5),
          child: Icon(
            Icons.circle,
            size: 5.0,
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Expanded(
          child: Text(
            content,
            style: TextStyle(
              color: Colors.black,
              height: 1.5,
            ),
          ),
        )
      ],
    );
  }
}
