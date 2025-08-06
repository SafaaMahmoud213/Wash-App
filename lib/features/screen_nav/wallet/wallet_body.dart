import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_images.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/core/widgets/custem_images.dart';

// ignore: must_be_immutable
class WalletBody extends StatelessWidget {
  WalletBody({super.key});

  List<String> images = [
    AppImages.add,
    AppImages.withdrawal,
    AppImages.add,
    AppImages.withdrawal,
    AppImages.add,
    AppImages.withdrawal,
    AppImages.add,
    AppImages.withdrawal,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: images.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 327.w,
          height: 100.h,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: Colors.grey.shade100),
          ),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: AppColor.secondaryColor,
                child: Center(
                  child: CustomImage(
                    url: images[index],
                    width: 22.w,
                    height: 22.h,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "تم اضافة رصيد",
                      style: customStyleText.textStyle20semibold.copyWith(
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ),
                    Text(
                      " هذا النص هو مثال لنص",
                      style: customStyleText.textStyle12w400.copyWith(
                        fontSize: 11.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              75.wi,
              Text(
                "+100 ريال",
                style: customStyleText.textStyle20semibold.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: 10);
      },
    );
  }
}
