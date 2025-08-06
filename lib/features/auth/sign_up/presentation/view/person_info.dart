import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_button.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/auth/log_in/intl_phone.dart';
import 'package:wash_app_flutter/features/auth/otp/custem_text_span.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/widget/custem_body.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/widget/dot_container.dart';

class PersonInfoScreen extends StatefulWidget {
  const PersonInfoScreen({super.key});

  @override
  State<PersonInfoScreen> createState() => _PersonInfoScreenState();
}

class _PersonInfoScreenState extends State<PersonInfoScreen> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CustomBody(text: "الاسم الكامل", labelText: "ادخل اسمك الكامل هنا"),

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
              text2: 'شروط الاستخدام',
              text3: 'لتطبيق مساعدة على طريق',
              fontSize: 10.sp,
            ),
          ],
        ),
        30.hi,
        AppButton(onPressed: () {}, text: "التالي"),
      ],
    );
  }
}
