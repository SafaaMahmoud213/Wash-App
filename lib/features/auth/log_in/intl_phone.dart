import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wash_app_flutter/core/utils/app_button.dart';
import 'package:wash_app_flutter/core/utils/custem_navi.dart';
import 'package:wash_app_flutter/core/utils/extentions_sizedbox.dart';
import 'package:wash_app_flutter/cubit/login/login_cubit.dart';
import 'package:wash_app_flutter/cubit/login/login_state.dart';
import 'package:wash_app_flutter/features/auth/otp/otp_screen.dart';

class IntlPhoneScreen extends StatefulWidget {
  final bool isButton;

  const IntlPhoneScreen({super.key, this.isButton = false});

  @override
  State<IntlPhoneScreen> createState() => _IntlPhoneScreenState();
}

class _IntlPhoneScreenState extends State<IntlPhoneScreen> {
  String? mobileNumber;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formkey,
      child: Column(
        children: [
          const SizedBox(height: 10),

          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
            child: IntlPhoneField(
              controller: context.read<LoginCubit>().phoneController,

              validator: (mobileNumber) {
                if (mobileNumber!.number.isEmpty) {
                  return 'Please, Enter a mobile number';
                }
                if (!RegExp(r'^[0-9]+$').hasMatch(mobileNumber.number)) {
                  return 'Only digits are allowed';
                }
                return null;
              },
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'أدخل رقم  الهاتف',
                labelStyle: TextStyle(fontSize: 11.sp),
                suffixIcon: const Icon(Icons.phone_rounded),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(color: Colors.grey.shade100),
                ),
              ),
              initialCountryCode: 'SA',
              autovalidateMode: AutovalidateMode.always,
              languageCode: "ar",

              onChanged: (phone) {},
            ),
          ),
          if (widget.isButton) 230.hi,
          if (widget.isButton)
            BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                // if (state is LoginSuccessState) {
                //   ScaffoldMessenger.of(
                //     context,
                //   ).showSnackBar(SnackBar(content: Text("success")));
                //   AppNavigator().pushReplaceMent(page: OTPScreen());
                // } else if (state is LoginFailureState) {
                //   ScaffoldMessenger.of(
                //     context,
                //   ).showSnackBar(SnackBar(content: Text(state.msg)));
                // }
              },
              builder: (context, state) {
                return
                // state is LoginLoadingState
                //     ? Center(child: CircularProgressIndicator())
                //     :
                AppButton(
                  onPressed: () {
                    if (context
                        .read<LoginCubit>()
                        .formkey
                        .currentState!
                        .validate()) {
                      AppNavigator().pushReplaceMent(page: OTPScreen());
                    }
                    // context.read<LoginCubit>().logIn();
                  },
                  text: "تسجيل الدخول",
                );
              },
            ),
        ],
      ),
    );
  }
}
