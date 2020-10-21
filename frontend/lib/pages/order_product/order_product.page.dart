import 'package:flutter/material.dart';
import 'package:frontend/pages/order_product/components/order_product_ad.comp.dart';
import 'package:frontend/pages/order_product/components/order_product_app_bar.comp.dart';
import 'package:frontend/pages/order_product/components/order_product_coupon.comp.dart';
import 'package:frontend/pages/order_product/components/order_product_main_info.comp.dart';
import 'package:frontend/pages/order_product/components/order_product_payment_method.comp.dart';
import 'package:frontend/pages/order_product/components/order_product_price.comp.dart';
import 'package:frontend/pages/payment_complete/payment_complete.page.dart';
import 'package:get/get.dart';

class OrderProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 632,
            ),
            child: CustomScrollView(
              key: PageStorageKey<String>("order_product"),
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  sliver: SliverAppBar(
                    titleSpacing: 10,
                    title: OrderProductAppBarComp(),
                    backgroundColor: Colors.white,
                    leading: BackButton(
                      color: Colors.black,
                    ),
                    automaticallyImplyLeading: true,
                    elevation: 0.0,
                    pinned: true,
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed([
                    OrderProductMainAdComp(),
                    SizedBox(
                        height: 8,
                        child: Container(
                          color: Colors.grey[300],
                        )),
                    OrderProductMainInfoComp(),
                    SizedBox(
                      height: 30,
                      child: Container(
                        color: Colors.grey[300],
                      ),
                    ),
                    OrderProductCouponComp(),
                    SizedBox(
                      height: 15,
                      child: Container(
                        color: Colors.grey[300],
                      ),
                    ),
                    OrderProductPriceComp(),
                    SizedBox(
                      height: 15,
                      child: Container(
                        color: Colors.grey[300],
                      ),
                    ),
                    OrderProductPaymentMethodComp(),
                    SizedBox(
                      height: 80,
                      child: Container(
                        color: Colors.grey[300],
                      ),
                    ),
                  ]),
                ),
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
                  child: Text('결제하기', style: TextStyle(fontSize: 24)),
                  color: Color(0xFF058DFC),
                  onPressed: () => Get.to(PaymentCompletePage()),
                  textColor: Colors.white,
                ),
              ),
            )),
      ),
    );
  }
}
