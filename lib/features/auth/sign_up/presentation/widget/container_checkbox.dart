import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';

// ignore: must_be_immutable
class ContainerCheckBox extends StatefulWidget {
  ContainerCheckBox({super.key, required this.text});
  String text;

  @override
  State<ContainerCheckBox> createState() => _ContainerCheckBoxState();
}

class _ContainerCheckBoxState extends State<ContainerCheckBox> {
  bool val1 = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 60.h,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(
            widget.text,
            style: customStyleText.textStyle12w400.copyWith(
              color: Colors.black,
            ),
          ),
          Checkbox(
            shape: CircleBorder(side: BorderSide(color: Colors.grey.shade100)),
            activeColor: AppColor.primaryColor,
            value: val1,
            onChanged: (val) {
              setState(() {
                val1 = val!;
              });
            },
          ),
        ],
      ),
    );
  }
}
