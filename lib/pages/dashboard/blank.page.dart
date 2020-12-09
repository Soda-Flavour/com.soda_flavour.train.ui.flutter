import 'package:flutter/material.dart';
import 'package:vibe_clone/pages/dashboard/components/playlist_card.comp.dart';

import 'components/promotion_card.comp.dart';
import 'components/promotion_card.comp.dart';

class BlankPage extends StatefulWidget {
  @override
  _BlankPageState createState() => _BlankPageState();
}

class _BlankPageState extends State<BlankPage> {
  bool selected = false;
  double vertiPaddingVal = 0;
  double horiPaddingVal = 0;
  AnimationController _controller;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(0);

  List<Color> backgroundColorList = [
    Color(0xff000000),
    Color(0xff020202),
    Color(0xff040404),
    Color(0xff060606),
    Color(0xff080808),
    Color(0xff101010),
    Color(0xff121212),
    Color(0xff141414),
    Color(0xff161616),
    Color(0xff181818),
    Color(0xff202020),
  ];
  Color selectedBgColor = Color(0xff000000);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedPadding(
          duration: const Duration(microseconds: 1),
          padding: EdgeInsets.symmetric(
              horizontal: horiPaddingVal, vertical: vertiPaddingVal),
          // horizontal: selected ? 8 : 0, vertical: selected ? 40 : 0),
          curve: Curves.easeInOut,
          child: AnimatedContainer(
            decoration: BoxDecoration(
              color: selectedBgColor,
              borderRadius: _borderRadius,
            ),
            duration: const Duration(milliseconds: 500),
            child: CustomScrollView(
              key: PageStorageKey<String>("pg1"),
              slivers: [
                SliverSafeArea(
                  sliver: SliverList(
                    delegate: SliverChildListDelegate.fixed(
                      [
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "#내돈내듣 VIBE",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 35.0,
                                  color: Colors.white,
                                ),
                              ),
                              CircleAvatar(
                                radius: 18.0,
                                child: Image.asset(
                                  'assets/dev/images/img_round.png',
                                  scale: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        PromotionCardComp(
                          bgColor: selectedBgColor,
                        ),
                        Divider(
                          height: 45,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "나를 위한 믹스 테잎",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 23.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        PlaylistCardComp(
                          bgColor: selectedBgColor,
                        ),
                        Divider(
                          height: 45,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "나를 위한 믹스 테잎",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 23.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        PlaylistCardComp(),
                        Divider(
                          height: 45,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Text(
                            "나를 위한 믹스 테잎",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 23.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        PlaylistCardComp()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        NotificationListener<DraggableScrollableNotification>(
          onNotification: (notification) {
            // print("${num.parse(notification.extent.toStringAsFixed(2))}");
            double posVal = num.parse(notification.extent.toStringAsFixed(2));
            setState(() {
              if (posVal == 0.08) {
                selectedBgColor = backgroundColorList[0];
                _borderRadius = BorderRadius.circular(0);
                vertiPaddingVal = 0;
                horiPaddingVal = 0;
              } else if (posVal == 0.9) {
                selectedBgColor = backgroundColorList[10];
                _borderRadius = BorderRadius.circular(20);
                vertiPaddingVal = 40;
                horiPaddingVal = 13;
              } else {
                double resVertiPadding = 40 * (posVal / 0.8);
                double resHoriPadding = 12 * (posVal / 0.8);
                int bgColor = (10 * (posVal / 0.8)).floor();

                selectedBgColor =
                    backgroundColorList[(bgColor > 10 ? 10 : bgColor)];
                _borderRadius = BorderRadius.circular(20 * (posVal / 0.8));
                if (resVertiPadding <= 40) {
                  vertiPaddingVal = resVertiPadding;
                }
                // if (resVertiPadding <= 8) {
                //   horiPaddingVal = resHoriPadding;
                // }
                horiPaddingVal = resHoriPadding;
                print("posVal: $posVal");
                print(horiPaddingVal);
              }
              // paddingVal = num.parse(notification.extent.toStringAsFixed(2));
            });
          },
          child: DraggableScrollableSheet(
            maxChildSize: 0.90,
            initialChildSize: 0.08,
            minChildSize: 0.08,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                physics: new ClampingScrollPhysics(),
                controller: scrollController,
                child: Container(
                  color: Colors.red,
                  height: 1200,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.green,
                        height: 300,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

//  child: Center(
//         child: FlatButton(
//           onPressed: () {
//             setState(() {
//               selected = !selected;
//             });
//           },
//           child: Text("클릭"),
//         ),
//       ),
