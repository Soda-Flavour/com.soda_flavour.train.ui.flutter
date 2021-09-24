import 'package:flutter/material.dart';
import 'package:frontend/pages/main_bott_navigator/main_bottom_navigator.page.dart';
import 'package:frontend/pages/payment_complete/components/payment_complete_order_detail.comp.dart';
import 'package:get/get.dart';

class PaymentCompletePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Text(
              '결제 완료',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: 632,
              ),
              child: CustomScrollView(
                key: PageStorageKey<String>("order_product"),
                slivers: [
                  SliverPadding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    sliver: SliverList(
                      delegate: SliverChildListDelegate.fixed([
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              '결제를 완료했습니다.',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                '나의 상담에서 상담사의 예약 가능시간을 확인하고 상담을 예약하세요',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        RaisedButton(
                          child: Text('나의 상담으로 이동',
                              style: TextStyle(fontSize: 24)),
                          color: Color(0xFF058DFC),
                          onPressed: () => Get.offAll(
                              MainBottomNavigatorPage(initPage: 1),
                              transition: Transition.downToUp),
                          textColor: Colors.white,
                        ),
                        PaymentCompleteOrderDetailComp(),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
