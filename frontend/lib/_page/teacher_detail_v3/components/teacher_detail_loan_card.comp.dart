import 'package:flutter/material.dart';
import 'package:frontend/pages/teacher_detail/components/teacher_detail_account_card_item.comp.dart';
import 'package:frontend/pages/teacher_detail/components/teacher_detail_loan_card_item.comp.dart';

class TeacherDetailLoanCardComp extends StatelessWidget {
  const TeacherDetailLoanCardComp({Key key}) : super(key: key);

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
                  'Loan',
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
          TeacherDetailLoanCardItemComp(),
          Divider(
            height: 30,
          ),
          TeacherDetailLoanCardItemComp(),
          Divider(
            height: 30,
          ),
          TeacherDetailLoanCardItemComp(),
        ],
      ),
    );
  }
}
