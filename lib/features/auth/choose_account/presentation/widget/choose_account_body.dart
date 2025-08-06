import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_images.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';

class ChooseAccountBody extends StatefulWidget {
  const ChooseAccountBody({super.key});

  @override
  State<ChooseAccountBody> createState() => _ChooseAccountBodyState();
}

class _ChooseAccountBodyState extends State<ChooseAccountBody> {
  int currentIndex = 0;

  List<String> title = ["مساعدة على الطريق", "غسيل سيارات"];
  List<String> images = [AppImages.car, AppImages.wash];

  List<String> subTitle = [
    " قدّم خدمات غسيل السيارات باحترافية، سواء \nكان غسيلًا داخليًا أو خارجيًا.",
    "قدّم خدمات غسيل السيارات باحترافية، سواء كان\n غسيلًا داخليًا أو خارجيًا.",
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: title.length,
        itemBuilder:
            (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
              },
              child: Container(
                width: 360.w,
                height: 120.h,
                decoration: BoxDecoration(
                  color:
                      currentIndex == index
                          ? AppColor.primaryColor
                          : Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color:
                        currentIndex == index
                            ? AppColor.primaryColor
                            : Colors.grey.shade100,
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: CircleAvatar(
                        radius: 25.r,
                        backgroundColor:
                            currentIndex == index
                                ? const Color.fromARGB(255, 254, 106, 106)
                                : const Color.fromARGB(255, 234, 250, 253),
                        child: Center(
                          child: Image(
                            image: AssetImage(images[index]),
                            color:
                                currentIndex == index
                                    ? Colors.white
                                    : AppColor.blueColor,
                            // Colors.grey,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        right: 3,
                        bottom: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title[index],
                            style: customStyleText.textStyle20semibold.copyWith(
                              color:
                                  currentIndex == index
                                      ? Colors.white
                                      : Colors.black,
                              fontSize: 12.sp,
                            ),
                          ),
                          Text(
                            subTitle[index],
                            style: customStyleText.textStyle12w400.copyWith(
                              fontSize: 10.sp,
                              color:
                                  currentIndex == index
                                      ? Colors.white
                                      : Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        separatorBuilder:
            (BuildContext context, int index) => SizedBox(height: 30.h),
      ),
    );
  }
}
