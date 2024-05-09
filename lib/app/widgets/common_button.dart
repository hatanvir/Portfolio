import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/app/core/res/color.dart';

class CommonButton extends StatelessWidget {
  String title;
  Color borderColor;
  Color buttonBgColor;
  Function() onTap;

  CommonButton(
      {required this.title,
      this.borderColor = Colors.amber,
      this.buttonBgColor = primaryColor,
      super.key,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            side: BorderSide(color: borderColor, width: 2),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: buttonBgColor,
            minimumSize: Size(100, 50)),
        onPressed: onTap,
        child: Text(title, style: TextStyle(color: Colors.white)));
  }
}
