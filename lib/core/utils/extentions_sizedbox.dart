import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension SizedBoxExtension on int {
  SizedBox get wi => SizedBox(width: w.w);
  SizedBox get hi => SizedBox(height: h.h);
}
