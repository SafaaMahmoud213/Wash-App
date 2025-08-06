import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_images.dart';
import 'package:wash_app_flutter/features/screen_nav/home/home_screen.dart';
import 'package:wash_app_flutter/features/screen_nav/order/order_screen.dart';
import 'package:wash_app_flutter/features/screen_nav/profile/profile_screen.dart';
import 'package:wash_app_flutter/features/screen_nav/wallet/wallet_screen.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  int currentIndex = 0;
  List<Widget> screens = [HomeScreen(), OrderScreen(), WalletScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedIconTheme: IconThemeData(color: AppColor.primaryColor),
        unselectedIconTheme: IconThemeData(color: AppColor.iconColor),
        selectedLabelStyle: TextStyle(fontSize: 13, color: AppColor.primaryColor),
        unselectedLabelStyle: TextStyle(fontSize: 13, color: AppColor.blueColor),

        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.home,
              width: 24,
              height: 24,

              color: currentIndex == 0 ? AppColor.primaryColor : null,
            ),
            label: "الرئيسية",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.history,
              width: 24,
              height: 24,

              color: currentIndex == 1 ? AppColor.primaryColor : null,
            ),
            label: "الطلبات",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.wallet,
              width: 24,
              height: 24,
              color: currentIndex == 2 ? AppColor.primaryColor : null,
            ),
            label: "المحفظة",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.profile,
              width: 24,
              height: 24,
              color: currentIndex == 3 ? AppColor.primaryColor : null,
            ),
            label: "البروفايل",
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
