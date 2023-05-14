import 'package:Insomniac/config/theme/styles.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'fonts.dart';

class MyTheme {
  static ThemeData theme = ThemeData(
    primaryColor: MyColors.primaryColor,
    fontFamily: Fonts.fontFamily,
    scaffoldBackgroundColor: MyColors.bgColor,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      displayLarge: Styles.headLine1TextStyle,
      displayMedium: Styles.headLine2TextStyle,
      displaySmall: Styles.headLine3TextStyle,
      bodyLarge: Styles.body1TextStyle,
      bodyMedium: Styles.body2TextStyle,
      bodySmall: Styles.captionTextStyle,
      labelLarge: Styles.button1TextStyle,
      labelMedium: Styles.button2TextStyle,
      labelSmall: Styles.captionTextStyle,
    ),
  );
}
