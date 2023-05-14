import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SelectButton extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onPressed;
  const SelectButton({required this.text, required this.selected, required this.onPressed, Key? key}) : super(key: key);

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
            selected ? 0 : 2.0
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
              const EdgeInsets.all(18)
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            selected ? const Color(0xFF45C486) : Colors.white
          ),
        ),
        onPressed: (){
          onPressed.call();
        },
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: selected ? Colors.white : const Color(0xFF45C486)
            ),
          ),
        ),
      ),
    );
  }
}
