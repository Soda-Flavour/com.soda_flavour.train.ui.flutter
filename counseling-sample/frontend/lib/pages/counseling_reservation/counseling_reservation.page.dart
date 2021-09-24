import 'package:flutter/material.dart';
import 'package:frontend/pages/counseling_reservation/components/counseling_reservation_app_bar.comp.dart';
import 'package:frontend/pages/select_product/select_product.page.dart';
import 'package:get/get.dart';

class CounselingReservationPage extends StatefulWidget {
  @override
  _CounselingReservationPageState createState() =>
      _CounselingReservationPageState();
}

class _CounselingReservationPageState extends State<CounselingReservationPage> {
  var dateController = TextEditingController();
  var timeController = TextEditingController();
  DateTime selectedDate = DateTime(2020, 1, 14);

  bool _predicate(DateTime day) {
    if ((day.isAfter(DateTime(2020, 1, 5)) &&
        day.isBefore(DateTime(2020, 1, 9)))) {
      return true;
    }
    if ((day.isAfter(DateTime(2020, 1, 10)) &&
        day.isBefore(DateTime(2020, 1, 15)))) {
      return true;
    }
    if ((day.isAfter(DateTime(2020, 2, 5)) &&
        day.isBefore(DateTime(2020, 2, 17)))) {
      return true;
    }
    return false;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        selectableDayPredicate: _predicate,
        firstDate: DateTime(2019),
        lastDate: DateTime(2021),
        builder: (context, child) {
          return Theme(
            data: ThemeData(
                primaryColor: Colors.orangeAccent,
                disabledColor: Colors.brown,
                textTheme:
                    TextTheme(body1: TextStyle(color: Colors.blueAccent)),
                accentColor: Colors.yellow),
            child: child,
          );
        });
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        dateController.text = "${selectedDate.toLocal()}".split(' ')[0];
      });
  }

  Future<void> _showTimePicker() async {
    var picker =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    setState(() {
      timeController.text = "${picker.hour}시 ${picker.minute}분";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            constraints: BoxConstraints(
              maxWidth: 632,
            ),
            child: CustomScrollView(
              shrinkWrap: true,
              key: PageStorageKey<String>("counseling_reservation"),
              slivers: [
                SliverAppBar(
                  titleSpacing: 10,
                  title: CounselingReservationAppBarComp(),
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: true,
                  leading: BackButton(
                    color: Colors.black,
                  ),
                  elevation: 0.0,
                  pinned: true,
                ),
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 14.0,
                            ),
                            Text(
                              '날짜선택',
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
                            SizedBox(
                              height: 6.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: dateController,
                                    readOnly: true,
                                    textAlign: TextAlign.end,
                                    decoration: new InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 8.0),
                                      hintText: '날짜를 선택해주세요.',
                                      isDense: true,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                FlatButton(
                                  onPressed: () {
                                    _selectDate(context);
                                  },
                                  child: Text(
                                    '선택하기',
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
                      )
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 14.0,
                            ),
                            Text(
                              '시간선택',
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
                            SizedBox(
                              height: 6.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: timeController,
                                    readOnly: true,
                                    textAlign: TextAlign.end,
                                    decoration: new InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 8.0),
                                      hintText: '시간를 선택해주세요.',
                                      isDense: true,
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 6.0,
                                ),
                                FlatButton(
                                  onPressed: () {
                                    _showTimePicker();
                                  },
                                  child: Text(
                                    '선택하기',
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
                      )
                    ],
                  ),
                ),
                // SliverList(
                //   delegate: SliverChildBuilderDelegate((context, index) {
                //     return GestureDetector(
                //       onTap: () {
                //         Get.to(CounselingChatRoomPage(),
                //             arguments: Data.chatRooms[index]);
                //       },
                //       child: ChatRoomListItem(
                //         chatRoom: Data.chatRooms[index],
                //       ),
                //     );
                //   }, childCount: Data.chatRooms.length),
                // )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
            height: 70,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey[300],
                  width: 2.0,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 8.0,
              ),
              child: Container(
                child: RaisedButton(
                  child: Text('예약하기', style: TextStyle(fontSize: 24)),
                  color: Color(0xFF058DFC),
                  onPressed: () => Get.back(),
                  textColor: Colors.white,
                ),
              ),
            )),
      ),
    );
  }
}
