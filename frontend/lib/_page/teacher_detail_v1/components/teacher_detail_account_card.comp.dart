import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/teacher_detail_account_card_item.comp.dart';

class TeacherDetailAccountCardcomp extends StatelessWidget {
  const TeacherDetailAccountCardcomp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Column(
        children: [
          Container(
            height: 50.0,
            child: Row(
              children: [
                Text(
                  'Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TeacherDetailAccountCardItemComp(),
          Divider(
            height: 30,
          ),
          TeacherDetailAccountCardItemComp(),
          Divider(
            height: 30,
          ),
          TeacherDetailAccountCardItemComp(),
        ],
      ),
    );
  }
}
