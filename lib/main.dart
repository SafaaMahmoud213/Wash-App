import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wash_app_flutter/core/api/dio_consumer.dart';
import 'package:wash_app_flutter/core/theme/dark_theme.dart';
import 'package:wash_app_flutter/core/theme/light_theme.dart';
import 'package:wash_app_flutter/core/utils/custem_navi.dart';
import 'package:wash_app_flutter/cubit/login/login_cubit.dart';
import 'package:wash_app_flutter/features/screen_nav/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [Locale('ar'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: Locale('ar', 'en'),
      startLocale: Locale("ar"),
      saveLocale: true,

      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme,
      initial: AdaptiveThemeMode.light,
      dark: darkTheme,
      builder: (ThemeData light, ThemeData dark) {
        return ScreenUtilInit(
          designSize: const Size(375, 912),
          minTextAdapt: true,
          splitScreenMode: true,

          builder: (_, child) {
            return BlocProvider(
              create: (context) => LoginCubit(DioConsumer(Dio())),
              child: MaterialApp(
                navigatorKey: AppNavigator.navigatorKey,
                debugShowCheckedModeBanner: false,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                title: 'Flutter Demo',
                theme: ThemeData(
                  scaffoldBackgroundColor: Colors.white,
                  colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
                ),
                home: HomeScreen(),
              ),
            );
          },
        );
      },
    );
  }
}
