import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_images.dart';
import 'package:wash_app_flutter/core/utils/custem_navi.dart';
import 'package:wash_app_flutter/features/auth/choose_account/presentation/view/choose_account_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      AppNavigator().push(page: ChooseAccountScreen());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColor.primaryColor,
        child: Center(child: Lottie.asset(AppImages.imagesLogo)),
      ),
    );
  }
}
