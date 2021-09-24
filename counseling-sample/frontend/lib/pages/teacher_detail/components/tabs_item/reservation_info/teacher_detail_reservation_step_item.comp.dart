import 'package:flutter/material.dart';

class TeacherDetailReservationStepItemComp extends StatelessWidget {
  final IconData icon;
  final String content;

  const TeacherDetailReservationStepItemComp({Key key, this.icon, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 8,
            backgroundColor: const Color(0xFF058DFC),
            child: ClipOval(
              child: Text(
                '1',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          SizedBox(
            width: 100,
            child: Column(
              children: [
                Icon(
                  icon,
                  size: 50.0,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  content,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
