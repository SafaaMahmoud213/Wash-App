import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/features/screen_nav/order/order_body_verti.dart';

// ignore: must_be_immutable
class OrderPage1 extends StatelessWidget {
  OrderPage1({super.key});
  List<Color> textColors = [
    AppColor.greenColor,
    AppColor.primaryColor,
    AppColor.yellowColor,
    AppColor.greenColor,
    AppColor.primaryColor,
    AppColor.yellowColor,
  ];

  List<Color> containerColors = [
    Colors.green.shade50,
    AppColor.secondaryColor,
    Colors.orange.shade100,
    Colors.green.shade50,
    AppColor.secondaryColor,
    Colors.orange.shade100,
  ];

  List<String> texts = [
    "مكتمل",
    "ملغي",
    "قيد التنفيذ",
    "مكتمل",
    "ملغي",
    "قيد التنفيذ",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: textColors.length,
      itemBuilder: (BuildContext context, int index) {
        return OrderBody(
          containerColors: containerColors[index],
          textColors: textColors[index],
          text: texts[index],
        );
      },
    );
  }
}
