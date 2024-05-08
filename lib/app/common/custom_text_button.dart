import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String name;
  Function() onTap;
  CustomTextButton({required this.name,required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(name,style: TextStyle(
          color: Colors.amber
        ),),
    );
  }
}
