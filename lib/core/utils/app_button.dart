import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  final String text;
  final Color? color;
  Function() onPressed;
  final double? width;
  final double? height;
  AppButton({
    required this.onPressed,
    required this.text,
    super.key,
    this.color,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          animationDuration: Duration(seconds: 30),
          fixedSize: Size(width ?? 327.w, height ?? 60.h),
          backgroundColor: color ?? AppColor.primaryColor,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: customStyleText.textStyle20semibold.copyWith(
            color: Colors.white,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
