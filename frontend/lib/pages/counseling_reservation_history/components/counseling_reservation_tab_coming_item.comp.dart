import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounselingReservationTabComingItemComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 30.0,
        ),
        Text(
          '2020년 10월 10일',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          thickness: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('상품명'),
                        Text('50분 상담권'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('회차'),
                        Text('5/9'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('시작 시간'),
                        Text('16시 00분 (50분간)'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 6.0,
              ),
              GestureDetector(
                onTap: () {
                  Get.bottomSheet(Wrap(
                    children: [
                      Container(
                        color: Colors.grey[300],
                        child: SafeArea(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 7.0,
                              ),
                              FlatButton(
                                minWidth: double.infinity,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  '예약 취소하기',
                                  style: TextStyle(fontSize: 24),
                                ),
                                color: Colors.red,
                                onPressed: () {},
                                textColor: Colors.white,
                              ),
                              SizedBox(
                                height: 7.0,
                              ),
                              FlatButton(
                                minWidth: double.infinity,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  '예약 시간변경하기',
                                  style: TextStyle(fontSize: 24),
                                ),
                                color: Color(0xFF058DFC),
                                onPressed: () {},
                                textColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ));
                },
                child: Icon(
                  Icons.more_vert,
                  size: 25,
                  color: Colors.black.withOpacity(0.4),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: DottedLine(),
        )
      ],
    );
  }
}
