import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Habit Builder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        scaffoldBackgroundColor: HBColors.background,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: HBMaterialColors.primarySwatch,
        ).copyWith(
          secondary: HBMaterialColors.secondarySwatch,
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
        ),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ElevatedButton.styleFrom(
        //     primary: HBMaterialColors.primarySwatch,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(kBorderRadius),
        //     ),
        //     minimumSize: const Size(0, 48),
        //     textStyle: TextStyle(
        //       fontSize: 16,
        //       fontWeight: FontWeight.w600,
        //       color: lightColor,
        //     ),
        //   ),
        // ),
        // textTheme: TextTheme(
        //   headline4: textStylePoppins,
        //   headline5: textStylePoppins,
        //   subtitle2: TextStyle(color: descriptionTextColor),
        //   bodyText2: TextStyle(
        //     color: bodyTextColor,
        //     fontWeight: FontWeight.w700,
        //     fontSize: 16,
        //   ),
        //   button: TextStyle(color: lightColor),
        // ),
      ),
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
