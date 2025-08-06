import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/core/widgets/custem_images.dart';

class NotifiBody extends StatelessWidget {
  const NotifiBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.all(10),
          width: 325.w,
          height: 80.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            border: Border.all(color: Colors.grey.shade100),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  radius: 25.r,
                  backgroundColor: AppColor.primaryColor,
                  child: Center(
                    child: CustomImage(
                      url: " images[index]",
                      width: 22.w,
                      height: 22.h,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "طلب جديد",
                      style: customStyleText.textStyle20semibold.copyWith(
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ),
                    Text(
                      "لديك طلب تصليح من محمد الأحمدي في الرياض",
                      style: customStyleText.textStyle12w400.copyWith(
                        fontSize: 11.sp,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              100.wi,
              Text("01:04  21/12/2024", style: customStyleText.textStyle12w400),
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
