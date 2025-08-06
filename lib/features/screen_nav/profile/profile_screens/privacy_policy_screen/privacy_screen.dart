import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_button.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/app_text_field.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تواصل معنا", style: customStyleText.textStyle16w500),
        centerTitle: true,
      ),
      body: Column(
        children: [
          30.hi,
          Text(
            "البريد الالكتروني ",
            style: customStyleText.textStyle14w500.copyWith(
              color: Colors.black,
            ),
          ),
          AppTextField(labelText: "ادخل البريد الالكتروني هنا"),
          30.hi,
          Text(
            " ادخل رسالة ",
            style: customStyleText.textStyle14w500.copyWith(
              color: Colors.black,
            ),
          ),
          AppTextField(labelText: "ادخل رسالة هنا", maxLines: 4),
          100.hi,
          AppButton(onPressed: () {}, text: "ارسال"),
          AppButton(
            onPressed: () {},
            text: "تواصل واتساب",
            color: AppColor.greenColor,
          ),
        ],
      ),
    );
  }
}
