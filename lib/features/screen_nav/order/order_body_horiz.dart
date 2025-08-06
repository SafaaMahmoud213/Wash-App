import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';

class OrderBodyHoriz extends StatefulWidget {
  const OrderBodyHoriz({super.key});

  @override
  State<OrderBodyHoriz> createState() => _OrderBodyHorizState();
}

class _OrderBodyHorizState extends State<OrderBodyHoriz> {
  final List<String> textverti = ["الكل", "ملغي", "قيدالتنفيذ", "مكتمل"];
  final ScrollController _scrollController = ScrollController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        controller: _scrollController,
        itemCount: textverti.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Container(
              height: 40.h,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color:
                    currentIndex == index
                        ? AppColor.primaryColor
                        : AppColor.secondaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  textverti[index],
                  textAlign: TextAlign.center,
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
    );
  }
}
