import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_images.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/core/widgets/custem_images.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  List navigat = [];
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomImage(url: AppImages.photo, width: 15, height: 14),
        ),
        title: Column(
          children: [
            Text(
              "مرحبا! احمد 👋",
              style: customStyleText.textStyle20semibold.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "هذا النص هو مثال لنص يمكن ",
              style: customStyleText.textStyle12w400,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade100,

              child: Center(
                child: CustomImage(
                  url: AppImages.filter,
                  width: 25.w,
                  height: 25.h,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            36.hi,

            ListView.builder(
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
                        CustomImage(
                          url: images[index],
                          width: 30.w,
                          height: 30.h,
                        ),
                        5.wi,
                        Text(
                          text[index],
                          style: customStyleText.textStyle14w500.copyWith(
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded, size: 10),
                      ],
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
