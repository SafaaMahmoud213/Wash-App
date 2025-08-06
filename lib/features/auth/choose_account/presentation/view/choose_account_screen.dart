import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_button.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/custem_navi.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/auth/choose_account/presentation/widget/choose_account_body.dart';
import 'package:wash_app_flutter/features/auth/log_in/log_in_screen.dart';

// ignore: must_be_immutable
class ChooseAccountScreen extends StatefulWidget {
  const ChooseAccountScreen({super.key});

  @override
  State<ChooseAccountScreen> createState() => _ChooseAccountScreenState();
}

class _ChooseAccountScreenState extends State<ChooseAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Text("اختر نوع الحساب", style: customStyleText.textStyle20semibold),
            5.hi,
            Text(
              "اختر نوع الحساب الذي يناسبك للمتابعة، سواء كنت مساعدًا على الطريق أو متخصصًا في غسيل السيارات",
              style: customStyleText.textStyle12w400,
            ),

            127.hi,
            ChooseAccountBody(),

            AppButton(
              onPressed: () {
                AppNavigator().push(page: LogInScreen());
              },
              text: "التالي",
            ),
          ],
        ),
      ),
    );
  }
}
