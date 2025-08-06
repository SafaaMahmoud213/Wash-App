import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/screen_nav/wallet/wallet_body.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  int currentIndex = 0;
  List<String> text = ["سحب", "ايداع"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          " المحفظة",
          style: customStyleText.textStyle16w500.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              width: 325.w,
              height: 200.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: AppColor.primaryColor,
              ),
              child: Column(
                children: [
                  Text(
                    "الرصيد الحالي",
                    style: customStyleText.textStyle14w500.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    " 3000 ريال ",
                    style: customStyleText.textStyle14w500.copyWith(
                      color: Colors.white,
                      fontSize: 25.sp,
                    ),
                  ),
                  10.hi,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(2, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                        child: Container(
                          width: 130.w,
                          height: 46.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color:
                                currentIndex == index
                                    ? Colors.white
                                    : const Color.fromARGB(255, 255, 108, 108),
                          ),
                          child: Center(
                            child: Text(
                              text[index],
                              style: customStyleText.textStyle14w500.copyWith(
                                fontSize: 13.sp,
                                color:
                                    currentIndex == index
                                        ? AppColor.primaryColor
                                        : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            22.hi,
            Text(
              "سجل المدفوعات",
              style: customStyleText.textStyle14w500.copyWith(
                color: Colors.black,
              ),
            ),

            WalletBody(),
          ],
        ),
      ),
    );
  }
}
