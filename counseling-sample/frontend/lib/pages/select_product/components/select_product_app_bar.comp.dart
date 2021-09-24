import 'package:flutter/material.dart';

class SelectProductAppBarComp extends StatelessWidget {
  const SelectProductAppBarComp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: Row(
        children: [
          Text(
            '상담권 선택',
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
