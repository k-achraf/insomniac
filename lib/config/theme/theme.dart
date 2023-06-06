import 'package:flutter/material.dart';

import 'colors.dart';
import 'fonts.dart';

class MyTheme {
  static ThemeData theme = ThemeData(
    primaryColor: MyColors.primaryColor,
    scaffoldBackgroundColor: MyColors.bgColor,
    fontFamily: Fonts.fontFamily,
    cardColor: MyColors.boxColor,
    brightness: Brightness.light,
    canvasColor: MyColors.textColor,
    badgeTheme: const BadgeThemeData(
      textColor: MyColors.questionColor
    ),
    hintColor: Colors.grey,
    dividerColor: MyColors.thirdColor
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: MyColors.primaryColor,
    scaffoldBackgroundColor: MyColors.darkBgColor,
    fontFamily: Fonts.fontFamily,
    cardColor: MyColors.darkBoxColor,
    brightness: Brightness.dark,
    canvasColor: MyColors.darkTextColor,
    badgeTheme: const BadgeThemeData(
      textColor: MyColors.darkQuestionColor
    ),
    hintColor: Colors.grey,
    dividerColor: Colors.white
  );
}
