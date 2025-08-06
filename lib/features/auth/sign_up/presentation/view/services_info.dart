import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_button.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/custem_navi.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/widget/services_body1.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/widget/services_body2.dart';
import 'package:wash_app_flutter/features/screen_nav/pages.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  bool val1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(" الخدمات ", style: customStyleText.textStyle20semibold),
              Text(
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
                style: customStyleText.textStyle12w400,
              ),
              Container(
                alignment: AlignmentDirectional.topStart,
                width: 327,
                height: 14,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 210, 210),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 250.0,
                  height: 14,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              26.hi,
              19.hi,
              ServicesBody1(),
              30.hi,
              ServicesBody2(),
              46.hi,
              AppButton(
                onPressed: () {
                  AppNavigator().push(page: Pages());
                },
                text: "التالي",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
