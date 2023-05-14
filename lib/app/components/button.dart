import 'package:Insomniac/config/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../config/theme/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color textColor;
  const Button({required this.text, required this.onPressed, this.bgColor = MyColors.thirdColor, this.textColor = MyColors.selectedColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width - 46,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          elevation: MaterialStateProperty.all<double>(
            2.0
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.all(18)
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            bgColor
          ),
        ),
        onPressed: (){
          onPressed.call();
        },
        child: Center(
          child: Text(
            text,
            style: Styles.body3TextStyle.copyWith(
              color: textColor
            ),
          ),
        ),
      ),
    );
  }
}
