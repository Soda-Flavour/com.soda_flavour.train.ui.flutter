import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/teacher_detail_service_card_item.comp.dart';

class TeacherDetailAllianceCardComp extends StatelessWidget {
  const TeacherDetailAllianceCardComp({Key key}) : super(key: key);

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
                  'Alliance',
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
          TeacherDetailServiceCardItemComp(),
          Divider(
            height: 30,
          ),
          TeacherDetailServiceCardItemComp(),
          Divider(
            height: 30,
          ),
          TeacherDetailServiceCardItemComp(),
        ],
      ),
    );
  }
}
