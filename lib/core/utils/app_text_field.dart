import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';

// ignore: must_be_immutable
class AppTextField extends StatelessWidget {
  AppTextField({
    super.key,
    this.isPrefix = false,
    this.suffix,
    this.prefix,
    required this.labelText,
    this.maxLines,
    this.validator,
  });
  String labelText;
  Icon? prefix;
  Icon? suffix;
  bool isPrefix;
  int? maxLines = 1;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      width: 327.w,
      height: 70.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        maxLines: maxLines,
        validator: validator,
        decoration: InputDecoration(
          labelText: labelText,

          labelStyle: customStyleText.textStyle12w400.copyWith(fontSize: 13),
          prefix: isPrefix ? prefix : null,
          suffixIcon: suffix,
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey.shade100),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.grey.shade100),
          ),
        ),
      ),
    );
  }
}
