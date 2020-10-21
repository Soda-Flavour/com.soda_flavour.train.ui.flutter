import 'package:flutter/material.dart';
import 'package:frontend/pages/common_componets/circular_check_box.comp.dart';

class OrderProductPaymentMethodComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 14.0,
          ),
          Text(
            '결제수단',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          Row(
            children: [
              CircularCheckBoxComp(
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: true,
                onChanged: (value) {},
              ),
              Text(
                '카드 결제',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              CircularCheckBoxComp(
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: false,
                onChanged: (value) {},
              ),
              Text(
                '무통장 입금',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Row(
            children: [
              CircularCheckBoxComp(
                activeColor: Colors.blue,
                inactiveColor: Colors.grey,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: false,
                onChanged: (value) {},
              ),
              Text(
                '카카오페이',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}
