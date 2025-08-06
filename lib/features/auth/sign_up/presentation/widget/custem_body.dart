import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/app_text_field.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';

// ignore: must_be_immutable
class CustomBody extends StatelessWidget {
  CustomBody({
    super.key,
    required this.text,
    this.suffix,
    required this.labelText,
    this.validator,
  });
  String text;
  String labelText;
  Icon? suffix;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        33.hi,
        Text(text, style: customStyleText.textStyle16w500),
        AppTextField(
          validator: validator,
          labelText: labelText,
          suffix: suffix,
        ),
      ],
    );
  }
}
