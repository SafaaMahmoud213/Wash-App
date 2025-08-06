import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_button.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/custem_navi.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/auth/log_in/intl_phone.dart';
import 'package:wash_app_flutter/features/auth/otp/custem_text_span.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/view/car_info.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/view/person_info.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/view/services_info.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/widget/custem_body.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/widget/dot_container.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool value = false;
  int activeStep = 0;
  List<Widget> screens = [
    PersonInfoScreen(),
    CarInfoScreen(),
    ServicesScreen(),
  ];
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
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "المعلومات الأساسية",
              style: customStyleText.textStyle20semibold,
            ),
            Text(
              "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
              style: customStyleText.textStyle12w400,
            ),
            19.hi,
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
                width: 65.0,

                height: 14,
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            CustomBody(
              text: "الاسم الكامل",
              labelText: "ادخل اسمك الكامل هنا",
              suffix: Icon(Icons.arrow_drop_down, size: 14),
            ),

            Text(" رقم الهاتف", style: customStyleText.textStyle16w500),
            IntlPhoneScreen(),
            CustomBody(
              text: " الجنسية",
              labelText: "السعودية",
              suffix: Icon(Icons.arrow_drop_down, size: 14),
            ),
            CustomBody(
              text: " رقم الهوية/الاقامة",
              labelText: "ادخل رقم الهوية او الاقامة هنا",
            ),

            Text("صورة الهوية", style: customStyleText.textStyle16w500),
            8.hi,
            DotContainer(),
            CustomBody(text: "العمر", labelText: "ادخل العمر هنا"),
            CustomBody(text: "كود الدعوة", labelText: "ادخل كود الدعوة هنا"),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  activeColor: AppColor.primaryColor,
                  value: value,
                  onChanged: (val) {
                    setState(() {
                      value = val!;
                    });
                  },
                ),
                customTextSpan(
                  text1: 'أوافق على',
                  text2: ' شروط الاستخدام',
                  text3: ' لتطبيق مساعدة على طريق ',
                  fontSize: 12,
                ),
              ],
            ),
            30.hi,
            AppButton(
              onPressed: () {
                AppNavigator().push(page: CarInfoScreen());
              },
              text: "التالي",
            ),
            // screens[activeStep],
          ],
        ),
      ),
    );
  }
}
