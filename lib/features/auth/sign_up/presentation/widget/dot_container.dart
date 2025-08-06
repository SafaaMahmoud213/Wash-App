import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_images.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';

class DotContainer extends StatelessWidget {
  const DotContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: DottedDecoration(
        color: AppColor.primaryColor,
        shape: Shape.box,
        strokeWidth: 2,
        dash: <int>[9, 8],
        borderRadius: BorderRadius.circular(10),
      ),
      width: 327.w,
      height: 189.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage(AppImages.upload), width: 55.w, height: 55.h),
          18.hi,
          Center(
            child: Text(
              "قم برفع صورة الهوية بصيغة JPG / PNG",
              style: customStyleText.textStyle14w500.copyWith(fontSize: 12.sp),
            ),
          ),
        ],
      ),
    );
  }
}
