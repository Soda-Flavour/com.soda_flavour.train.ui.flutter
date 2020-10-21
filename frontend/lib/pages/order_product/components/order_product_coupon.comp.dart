import 'package:flutter/material.dart';

class OrderProductCouponComp extends StatelessWidget {
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
            '적립 포인트 사용',
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
          Container(
            color: Colors.blue[100],
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '적립 포인트 잔액',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  '2000원',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
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
