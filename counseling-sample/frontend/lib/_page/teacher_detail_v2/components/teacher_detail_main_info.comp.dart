import 'package:flutter/material.dart';

class TeacherDetailMainInfoComp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.grey,
      ),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
          bottom: 10,
        ),
        child: Column(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.white,
                        image: new DecorationImage(
                          image: NetworkImage(
                              'https://water-flavour.com/public/image/repo/face_1.png'),
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Spacer(),

                      Text(
                        '김진영 상담사',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Row(
                        children: [
                          Text(
                            '★★★★★',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF058DFC),
                            ),
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            '5.0(100)',
                            style: TextStyle(
                              fontSize: 12.0,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        '100개의 상담을 진행',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF058DFC),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: const Color(0xFF058DFC),
                            child: ClipOval(
                              child: Icon(
                                Icons.message,
                                color: Colors.white,
                                size: 11,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "문자 상담",
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: const Color(0xFF058DFC),
                            child: ClipOval(
                              child: Icon(
                                Icons.phone,
                                color: Colors.white,
                                size: 11,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            "전화상담",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2,
            )
          ],
        ),
      ),
    );
  }
}
