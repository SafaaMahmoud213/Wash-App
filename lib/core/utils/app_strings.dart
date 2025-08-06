import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';

abstract class customStyleText {
  static TextStyle textStyle20semibold = TextStyle(
    fontSize: 20.sp,
    color: Colors.black,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textStyle12w400 = TextStyle(
    fontSize: 12.sp,
    color: Colors.grey,
    fontWeight: FontWeight.w400,
  );
  static TextStyle textStyle16w500 = TextStyle(
    fontSize: 16.sp,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
  static TextStyle textStyle14w500 = TextStyle(
    fontSize: 14.sp,
    color: AppColor.primaryColor,
    fontWeight: FontWeight.w500,
  );
}
