import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class OrderProductPriceComp extends StatelessWidget {
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
            '결제금액',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '정상가',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                '500,000원',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '할인가',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Text(
                '-35,000원',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '할인가',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      '-35,000원',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '포인트 사용',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      '0원',
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          DottedLine(),
          SizedBox(
            height: 12.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '최종결제금액',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Text(
                '465,000원',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  textAlign: TextAlign.end,
                  decoration: new InputDecoration(
                    suffix: Text('원'),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                    hintText: '0',
                    isDense: true,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                width: 6.0,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  '전액사용',
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                // style: TextStyle(
                //   fontWeight: FontWeight.bold,
                //   fontSize: 16.0,
                // ),
              ),
            ],
          ),
          SizedBox(
            height: 12.0,
          ),
        ],
      ),
    );
  }
}
