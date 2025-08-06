import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';

// ignore: must_be_immutable
class customTextSpan extends StatelessWidget {
  customTextSpan({
    super.key,

    required this.fontSize,
    required this.text1,
    required this.text2,
    required this.text3,
  });
  String text1;
  String text2;
  String text3;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      maxLines: 2,

      overflow: TextOverflow.ellipsis,
      TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: customStyleText.textStyle16w500.copyWith(fontSize: fontSize),
          ),
          TextSpan(
            text: text2,
            style: customStyleText.textStyle16w500.copyWith(
              fontSize: fontSize,
              color: AppColor.primaryColor,
            ),
          ),
          TextSpan(
            text: text3,
            style: customStyleText.textStyle16w500.copyWith(fontSize: fontSize),
          ),
        ],
      ),
    );
  }
}
