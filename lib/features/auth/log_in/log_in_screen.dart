import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/auth/log_in/intl_phone.dart';

// ignore: must_be_immutable
class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              20.hi,
              Text("تسجيل الدخول", style: customStyleText.textStyle20semibold),
              5.hi,
              Text(
                "قم بتسجيل الدخول للوصول إلى حسابك والبدء في تقديم خدماتك بكل سهولة!",
                style: customStyleText.textStyle12w400,
              ),

              175.hi,
              Text("رقم الهاتف", style: customStyleText.textStyle16w500),
              IntlPhoneScreen(isButton: true),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "ليس لديك حساب ?",
                        style: customStyleText.textStyle12w400.copyWith(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "انشاء حساب",
                        style: customStyleText.textStyle12w400.copyWith(
                          fontSize: 13,
                          color: AppColor.primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
