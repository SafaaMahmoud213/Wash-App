import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart' show AppColor;
import 'package:wash_app_flutter/core/utils/app_images.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/widget/container_checkbox.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/widget/dot_container.dart';

class ServicesBody1 extends StatefulWidget {
  const ServicesBody1({super.key});

  @override
  State<ServicesBody1> createState() => _ServicesBody1State();
}

class _ServicesBody1State extends State<ServicesBody1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 60.w,
                    height: 60.h,
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.secondaryColor,
                    ),
                    child: Center(
                      child: Image.asset(
                        AppImages.battery,
                        width: 25,
                        height: 25,
                      ),
                    ),
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "خدمات البطاريات",
                        style: customStyleText.textStyle14w500.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        " هذا النص هو مثال لنص يمكن أن يستبدل",
                        style: customStyleText.textStyle12w400.copyWith(
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ContainerCheckBox(text: ' اشتراك بطارية'),
              10.hi,
              DotContainer(),
              15.hi,
              ContainerCheckBox(text: '  تبديل البطارية'),
            ],
          ),
        ),
      ],
    );
  }
}
