import 'package:flutter/material.dart';

class PaymentCompleteAppBarComp extends StatelessWidget {
  const PaymentCompleteAppBarComp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: [
          Text(
            '결제 완료',
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
