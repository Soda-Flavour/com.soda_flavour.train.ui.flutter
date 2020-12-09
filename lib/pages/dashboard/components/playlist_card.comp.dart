import 'package:flutter/material.dart';

class PlaylistCardComp extends StatefulWidget {
  final bgColor;

  const PlaylistCardComp({Key key, this.bgColor}) : super(key: key);

  @override
  _PlaylistCardCompState createState() => _PlaylistCardCompState();
}

class _PlaylistCardCompState extends State<PlaylistCardComp> {
  final List<String> numbers = ["최애 믹스테잎", "첨듣 믹스테잎", "잔잔 믹스테잎", "일렉트로닉 믹스테잎"];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      height: MediaQuery.of(context).size.height * 0.32,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.455,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                color: widget.bgColor,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/dev/images/img_box.png",
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                      SizedBox(height: 12.0),
                      Text(
                        numbers[index].toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      Text(
                        "슈퍼비, 트웰브, 오혁, Peggy Gue, pH-1",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

//  @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 20.0),
//       height: 200.0,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: <Widget>[

//           Container(
//             width: 160.0,
//             color: Colors.red,
//           ),
//           Container(
//             width: 160.0,
//             color: Colors.blue,
//           ),
//           Container(
//             width: 160.0,
//             color: Colors.green,
//           ),
//           Container(
//             width: 160.0,
//             color: Colors.yellow,
//           ),
//           Container(
//             width: 160.0,
//             color: Colors.orange,
//           ),
//         ],
//       ),
//     );
//   }
