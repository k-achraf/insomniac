import 'package:Insomniac/config/theme/colors.dart';
import 'package:Insomniac/config/theme/styles.dart';
import 'package:flutter/material.dart';

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
          borderSide: const BorderSide(
            width: 1.0,
            color: MyColors.secondColor
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            width: 1.0,
            color: MyColors.primaryColor
          ),
        ),
        filled: true,
        fillColor: MyColors.boxColor,
        hintText: hint,
        hintStyle: Styles.captionTextStyle,
      ),
      style: Styles.body1TextStyle,
      keyboardType: TextInputType.number,
    );
  }
}
