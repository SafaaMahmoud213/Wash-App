import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/screen_nav/order/order_page1.dart';
import 'package:wash_app_flutter/features/screen_nav/order/order_page2.dart';
import 'package:wash_app_flutter/features/screen_nav/order/order_page3.dart';
import 'package:wash_app_flutter/features/screen_nav/order/order_page4.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<String> textverti = ["الكل", "ملغي", "قيد التنفيذ", "مكتمل"];
  final ScrollController _scrollController = ScrollController();
  int currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Widget> pages = [
    OrderPage1(),
    OrderPage2(),
    OrderPage3(),
    OrderPage4(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onTabChanged(int index) {
    setState(() {
      currentIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "سجل الطلبات",
          style: customStyleText.textStyle16w500.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 18.sp,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          32.hi,
          SizedBox(
            height: 40.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              controller: _scrollController,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: textverti.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 70.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color:
                        currentIndex == index
                            ? AppColor.primaryColor
                            : AppColor.secondaryColor,

                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: GestureDetector(
                    onTap: () => onTabChanged(index),
                    child: Center(
                      child: Text(
                        textverti[index],
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color:
                              currentIndex == index
                                  ? Colors.white
                                  : AppColor.primaryColor,
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 15);
              },
            ),
          ),

          Expanded(
            child: PageView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              controller: _pageController,
              itemCount: pages.length,
              onPageChanged: (val) {
                setState(() {
                  currentIndex = val;
                });
              },
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
