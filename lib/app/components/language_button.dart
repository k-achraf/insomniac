import 'package:Insomniac/config/theme/styles.dart';
import 'package:flutter/material.dart';

import '../../config/theme/colors.dart';

class LanguageButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color bgColor;
  final Color textColor;
  const LanguageButton({required this.text, required this.onPressed, this.bgColor = MyColors.thirdColor, this.textColor = MyColors.selectedColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
          ),
          elevation: MaterialStateProperty.all<double>(
            2.0
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.all(5)
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
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
