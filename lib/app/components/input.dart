import 'package:Insomniac/config/theme/colors.dart';
import 'package:Insomniac/config/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Input extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  const Input({required this.controller, this.hint = 'Answer', Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            width: 1.0,
            color: context.theme.dividerColor
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(
            width: 1.0,
            color: context.theme.dividerColor
          ),
        ),
        filled: true,
        fillColor: context.theme.cardColor,
        hintText: hint,
        hintStyle: Styles.captionTextStyle.copyWith(
          color: context.theme.hintColor
        ),
      ),
      style: Styles.body1TextStyle.copyWith(
        color: context.theme.canvasColor
      ),
      keyboardType: TextInputType.number,
    );
  }
}
