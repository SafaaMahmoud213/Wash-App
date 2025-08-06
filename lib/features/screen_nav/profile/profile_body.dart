import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_images.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/widgets/custem_images.dart';

// ignore: must_be_immutable
class ProfileBody extends StatelessWidget {
  ProfileBody({super.key});
  List<String> text = [
    "الاعدادات",
    "الاشعارات",
    "التذاكر",
    "تواصل معنا",
    "قيم التطبيق",
    "سياسة الخصوصية",
    "الشروط و الاحكام",
    "اللغة",
    "تسجيل الخروج",
  ];

  List<String> images = [
    AppImages.question,
    AppImages.notifi,
    AppImages.ticket,
    AppImages.chat,
    AppImages.star,
    AppImages.privacy,
    AppImages.document,
    AppImages.language,
    AppImages.logout,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,

      physics: NeverScrollableScrollPhysics(),
      itemCount: images.length,
      itemBuilder:
          (context, index) => Container(
            width: 327.w,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: 54.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

              border: Border.all(color: AppColor.secondaryColor),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImage(url: images[index], width: 30.w, height: 30.h),

                Text(
                  text[index],
                  style: customStyleText.textStyle14w500.copyWith(
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios_rounded, size: 10),
              ],
            ),
          ),
    );
  }
}
