import 'package:flutter/material.dart';

class TeacherDetailTabReviewTotalDataComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                '상담 만족도 평균',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Text(
                '4.6',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '★★★★★',
                style: TextStyle(
                  fontSize: 22.0,
                  color: Color(0xFF058DFC),
                ),
              )
            ],
          ),
          SizedBox(
            height: 18.0,
          ),
          Row(
            children: [
              Text(
                '상담 만족 비율',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 22.0,
          ),
          Wrap(
            spacing: 10.0,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Container(
                    height: 100,
                    width: 20,
                    child: SizedBox(
                      height: 50,
                      child: Container(
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  Text(''),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 20,
                    color: Colors.amber,
                  ),
                  Text('1'),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 20,
                    color: Colors.amber,
                  ),
                  Text(''),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 20,
                    color: Colors.amber,
                  ),
                  Text('2'),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 20,
                    color: Colors.amber,
                  ),
                  Text(''),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 20,
                    color: Colors.amber,
                  ),
                  Text('3'),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 20,
                    color: Colors.amber,
                  ),
                  Text(''),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 20,
                    color: Colors.amber,
                  ),
                  Text('4'),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 20,
                    color: Colors.amber,
                  ),
                  Text(''),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 20,
                    color: Colors.amber,
                  ),
                  Text('5'),
                ],
              )
            ],
          ),
          SizedBox(
            height: 22.0,
          ),
          Row(
            children: [
              Text(
                '상담후기',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                width: 6.0,
              ),
              Text(
                '(100건)',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
