import 'package:flutter/cupertino.dart';

class CommonTitle extends StatelessWidget {
  String title;
  double? fontSize = 40;
  CommonTitle({required this.title,this.fontSize, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: CupertinoColors.white
      ),
    );
  }
}
