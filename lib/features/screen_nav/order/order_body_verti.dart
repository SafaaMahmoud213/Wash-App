import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_images.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/core/widgets/custem_images.dart';

class OrderBody extends StatelessWidget {
  const OrderBody({
    super.key,
    required this.containerColors,
    required this.textColors,
    required this.text,
  });

  final Color containerColors;
  final Color textColors;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330.w,
      height: 120.h,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColor.secondaryColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            child: CustomImage(url: AppImages.person, width: 56, height: 56),
          ),
          12.wi,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              18.hi,
              Text(
                "أحمد ابرهيم",
                style: customStyleText.textStyle14w500.copyWith(
                  color: Colors.black,
                ),
              ),
              13.hi,
              Text(
                "الخدمة : تغيير الكفر عند البنشير",
                style: customStyleText.textStyle12w400.copyWith(
                  fontSize: 11.sp,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              18.hi,
              Container(
                width: 45.w,
                height: 26.h,
                decoration: BoxDecoration(
                  color: containerColors,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(fontSize: 8.sp, color: textColors),
                  ),
                ),
              ),
              13.hi,
              Text(
                "21/12/2024",
                style: customStyleText.textStyle12w400.copyWith(
                  fontSize: 11.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
