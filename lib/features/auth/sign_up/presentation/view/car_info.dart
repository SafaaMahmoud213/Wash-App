import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_button.dart';
import 'package:wash_app_flutter/core/utils/app_colors.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';
import 'package:wash_app_flutter/core/utils/custem_navi.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/view/services_info.dart'
    show ServicesScreen;
import 'package:wash_app_flutter/features/auth/sign_up/presentation/widget/custem_body.dart';
import 'package:wash_app_flutter/features/auth/sign_up/presentation/widget/dot_container.dart';

class CarInfoScreen extends StatelessWidget {
  const CarInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "بيانات السيارة ",
                style: customStyleText.textStyle20semibold,
              ),
              Text(
                "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
                style: customStyleText.textStyle12w400,
              ),
              19.hi,
              Container(
                alignment: AlignmentDirectional.topStart,
                width: 327,
                height: 14,
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 210, 210),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: 136.0,

                  height: 14,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),

              CustomBody(
                text: 'الماركة',
                labelText: 'تويوتا - Toyota',
                suffix: Icon(Icons.arrow_drop_down, size: 14),
              ),
              CustomBody(
                text: 'الموديل',
                labelText: 'اسم الموديل',
                suffix: Icon(Icons.arrow_drop_down, size: 14),
              ),
              CustomBody(
                text: 'سنة الصنع',
                labelText: 'اختر السنة',
                suffix: Icon(Icons.arrow_drop_down, size: 14),
              ),
              30.hi,
              Text(
                "تسجيل السيارة",
                style: customStyleText.textStyle14w500.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              10.hi,
              DotContainer(),
              CustomBody(text: ' رقم اللوحة', labelText: 'ادخل رقم اللوحة '),
              30.hi,
              DotContainer(),
              30.hi,
              AppButton(
                onPressed: () {
                  AppNavigator().push(page: ServicesScreen());
                },
                text: "التالي",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
