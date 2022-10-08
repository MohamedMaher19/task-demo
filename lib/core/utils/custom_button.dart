import 'package:flutter/material.dart';

import '../resources/colors_manager.dart';
import '../resources/font_manager.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.text, required this.onPressed, required this.width, required this.height}) : super(key: key);

  final String text;
  final Function() onPressed;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),),
          backgroundColor:ColorManager.buttoColor,
          minimumSize: Size(width, height),
        ),
        onPressed: onPressed,
        child: TextUtils(
          text: text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: ColorManager.sWhite,
          fontFamily: FontConstants.fontFamily,
        ));
  }
}



