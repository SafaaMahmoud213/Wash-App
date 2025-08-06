import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_images.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/widgets/custem_images.dart';
import 'package:wash_app_flutter/features/screen_nav/home/custem_map.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: CustomImage(url: AppImages.photo, width: 15, height: 14),
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
              child: Center(child: Image.asset(AppImages.filter)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [Expanded(child: MapSample())]),
      ),
    );
  }
}
