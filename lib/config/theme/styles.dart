
import 'package:flutter/material.dart';
import 'colors.dart';
import 'fonts.dart';

class Styles{
  static TextStyle headLine1TextStyle = TextStyle(
    fontSize: Fonts.headLine1TextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle headLine2TextStyle = TextStyle(
    fontSize: Fonts.headLine2TextSize,
    color: MyColors.questionColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle headLine3TextStyle = TextStyle(
    fontSize: Fonts.headLine3TextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle headLine4TextStyle = TextStyle(
    fontSize: Fonts.headLine4TextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle button1TextStyle = TextStyle(
    fontSize: Fonts.button1TextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle button2TextStyle = TextStyle(
    fontSize: Fonts.button2TextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle body1TextStyle = TextStyle(
    fontSize: Fonts.body1TextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle body3TextStyle = TextStyle(
    fontSize: Fonts.body3TextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle body2TextStyle = TextStyle(
    fontSize: Fonts.body2TextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w600,
  );

  static TextStyle inputTextStyle = TextStyle(
    fontSize: Fonts.body1TextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle hintTextStyle = TextStyle(
    fontSize: Fonts.body1TextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w500,
  );

  static TextStyle captionTextStyle = TextStyle(
    fontSize: Fonts.captionTextSize,
    color: MyColors.textColor,
    fontWeight: FontWeight.w400,
  );

  static ButtonStyle buttonStyle = ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    ),
    elevation: MaterialStateProperty.all<double>(
      0.0
    ),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.all(18)
    ),
    backgroundColor: MaterialStateProperty.all<Color>(
      MyColors.primaryColor
    ),
  );
}