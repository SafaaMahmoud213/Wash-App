import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_button.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/app_text_field.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/screen_nav/profile/profile_screens/ticket_screen/container_checkboxx.dart';

// ignore: must_be_immutable
class TicketScreen extends StatelessWidget {
  TicketScreen({super.key});

  List<String> texts = ["استفسار", "شكوى", "مشكلة فنية", "اقتراحات"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("التذاكر", style: customStyleText.textStyle16w500),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: texts.length,
            itemBuilder:
                (context, index) => ContainerCheckBoxs(text: texts[index]),
          ),

          Text(
            "نوع التذكرة",
            style: customStyleText.textStyle14w500.copyWith(
              color: Colors.black,
            ),
          ),
          AppTextField(labelText: "ادخل نوع التذكرة هنا"),
          30.hi,
          Text(
            " نص التذكرة",
            style: customStyleText.textStyle14w500.copyWith(
              color: Colors.black,
            ),
          ),
          AppTextField(labelText: "ادخل سبب الطلب هنا", maxLines: 4),
          30.hi,
          AppButton(onPressed: () {}, text: "تأكيد"),
        ],
      ),
    );
  }
}
