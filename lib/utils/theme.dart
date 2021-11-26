import 'package:flutter/material.dart';
import 'package:travel_app/utils/text_styles.dart';

import 'app_colors.dart';

/*const theme = const TextTheme(
  headline1: TextStyle(
      fontSize: 35.0,
      fontFamily: 'Muli',
      fontWeight: FontWeight.w500,
      color: Colors.black),
  headline6: TextStyle(
      fontSize: 10.0,
      fontFamily: 'Muli',
      fontWeight: FontWeight.w200,
      color: AppColors.primaryColor),
  bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
);*/

final themeDate = ThemeData(
    fontFamily: 'Regular',
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0,
        titleTextStyle: TextStyles.heading.copyWith(fontSize: 25)));
