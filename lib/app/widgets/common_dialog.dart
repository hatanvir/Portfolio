import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/core/res/color.dart';
import 'package:portfolio/app/widgets/common_button.dart';

void commonDialog({
  required String title,
  required String data,
  required Function() onTap,
  Color buttonBgColor = primaryColor
})=>Get.defaultDialog(
  title: title,
  middleText: data,
  titleStyle: const TextStyle(
    color: Colors.white
  ),
  middleTextStyle: const TextStyle(
      color: Colors.white
  ),
  backgroundColor: deepBlueColor,
  actions: [
    CommonButton(
      title: 'Ok',
      borderColor: Colors.white,
      buttonBgColor: buttonBgColor,
      onTap: onTap
    )
  ]
);