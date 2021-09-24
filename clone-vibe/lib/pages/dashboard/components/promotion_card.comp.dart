import 'package:flutter/material.dart';

class PromotionCardComp extends StatefulWidget {
  final bgColor;

  const PromotionCardComp({Key key, this.bgColor}) : super(key: key);

  @override
  _PromotionCardCompState createState() => _PromotionCardCompState();
}

class _PromotionCardCompState extends State<PromotionCardComp> {
  final _pageController = PageController(viewportFraction: .8);

  final List<String> numbers = [
    "노래방 모드 써보기",
    "Promotion",
    "요즘 트랜드",
    "Happy Christmas"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      height: MediaQuery.of(context).size.height * 0.40,
      child: ListView.builder(
          controller: _pageController,
          scrollDirection: Axis.horizontal,
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.90,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                color: widget.bgColor,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        numbers[index],
                        style: TextStyle(
                          color: Color(0xffF7004E),
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Image.asset(
                        "assets/dev/images/img_box.png",
                        width: double.infinity,
                        height: 190,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        "VIBE 노래방 이벤트 오픈!",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 23.0,
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "애창곡을 부르면 천만원은 너의 것",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.w700,
                          fontSize: 18.0,
                        ),
                      ),
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
