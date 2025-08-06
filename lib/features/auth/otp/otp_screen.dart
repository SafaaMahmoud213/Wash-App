import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_button.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/custem_navi.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/auth/otp/custem_text_span.dart';
import 'package:wash_app_flutter/features/auth/otp/pin_put.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/view/sign_up_screen.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ادخل رمز التحقق",
                style: customStyleText.textStyle20semibold,
              ),
              5.hi,
              Text(
                " أدخل رمز التحقق الذي تم إرساله إلى رقم الهاتف الخاص بك للتحقق من هويتك وضمان سلامة حسابك.",
                style: customStyleText.textStyle12w400,
              ),
              170.hi,
              Center(
                child: PinPut(
                  // validator: (s) {
                  //   if (s!.isEmpty) {
                  //     return "Enter Invalid Code";
                  //   }
                  //   return null;
                  // },
                ),
              ),
              22.hi,
              Center(
                child: customTextSpan(
                  text1: "يمكنك اعادة ارسال الكود خلال",
                  text2: "52",
                  text3: "ثانية",
                  fontSize: 14,
                ),
              ),
              4.hi,
              Center(
                child: Text(
                  "اعادة ارسال كود جديد",
                  style: customStyleText.textStyle12w400,
                ),
              ),
              215.hi,
              AppButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    AppNavigator().push(page: SignUpScreen());
                  }
                },
                text: "متابعة",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
