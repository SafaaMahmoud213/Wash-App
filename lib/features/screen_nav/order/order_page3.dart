import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/features/screen_nav/order/order_body_verti.dart';

class OrderPage3 extends StatelessWidget {
  const OrderPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return OrderBody(
          containerColors: Colors.orange.shade100,
          textColors: AppColor.yellowColor,
          text: "قيد التنفيذ",
        );
      },
    );
  }
}
