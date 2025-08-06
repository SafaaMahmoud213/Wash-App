import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';

class PinPut extends StatelessWidget {
  PinPut({super.key});
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 56,
    textStyle: TextStyle(
      fontSize: 20,
      color: AppColor.primaryColor,
      fontWeight: FontWeight.w600,
    ),
    decoration: BoxDecoration(
      color: Colors.grey.shade50,
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.grey.shade300),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: 4,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: defaultPinTheme.copyDecorationWith(
        color: const Color.fromARGB(255, 254, 220, 220),
        border: Border.all(color: AppColor.primaryColor),

        borderRadius: BorderRadius.circular(20),
      ),
      submittedPinTheme: defaultPinTheme.copyWith(
        decoration: defaultPinTheme.decoration?.copyWith(
          color: Colors.grey.shade100,
        ),
      ),
      validator: (s) {
        return s == '2222' ? null : 'يجب ادخال رمز التحقق صحيح';
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
    );
  }
}
